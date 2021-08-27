-- Setup your Key Bindings here:  
    windower.send_command('bind f7 gs c toggle mb')
    windower.send_command('bind f9 gs c avatar mode')
    windower.send_command('bind f10 gs c toggle auto')
    windower.send_command('bind f12 gs c toggle melee')
	
-- Setup Lockstyle
	send_command('wait 4;input /lockstyleset 4')
     
-- Setup your Gear Sets below:
function get_sets()

	include('Aug_Gear.lua')
	
    -- My formatting is very easy to follow. All sets that pertain to my character doing things are under 'me'.
    -- All sets that are equipped to faciliate my avatar's behaviour or abilities are under 'avatar', eg, Perpetuation, Blood Pacts, etc
      
    sets.me = {}        -- leave this empty
    sets.avatar = {}    -- leave this empty
      
    -- Your idle set when you DON'T have an avatar out
    sets.me.idle = {
		main  = Espiritus.A,
		sub   = "Enki Strap",
		ammo  = "Sanchet Sachet +1",
		head  = "Beckoner's Horn +1",
		neck  = "Loricate torque +1",
		lear  = "Evans Earring",
		rear  = "C. Palug Earring",
		body  = ApogeeDalmatica.A,
		hands = "Inyan. Dastanas +1",
		lring = "Defending Ring",
		rring = DarkRing.Magic,
		back  = CampestresCape.PetAtk,
		waist = "Regal Belt",
		legs  = "Inyanga Shalwar +1",
		feet  = "Herald's Gaiters"
    }
	   
    -- Your MP Recovered Whilst Resting Set
    sets.me.resting = { 
        main  = "Chatoyant Staff",
        waist = "Hierarch Belt",
    }
      
    -----------------------
    -- Perpetuation Related
    -----------------------
      
    -- Avatar's Out --  
    -- This is the base for all perpetuation scenarios, as seen below
	-- -14 max perp (-16) & refresh (+11)
    sets.avatar.perp = {
		main  = "Gridarvor",				-- -5
        sub   = "Enki Strap",
        ammo  = "Sancus Sachet +1",
		head  = "Beckoner's Horn +1",		-- +2
        neck  = "Caller's Pendant",
        lear  = "Evans Earring",			-- -2
        rear  = "C. Palug Earring",			-- +1
		body  = "Apogee Dalmatica +1",		-- +4
		hands = "Asteria Mitts +1",			-- +2
        lring = "Varar Ring +1",
        rring = "Evoker's Ring",			-- -1
		back  = CampestresCape.PetAtk,
		waist = "Lucidity Sash",			-- -2
		legs  = "Assiduity Pants +1",		-- -3 / +2
		feet  = "Caller's Pgch. +2"			-- -3
    }

    -- The following sets base off of perpetuation, so you can consider them idle sets.
    -- Set the relevant gear, bearing in mind it will overwrite the perpetuation item for that slot!
    sets.avatar["Carbuncle"] = { hands = "Asteria Mitts +1" }
    sets.avatar["Cait Sith"] = { hands = "Lamassu Mitts +1" }

    -- When we want our avatar to stay alive
    sets.avatar.tank = set_combine(sets.avatar.perp, {
        -- main  = "",
        -- sub   = "",
        -- ammo  = "",
        -- head  = "",
        -- neck  = "",
        -- lear  = "",
        -- rear  = "",
        -- body  = "",
        -- hands = "",
        -- lring = "",
        -- rring = "",
        -- back  = "",
        -- waist = "",
        -- legs  = "",
        -- feet  = ""
    })
      
    -- When we want our avatar to shred
    sets.avatar.melee = set_combine(sets.avatar.perp,{
        -- main  = "",
        -- sub   = "",
        -- ammo  = "",
        head  = "Tali'ah Turban +1",
        -- neck  = "",
        -- lear  = "",
        -- rear  = "",
		body  = "Tali'ah Manteel +1",
        hands = "Tali'ah Gages +1",
        -- lring = "",
        -- rring = "",
        -- back  = "",
        -- waist = "",
        legs  = "Tali'ah Seraweels +1",
        feet  = "Tali'ah Crackows +1"
    })
      
    -- When we want our avatar to hit
    sets.avatar.acc = set_combine(sets.avatar.perp,{
        -- main  = "",
        -- sub   = "",
        -- ammo  = "",
        head  = "Tali'ah Turban +1",
        -- neck  = "",
        -- lear  = "",
        -- rear  = "",
		body  = "Tali'ah Manteel +1",
        hands = "Tali'ah Gages +1",
        lring = "Varar Ring +1",
		rring = "Varar Ring +1",
        -- back  = "",
        -- waist = "",
        legs  = "Tali'ah Seraweels +1",
        feet  = "Tali'ah Crackows +1"
    })
      
    -- When Avatar's Favor is active
    sets.avatar.favor = set_combine(sets.avatar.perp,{
        -- main  = "",
        -- sub   = "",
        -- ammo  = "",
        -- head  = "",
        -- neck  = "",
        -- lear  = "",
        -- rear  = "",
        -- body  = "",
        -- hands = "",
        -- lring = "",
        -- rring = "",
        -- back  = "",
        -- waist = "",
        -- legs  = "",
        -- feet  = ""
    })
      
    ----------------------------
    -- Summoning Skill Related
    -- Including all blood pacts
    ----------------------------
      
    -- + Summoning Magic:. base set for max skill and blood pacts
    sets.avatar.skill = {
	    main  = Espiritus.A,
		sub   = "Vox Grip",
		ammo  = "Sancus Sachet +1",
		head  = "Beckoner's Horn +1",
		neck  = "Incanter's Torque",
		lear  = "C. Palug Earring",
		rear  = "Lodurr Earring",
		body  = "Beckoner's Doublet",
		hands = "Lamassu Mitts +1",
		lring = "Evoker's Ring",
		rring = "Stikini Ring",
		back  = CampestresCape.FCPetMAB,
		waist = "Kobo Obi",
		legs  = "Beckoner's Spats",
		feet  = ApogeePumps.A
    }
      
    -------------------------
    -- Individual Blood Pacts
    -------------------------
      
    -- Physical damage
	sets.avatar.atk = set_combine(sets.avatar.skill,{
--      main  = "Nirvana",
        sub   = "Elan Strap +1",
        head  = ApogeeCrown.B,
        neck  = "Shulmanu Collar",
        lear  = "Gelos Earring",
        rear  = "Lugalbanda Earring",
        body  = "Convoker's Doublet +3",
        hands = MerlinicDastanas.PetAtk,
		lring = "Varar Ring +1",
		rring = "Varar Ring +1",
		back  = CampestresCape.PetAtk,
        waist = "Incarnation Sash",
        legs  = ApogeeSlacks.A,
        feet  = ApogeePumps.A
--      feet="Convoker's Pigaches +3"
    })

    sets.avatar.pacc = set_combine(sets.avatar.atk,{
        -- main  = "",
        -- sub   = "",
        -- ammo  = "",
        -- head  = "",
        -- neck  = "",
        -- lear  = "",
        -- rear  = "",
        -- body  = "",
        -- hands = "",
        -- lring = "",
        -- rring = "",
        -- back  = "",
        -- waist = "",
        -- legs  = "",
        -- feet  = ""
    })
      
    -- Magic Attack
    sets.avatar.magical = set_combine(sets.avatar.skill,{
		main  = Espiritus.A,
		sub	  = "Elan Strap +1",
		head  = ApogeeCrown.B,
--		head  = Cath Palug Crown,
		body  = ApogeeDalmatica.A,
		hands = MerlinicDastanas.PetMAB,
		neck  = "Adad Amulet",
		lear  = "Lugalbanda Earring",
        rear  = "Gelos Earring",
		lring = "Varar Ring +1",
		rring = "Varar Ring +1",
		back  = "Conveyance Cape",
		waist = "Regal Belt",
        legs  = "Enticer's Pants",
		feet  = ApogeePumps.A
	})

	sets.avatar.magical.HighTP = set_combine(sets.avatar.magical, {
		legs  = ApogeeSlacks.A
	})

    sets.avatar.mb = set_combine(sets.avatar.mab,{hands="Glyphic Bracers +1"})

	sets.avatar.hybrid = set_combine(sets.avatar.skill, {
		main  = Grioavoir.PetMAB,
--		main  = "Nirvana",
        sub   = "elan strap +1",
        ammo  = "Sancus Sachet +1",
        head  = ApogeeCrown.B,
--        head  = "Cath Palug Crown",
        neck  = "Adad Amulet",
        lear  = "Gelos Earring",
        rear  = "Lugalbanda Earring",
		body  = ApogeeDalmatica.A,
        hands = MerlinicDastanas.PetMAB,
		lring = "Varar Ring +1",
		rring = "Varar Ring +1",
		back  = CampestresCape.FCPetMAB,
        waist = "Regal Belt",
		legs  = ApogeeSlacks.A,
		feet  = ApogeePumps.A
    })
      
    -- Magic Accuracy
    sets.avatar.macc = set_combine(sets.avatar.skill,{
        -- main  = "",
        -- sub   = "",
        -- ammo  = "",
        -- head  = "",
        -- neck  = "",
        -- lear  = "",
        -- rear  = "",
        -- body  = "",
        -- hands = "",
        -- lring = "",
        -- rring = "",
        -- back  = "",
        -- waist = "",
        -- legs  = "",
        -- feet  = ""
    })
      
    -- Buffs
    sets.avatar.buff = set_combine(sets.avatar.skill,{
        -- main  = "",
        -- sub   = "",
        -- ammo  = "",
        -- head  = "",
        -- neck  = "",
        -- lear  = "",
        -- rear  = "",
        -- body  = "",
        -- hands = "",
        -- lring = "",
        -- rring = "",
        -- back  = "",
        -- waist = "",
        -- legs  = "",
        -- feet  = ""
    })
      
    -- Other
    sets.avatar.other = set_combine(sets.avatar.skill,{
        -- main  = "",
        -- sub   = "",
        -- ammo  = "",
        -- head  = "",
        -- neck  = "",
        -- lear  = "",
        -- rear  = "",
        -- body  = "",
        -- hands = "",
        -- lring = "",
        -- rring = "",
        -- back  = "",
        -- waist = "",
        -- legs  = "",
        -- feet  = ""
    })
      
    -- Combat Related Sets
      
    -- Melee
    -- The melee set combines with perpetuation, because we don't want to be losing all our MP whilst we swing our Staff
    -- Anything you equip here will overwrite the perpetuation/refresh in that slot.
    sets.me.melee = set_combine(sets.avatar.perp,{
        -- main  = "",
        -- sub   = "",
        -- ammo  = "",
        -- head  = "",
        -- neck  = "",
        -- lear  = "",
        -- rear  = "",
        -- body  = "",
        -- hands = "",
        -- lring = "",
        -- rring = "",
        -- back  = "",
        -- waist = "",
        -- legs  = "",
        -- feet  = ""
    })
      
    -- Shattersoul. Weapon Skills do not work off perpetuation as it only stays equipped for a moment
    sets.me["Shattersoul"] = {
        -- main  = "",
        -- sub   = "",
        -- ammo  = "",
        -- head  = "",
        -- neck  = "",
        -- lear  = "",
        -- rear  = "",
        -- body  = "",
        -- hands = "",
        -- lring = "",
        -- rring = "",
        -- back  = "",
        -- waist = "",
        -- legs  = "",
        -- feet  = ""
    }
    sets.me["Garland of Bliss"] = {
        -- main  = "",
        -- sub   = "",
        -- ammo  = "",
        -- head  = "",
        -- neck  = "",
        -- lear  = "",
        -- rear  = "",
        -- body  = "",
        -- hands = "",
        -- lring = "",
        -- rring = "",
        -- back  = "",
        -- waist = "",
        -- legs  = "",
        -- feet  = ""
    }
      
    -- Feel free to add new weapon skills, make sure you spell it the same as in game. These are the only two I ever use though
  
    ---------------
    -- Casting Sets
    ---------------
      
    sets.precast = {}
    sets.midcast = {}
    sets.aftercast = {}
      
    ----------
    -- Precast
    ----------

    -- Generic Casting Set that all others take off of. Here you should add all your fast cast  
    sets.precast.casting = {
		main="Oranyan",					-- 7
		head="Merlinic Hood", 			-- 10
		body="Merlinic Jubbah",
		left_ear="Malignance Earring",
		right_ear="Loquac. Earring",
}
      
    -- Summoning Magic Cast time - gear
    sets.precast.summoning = set_combine(sets.precast.casting, {
        -- main  = "",
        -- sub   = "",
        -- ammo  = "",
        -- head  = "",
        -- neck  = "",
        -- lear  = "",
        -- rear  = "",
        -- body  = "",
        -- hands = "",
        -- lring = "",
        -- rring = "",
        -- back  = "",
        -- waist = "",
        -- legs  = "",
        -- feet  = ""
    })
      
    -- Enhancing Magic, eg. Siegal Sash, etc
    sets.precast.enhancing = set_combine(sets.precast.casting,{
        -- main  = "",
        -- sub   = "",
        -- ammo  = "",
        -- head  = "",
        -- neck  = "",
        -- lear  = "",
        -- rear  = "",
        -- body  = "",
        -- hands = "",
        -- lring = "",
        -- rring = "",
        -- back  = "",
        waist = "Siegal Sash",
        -- legs  = "",
        -- feet  = ""
    })
  
    -- Stoneskin casting time -, works off of enhancing -
    sets.precast.stoneskin = set_combine(sets.precast.enhancing,{
        -- main  = "",
        -- sub   = "",
        -- ammo  = "",
        -- head  = "",
        -- neck  = "",
        -- lear  = "",
        -- rear  = "",
        -- body  = "",
        -- hands = "",
        -- lring = "",
        -- rring = "",
        -- back  = "",
        waist="Siegal Sash",
        -- legs  = "",
        -- feet  = ""
    })
      
    -- Curing Precast, Cure Spell Casting time -
    sets.precast.cure = set_combine(sets.precast.casting,{
		main="Serenity",
		sub="Enki Strap",
		head="Vanya Hood",
		body="Vanya Robe",
		hands="Vanya Cuffs",
		legs="Vanya Slops",
		feet="Vanya Clogs",
		neck="Incanter's Torque",
		waist="Luminary Sash",
		right_ear="Regal Earring",
		left_ring="Stikini Ring",
    })
	
	sets.precast.Dispelga = set_combine(sets.precast.casting, {
		main="Daybreak", 
		sub="Ammurapi Shield"
	})

    ---------------------
    -- Ability Precasting
    ---------------------
      
    -- Blood Pact Ability Delay
    sets.precast.bp = {
        head  = "Beckoner's Horn +1",
        neck  = "Caller's Pendant",
		body  = "Convoker's Doublet +3",
        rring = "Evoker's Ring",
        back  = "Conveyance Cape",
        waist = "Lucidity Sash",
    }
      
    -- Mana Cede
    sets.precast["Mana Cede"] = {
        -- main  = "",
        -- sub   = "",
        -- ranged= "",
        -- ammo  = "",
        -- head  = "",
        -- neck  = "",
        -- lear  = "",
        -- rear  = "",
        -- body  = "",
        hands = "Caller's Bracers +2",
        -- hands = "",
        -- lring = "",
        -- rring = "",
        -- back  = "",
        -- waist = "",
        -- legs  = "",
        -- feet  = ""
    }
      
    -- Astral Flow  
    sets.precast["Astral Flow"] = {
        -- main  = "",
        -- sub   = "",
        -- ranged= "",
        -- ammo  = "",
        -- head  = "",
        -- neck  = "",
        -- lear  = "",
        -- rear  = "",
        -- body  = "",
        -- hands = "",
        -- lring = "",
        -- rring = "",
        -- back  = "",
        -- waist = "",
        -- legs  = "",
        -- feet  = ""
    }
      
    ----------
    -- Midcast
    ----------
      
    -- We handle the damage and etc. in Pet Midcast later
      
    -- Whatever you want to equip mid-cast as a catch all for all spells, and we'll overwrite later for individual spells
    sets.midcast.casting = {
		neck  = "Incanter's Torque",
		waist = "Luminary Sash",
		lring = "Stikini Ring",
		rring = "Evanescence Ring",
    }
      
    -- Enhancing
    sets.midcast.enhancing = set_combine(sets.midcast.casting,{
		main="Daybreak",
		sub="Ammurapi Shield",
    })
        -- main  = "",
        -- sub   = "",
        -- ranged= "",
        -- ammo  = "",
        -- head  = "",
        -- neck  = "",
        -- lear  = "",
        -- rear  = "",
        -- body  = "",
        -- hands = "",
        -- lring = "",
        -- rring = "",
        -- back  = "",
        -- waist = "",
        -- legs  = "",
        -- feet  = ""
      
    -- Stoneskin
    sets.midcast.stoneskin = set_combine(sets.midcast.enhancing,{
        -- main  = "",
        -- sub   = "",
        -- ranged= "",
        -- ammo  = "",
        -- head  = "",
        -- neck  = "",
        -- lear  = "",
        -- rear  = "",
        -- body  = "",
        -- hands = "",
        -- lring = "",
        -- rring = "",
        -- back  = "",
        -- waist = "",
        -- legs  = "",
        -- feet  = ""
    })
    -- Elemental Siphon, eg, Tatsumaki Thingies, Esper Stone, etc
    sets.midcast.siphon = set_combine(sets.avatar.skill,{
        -- main  = "",
        -- sub   = "",
        -- ranged= "",
        -- ammo  = "",
        -- head  = "",
        -- neck  = "",
        -- lear  = "",
        -- rear  = "",
        -- body  = "",
        -- hands = "",
        -- lring = "",
        -- rring = "",
        -- back  = "",
        -- waist = "",
        -- legs  = "",
        -- feet  = ""
    })
        
    -- Cure Potency
    sets.midcast.cure = set_combine(sets.midcast.casting,{
		main  = "Daybreak",
		sub   = "Sors Shield",
		head  = VanyaHood.B,
		body  = VanyaRobe.B,
		hands = VanyaCuffs.B,
		legs  = VanyaSlops.B,
		feet  = VanyaClogs.D
    })

--[[	
	sets.precast.FC = {
	main={ name="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},	-- 5
	range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},						-- 3
	head="Nahtirah Hat",																			-- 10
	body="Merlinic Jubbah",																			-- 10
	legs="Geomancy Pants",		
	left_ear="Malignance Earring",
	right_ear="Loquac. Earring",
	back={ name="Nantosuelta's Cape", augments={'MP+60','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10',}},
}
]]
	sets.precast['Impact'] = set_combine(sets.precast.casting, {
		head=empty,
		body="Twilight Cloak"
	})
	
	sets.midcast['Impact'] = set_combine(sets.midcast['Enfeebling Magic'], {
		head=empty,
		body="Twilight Cloak"
	})
      
    ------------
    -- Aftercast
    ------------
      
    -- I don't use aftercast sets, as we handle what to equip later depending on conditions using a function, eg, do we have an avatar out?
  
end