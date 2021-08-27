-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------
 
-- Initialization function for this job file.
function get_sets()
        mote_include_version = 2
 
        include('Aug_Gear.lua')
        -- Load and initialize the include file.
        include('Mote-Include.lua')
        include('organizer-lib')
end
 
-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
        indi_timer = ''
        indi_duration = 280
		
	send_command('wait 2;input /lockstyleset 5')
end
 
-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------
        
-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
                state.OffenseMode:options('Normal')
                state.CastingMode:options('Normal', 'Resistant', 'Burst', 'BurstResist')
                state.IdleMode:options('Normal', 'PDT')
 
                select_default_macro_book()
                define_nuke_downgrades()
end

 
function define_nuke_downgrades()
        t1              =       S{      'Stone',                'Water',                'Aero',                 'Fire',                 'Blizzard',             'Thunder'}
        t2              =       S{      'Stone II',             'Water II',             'Aero II',              'Fire II',              'Blizzard II',          'Thunder II'}
        t3              =       S{      'Stone III',            'Water III',            'Aero III',             'Fire III',             'Blizzard III',         'Thunder III'}
        t4              =       S{      'Stone IV',             'Water IV',             'Aero IV',              'Fire IV',              'Blizzard IV',          'Thunder IV'}
        t5              =       S{      'Stone V',              'Water V',              'Aero V',               'Fire V',               'Blizzard V',           'Thunder V'}
        t6              =       S{      'Stone VI',             'Water VI',             'Aero VI',              'Fire VI',              'Blizzard VI',          'Thunder VI'}
        ra1             =       S{      'Stonera',              'Watera',               'Aera',                 'Fira',                 'Blizzara',             'Thundara'}
        ra2             =       S{      'Stonera II',           'Watera II',            'Aera II',              'Fira II',              'Blizzara II',          'Thundara II'}
        ra3             =       S{      'Stonera III',          'Watera III',           'Aera III',             'Fira III',             'Blizzara III',         'Thundara III'}
        no_down =       S{              'Quake',                'Flood',                'Tornado',              'Flare',                'Freeze',               'Burst',
                                        'Quake II',             'Flood II',             'Tornado II',           'Flare II',             'Freeze II',            'Burst II',
                                        'Stonega',              'Waterga',              'Aeroga',               'Firaga',               'Blizzaga',             'Thundaga',
                                        'Stonega II',           'Waterga II',           'Aeroga II',            'Firaga II',            'Blizzaga II',          'Thundaga II',
                                        'Stonega III',          'Waterga III',          'Aeroga III',           'Firaga III',           'Blizzaga III',         'Thundaga III',
                                        'Stoneja',              'Waterja',              'Aeroja',               'Firaja',               'Blizzaja',             'Thundaja',
                                        'Rasp',                 'Drown',                'Choke',                'Burn',                 'Frost',                'Shock',
                                        'Geohelix',             'Hydrohelix',           'Anemohelix',           'Pyrohelix',            'Cryohelix',            'Ionohelix',
                                        'Luminohelix',          'Noctohelix',           'Comet',                'Meteor',               'Impact'}
        aras    =       S{              'Stonera',              'Watera',               'Aera',                 'Fira',                 'Blizzara',             'Thundara',
                                        'Stonera II',           'Watera II',            'Aera II',              'Fira II',              'Blizzara II',          'Thundara II',
                                        'Stonera III',          'Watera III',           'Aera III',             'Fira III',             'Blizzara III',         'Thundara III'}
end
 
 
-- Define sets and vars used by this job file.
function init_gear_sets()
	include('GEO_Gear.lua')
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------
function job_precast(spell, action, spellMap, eventArgs)
        refine_nukes(spell, action, spellMap, eventArgs)
        refine_various_spells(spell, action, spellMap, eventArgs)
end
 
function refine_various_spells(spell, action, spellMap, eventArgs)
        aspirs = S{'Aspir','Aspir II','Aspir III'}
        sleeps = S{'Sleep','Sleep II'}
        sleepgas = S{'Sleepga','Sleepga II'}
 
        if not sleepgas:contains(spell.english) and not sleeps:contains(spell.english) and not aspirs:contains(spell.english) then
                return
        end
 
        local newSpell = spell.english
        local spell_recasts = windower.ffxi.get_spell_recasts()
        local cancelling = 'All '..spell.english..' spells are on cooldown. Cancelling spell casting.'
 
        if spell_recasts[spell.recast_id] > 0 then
                if aspirs:contains(spell.english) then
                        if spell.english == 'Aspir' then
                                add_to_chat(122,cancelling)
                                eventArgs.cancel = true
                                return
                        elseif spell.english == 'Aspir II' then newSpell = 'Aspir'
                        elseif spell.english == 'Aspir III' then newSpell = 'Aspir II'
                        end                    
                elseif sleeps:contains(spell.english) then
                        if spell.english == 'Sleep' then
                                add_to_chat(122,cancelling)
                                eventArgs.cancel = true
                                return
                        elseif spell.english == 'Sleep II' then newSpell = 'Sleep'
                        end
                elseif sleepgas:contains(spell.english) then
                        if spell.english == 'Sleepga' then
                                add_to_chat(122,cancelling)
                                eventArgs.cancel = true
                                return
                        elseif spell.english == 'Sleepga II' then newSpell = 'Sleepga'
                        end
                end
        end
 
        if newSpell ~= spell.english then
                send_command('@input /ma "'..newSpell..'" '..tostring(spell.target.raw))
                eventArgs.cancel = true
                return
        end
end
 
function job_midcast(spell, action, spellMap, eventArgs)
    if spell.action_type == 'Magic' then
        if spell.skill == 'Geomancy' then
            if string.find(spell.english, 'Geo-') then
                equip(sets.midcast.Geomancy)
            elseif string.find(spell.english, 'Indi-') then
                equip(sets.midcast.Geomancy.Indi)          
                if buffactive['Entrust'] then
                    sets.midcast.Geomancy.Indi = set_combine(sets.midcast.Geomancy.Indi, {main="Idris"})        
                end
            end
        end
    end
end
 
function job_post_midcast(spell, action, spellMap, eventArgs)
    if spell.skill == 'Elemental Magic' and spell.element == world.day_element or spell.element == world.weather_element then
        equip ({waist="Hachirin-no-obi"})
    end
end
   
function job_aftercast(spell, action, spellMap, eventArgs)
        if not spell.interrupted then
                if spell.english:startswith('Indi') then
                        if not classes.CustomIdleGroups:contains('Indi') then
                                classes.CustomIdleGroups:append('Indi')
                        end
                        send_command('@timers d "'..indi_timer..'"')
                        indi_timer = spell.english
                        send_command('@timers c "'..indi_timer..'" '..indi_duration..' down spells/00136.png')
                elseif spell.english == 'Sleep' or spell.english == 'Sleepga' then
                        send_command('@timers c "'..spell.english..' ['..spell.target.name..']" 60 down spells/00220.png')
                elseif spell.english == 'Sleep II' or spell.english == 'Sleepga II' then
                        send_command('@timers c "'..spell.english..' ['..spell.target.name..']" 90 down spells/00220.png')
                end
        elseif not player.indi then
                classes.CustomIdleGroups:clear()
        end
end
 
-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for non-casting events.
-------------------------------------------------------------------------------------------------------------------
 
-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)
        if player.indi and not classes.CustomIdleGroups:contains('Indi')then
                classes.CustomIdleGroups:append('Indi')
                handle_equipping_gear(player.status)
        elseif classes.CustomIdleGroups:contains('Indi') and not player.indi then
                classes.CustomIdleGroups:clear()
                handle_equipping_gear(player.status)
        end
end
 
 
-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------
 
function job_get_spell_map(spell, default_spell_map)
        if spell.action_type == 'Magic' then
                if spell.skill == 'Enfeebling Magic' then
                        if spell.type == 'WhiteMagic' then
                                return 'MndEnfeebles'
                        else
                                return 'IntEnfeebles'
                        end
                elseif spell.skill == 'Geomancy' then
                        if spell.english:startswith('Indi') then
                                return 'Indi'
                        end
                end
        end
end
 
function customize_idle_set(idleSet)
        if player.mpp < 51 then
                idleSet = set_combine(idleSet, sets.latent_refresh)
        end
        return idleSet
end
 
-- Called by the 'update' self-command.
function job_update(cmdParams, eventArgs)
        classes.CustomIdleGroups:clear()
        if player.indi then
                classes.CustomIdleGroups:append('Indi')
        end
end
 
-- Function to display the current relevant user state when doing an update.
function display_current_job_state(eventArgs)
        display_current_caster_state()
        eventArgs.handled = true
end
 
-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

 
function refine_nukes(spell, action, spellMap, eventArgs)
        local nuke_mp_cost = {  ['Stone'] = 4, ['Stone II'] = 16, ['Stone III'] = 46, ['Stone IV'] = 88,                          ['Stone V'] = 135,                      ['Stone VI'] = 237,
                                                        ['Water'] = 5, ['Water II'] = 19, ['Water III'] = 46, ['Water IV'] = 99,                          ['Water V'] = 175,                      ['Water VI'] = 266,
                                                        ['Aero'] = 6, ['Aero II'] = 22, ['Aero III'] = 54, ['Aero IV'] = 115,                     ['Aero V'] = 198,                        ['Aero VI'] = 299,
                                                        ['Fire'] = 7, ['Fire II'] = 26, ['Fire III'] = 63, ['Fire IV'] = 135,                     ['Fire V'] = 228,                        ['Fire VI'] = 339,
                                                        ['Blizzard'] = 8, ['Blizzard II'] = 31, ['Blizzard III'] = 75, ['Blizzard IV'] = 162,  ['Blizzard V'] = 267,   ['Blizzard VI'] = 386,
                                                        ['Thunder'] = 9, ['Thunder II'] = 37, ['Thunder III'] = 91, ['Thunder IV'] = 195,   ['Thunder V'] = 306,        ['Thunder VI'] = 437,
                                                        ['Stonera'] = 54, ['Stonera II'] = 143, ['Stonera III'] = 276,
                                                        ['Watera'] = 66, ['Watera II'] = 163, ['Watera III'] = 312,
                                                        ['Aera'] = 79, ['Aera II'] = 184, ['Aera III'] = 350,
                                                        ['Fira'] = 93, ['Fira II'] = 206, ['Fira III'] = 390,
                                                        ['Blizzara'] = 108, ['Blizzara II'] = 229, ['Blizzara III'] = 432,
                                                        ['Thundara'] = 123, ['Thundara II'] = 253, ['Thundara III'] = 476}
        if spell.skill ~= 'Elemental Magic' or no_down:contains(spell.english) then
                return
        end
 
        local elementType
 
        if spell.element == 'Earth' then elementType = 'Stone'
        elseif spell.element == 'Water' then elementType = 'Water'
        elseif spell.element == 'Wind' then elementType = 'Aero'
        elseif spell.element == 'Fire' then elementType = 'Fire'
        elseif spell.element == 'Ice' then elementType = 'Blizzard'
        elseif spell.element == 'Lightning' then elementType = 'Thunder'
        end
 
        local newAra
 
        if aras:contains(spell.english)then
                if elementType == 'Stone' then newAra = 'Stonera'
                elseif elementType == 'Water' then newAra = 'Watera'
                elseif elementType == 'Aero' then newAra = 'Aera'
                elseif elementType == 'Fire' then newAra = 'Fira'
                elseif elementType == 'Blizzard' then newAra = 'Blizzara'
                elseif elementType == 'Thunder' then newAra = 'Thundara'
                end
        end
 
        local newNuke = spell.english
 
        local nukeMpCost = nuke_mp_cost[newNuke]
 
        if buffactive['Dark Arts'] or buffactive['Addendum: Black'] then
                nukeMpCost = math.floor(nukeMpCost * 0.9)
        elseif buffactive['Light Arts'] or buffactive['Addendum: White'] then
                nukeMpCost = math.ceil(nukeMpCost * 1.2)
        end
 
        local downgrade
 
        -- Downgrade the spell to what we can actually afford
        if player.mp < nukeMpCost and not buffactive['Mana Well'] then
                if spell.element == 'Earth' then
                        if aras:contains(spell.english) then
                                if player.mp < 54 then
                                        add_to_chat(122, 'Insufficient MP ['..tostring(player.mp)..']. Cancelling.')
                                        eventArgs.cancel = true
                                        return
                                elseif player.mp < 143 then newNuke = ''..newAra..''
                                elseif player.mp < 276 then newNuke = ''..newAra..' II'
                                end
                        elseif not aras:contains(spell.english) then
                                if player.mp < 4 then
                                        add_to_chat(122, 'Insufficient MP ['..tostring(player.mp)..']. Cancelling.')
                                        eventArgs.cancel = true
                                        return
                                elseif player.mp < 16 then newNuke = 'Stone'
                                elseif player.mp < 40 then newNuke = 'Stone II'
                                elseif player.mp < 88 then newNuke = 'Stone III'
                                elseif player.mp < 156 then newNuke = 'Stone IV'
                                elseif player.mp < 237 then newNuke = 'Stone V'
                                end
                        end
                elseif spell.element == 'Water' then
                        if aras:contains(spell.english) then
                                if player.mp < 66 then
                                        add_to_chat(122, 'Insufficient MP ['..tostring(player.mp)..']. Cancelling.')
                                        eventArgs.cancel = true
                                        return
                                elseif player.mp < 163 then newNuke = ''..newAra..''
                                elseif player.mp < 312 then newNuke = ''..newAra..' II'
                                end
                        elseif not aras:contains(spell.english) then
                                if player.mp < 5 then
                                        add_to_chat(122, 'Insufficient MP ['..tostring(player.mp)..']. Cancelling.')
                                        eventArgs.cancel = true
                                        return
                                elseif player.mp < 19 then newNuke = 'Water'
                                elseif player.mp < 46 then newNuke = 'Water II'
                                elseif player.mp < 99 then newNuke = 'Water III'
                                elseif player.mp < 175 then newNuke = 'Water IV'
                                elseif player.mp < 266 then newNuke = 'Water V'
                                end
                        end
                elseif spell.element == 'Wind' then
                        if aras:contains(spell.english) then
                                if player.mp < 79 then
                                        add_to_chat(122, 'Insufficient MP ['..tostring(player.mp)..']. Cancelling.')
                                        eventArgs.cancel = true
                                        return
                                elseif player.mp < 184 then newNuke = ''..newAra..''
                                elseif player.mp < 350 then newNuke = ''..newAra..' II'
                                end
                        elseif not aras:contains(spell.english) then
                                if player.mp < 6 then
                                        add_to_chat(122, 'Insufficient MP ['..tostring(player.mp)..']. Cancelling.')
                                        eventArgs.cancel = true
                                        return
                                elseif player.mp < 22 then newNuke = 'Aero'
                                elseif player.mp < 54 then newNuke = 'Aero II'
                                elseif player.mp < 115 then newNuke = 'Aero III'
                                elseif player.mp < 198 then newNuke = 'Aero IV'
                                elseif player.mp < 299 then newNuke = 'Aero V'
                                end
                        end
                elseif spell.element == 'Fire' then
                        if aras:contains(spell.english) then
                                if player.mp < 93 then
                                        add_to_chat(122, 'Insufficient MP ['..tostring(player.mp)..']. Cancelling.')
                                        eventArgs.cancel = true
                                        return
                                elseif player.mp < 206 then newNuke = ''..newAra..''
                                elseif player.mp < 390 then newNuke = ''..newAra..' II'
                                end
                        elseif not aras:contains(spell.english) then
                                if player.mp < 7 then
                                        add_to_chat(122, 'Insufficient MP ['..tostring(player.mp)..']. Cancelling.')
                                        eventArgs.cancel = true
                                        return
                                elseif player.mp < 26 then newNuke = 'Fire'
                                elseif player.mp < 63 then newNuke = 'Fire II'
                                elseif player.mp < 135 then newNuke = 'Fire III'
                                elseif player.mp < 228 then newNuke = 'Fire IV'
                                elseif player.mp < 339 then newNuke = 'Fire V'
                                end
                        end
                elseif spell.element == 'Ice' then
                        if aras:contains(spell.english) then
                                if player.mp < 108 then
                                        add_to_chat(122, 'Insufficient MP ['..tostring(player.mp)..']. Cancelling.')
                                        eventArgs.cancel = true
                                        return
                                elseif player.mp < 229 then newNuke = ''..newAra..''
                                elseif player.mp < 432 then newNuke = ''..newAra..' II'
                                end
                        elseif not aras:contains(spell.english) then
                                if player.mp < 8 then
                                        add_to_chat(122, 'Insufficient MP ['..tostring(player.mp)..']. Cancelling.')
                                        eventArgs.cancel = true
                                        return
                                elseif player.mp < 31 then newNuke = 'Blizzard'
                                elseif player.mp < 75 then newNuke = 'Blizzard II'
                                elseif player.mp < 162 then newNuke = 'Blizzard III'
                                elseif player.mp < 267 then newNuke = 'Blizzard IV'
                                elseif player.mp < 386 then newNuke = 'Blizzard V'
                                end
                        end
                elseif spell.element == 'Lightning' then
                        if aras:contains(spell.english) then
                                if player.mp < 123 then
                                        add_to_chat(122, 'Insufficient MP ['..tostring(player.mp)..']. Cancelling.')
                                        eventArgs.cancel = true
                                        return
                                elseif player.mp < 253 then newNuke = ''..newAra..''
                                elseif player.mp < 476 then newNuke = ''..newAra..' II'
                                end
                        elseif not aras:contains(spell.english) then
                                if player.mp < 9 then
                                        add_to_chat(122, 'Insufficient MP ['..tostring(player.mp)..']. Cancelling.')
                                        eventArgs.cancel = true
                                        return
                                elseif player.mp < 37 then newNuke = 'Thunder'
                                elseif player.mp < 91 then newNuke = 'Thunder II'
                                elseif player.mp < 195 then newNuke = 'Thunder III'
                                elseif player.mp < 306 then newNuke = 'Thunder IV'
                                elseif player.mp < 437 then newNuke = 'Thunder V'
                                end
                        end
                end
 
                downgrade = 'Insufficient MP ['..tostring(player.mp)..'] to cast '..spell.english..'. Changing spell to '..newNuke..'.'
        end
 
        -- Downgrade the spell to what we can actually cast
        local spell_recasts = windower.ffxi.get_spell_recasts()
        if spell_recasts[spell.recast_id] > 0 then
                if t1:contains(spell.english) then
                        add_to_chat(122, ''..spell.english..' is on cooldown. Cancelling.')
                        eventArgs.cancel = true
                        return
                elseif t2:contains(spell.english) then newNuke = ''..elementType..''
                elseif t3:contains(spell.english) then newNuke = ''..elementType..' II'
                elseif t4:contains(spell.english) then newNuke = ''..elementType..' III'
                elseif t5:contains(spell.english) then newNuke = ''..elementType..' IV'
                elseif t6:contains(spell.english) then newNuke = ''..elementType..' V'
                elseif ra2:contains(spell.english) then newNuke = ''..newAra..''
                elseif ra3:contains(spell.english) then newNuke = ''..newAra..' II'
                end
 
                downgrade = '***'..spell.english..'*** is on cooldown. Downgrading spell to ***'..newNuke..'***.'
        end
 
        if newNuke ~= spell.english then
                send_command('@input /ma "'..newNuke..'" '..tostring(spell.target.raw))
                if downgrade then
                        add_to_chat(122, downgrade)
                end
                eventArgs.cancel = true
                return
        end
end

 
-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
        set_macro_page(1,6)
end