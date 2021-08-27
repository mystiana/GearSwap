LifeStreamCape = {}
LifeStreamCape.PetDT = {
	name="Lifestream Cape", 
	augments={
		'Geomancy Skill +10',
		'Indi. eff. dur. +15',
		'Pet: Damage taken -2%'
	}
}

--------------------------------------
	-- Precast sets
	--------------------------------------
   
	-- Precast sets to enhance JAs
sets.precast.JA.Bolster = {body={ name="Bagua Tunic +3", augments={'Enhances "Bolster" effect',}},}
sets.precast.JA['Life cycle'] = {body="Geomancy Tunic +3",}
sets.precast.JA['Full Circle'] = {head="Azimuth Hood +1"}
sets.precast.JA['Radial Arcana'] = {feet={ name="Bagua Sandals +3", augments={'Enhances "Radial Arcana" effect',}},}

	-- Fast cast sets for spells  Currently 47/80
------ Capped at 80% no additional FC sets needed -------
--- RDM(15) main(5) ranged(3) head(10) body(6+4) L-ear(4) R-ear(2) back(10)
--- Todo:  pants(15) feet(5)

sets.precast.FC = {
	main={ name="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},	-- 5
	range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},						-- 3
	head="",																			-- 10
	body="Merlinic Jubbah",																			-- 10
	legs="Geomancy Pants",		
	left_ear="Malignance Earring",
	right_ear="Loquac. Earring",
	back={ name="Nantosuelta's Cape", augments={'MP+60','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10',}},
}

sets.precast.FC.Cure = set_combine(sets.precast.FC, {
	head="Vanya Hood",
	body="Vanya Robe",
	hands="Vanya Cuffs",
	legs="Vanya Slops",
	feet="Vanya Clogs",
	waist="Luminary Sash",
})

sets.precast['Elemental Magic'] = set_combine(sets.precast.FC, {
	hands  = "Mallquis Cuffs +1"
})

sets.precast.FC.Dispelga = set_combine(sets.precast.FC, {
	main="Daybreak", 
	sub="Ammurapi Shield"
})

sets.precast.FC.Impact = set_combine(sets.precast.FC, {
	head=empty,
	body="Twilight Cloak"
})



	-- Weaponskill sets
	-- Default set for any weaponskill that isn't any more specifically defined
	-- sets.precast.WS = {ammo="Amar Cluster",
	--         head="Jhakri coronal +1",neck="Asperity necklace",ear1="Moonshade Earring",ear2="Ishvara Earring",
	--         body="Jhakri robe +1",hands="Jhakri cuffs +1",ring1="Rufescent Ring",ring2="Apate Ring",
	--         back="Refraction cape",waist="Grunfeld rope",legs="Jhakri slops +1",feet="Jhakri pigaches +1"}

	-- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
	-- sets.precast.WS['Flash Nova'] = {ammo="Pemphredo Tathlum",
	--         head="Merlinic hood",neck="Sanctity Necklace",ear1="Friomisi Earring",ear2="Barkarole Earring",
	--         body=MBbody,hands="Amalric Gages",ring1="Acumen ring",ring2="Shiva ring +1",
	--         back=MABback,waist="Refoccilation stone",legs="Merlinic Shalwar",feet="Merlinic crackows"}

	-- sets.precast.WS['Hexa Strike'] = {ammo="Amar Cluster",
	--         head="Jhakri coronal +1",neck="Fotia gorget",ear1="Moonshade Earring",ear2="Ishvara Earring",
	--         body="Jhakri robe +1",hands="Jhakri cuffs +1",ring1="Rufescent Ring",ring2="Begrudging Ring",
	--         back="Kayapa cape",waist="Fotia Belt",legs="Jhakri slops +1",feet="Jhakri pigaches +1"}

	-- sets.precast.WS['Realmrazer'] = {ammo="Amar Cluster",
	--         head="Jhakri coronal +1",neck="Fotia gorget",ear1="Moonshade Earring",ear2="Ishvara Earring",
	--         body="Jhakri robe +1",hands="Jhakri cuffs +1",ring1="Levia. Ring +1",ring2="Levia. Ring +1",
	--         back="Kayapa cape",waist="Fotia Belt",legs="Jhakri slops +1",feet="Jhakri pigaches +1"}

	-- sets.precast.WS['Exudation'] = {ammo="Amar Cluster",
	--         head="Jhakri coronal +1",neck="Asperity necklace",ear1="Moonshade Earring",ear2="Ishvara Earring",
	--         body="Jhakri robe +1",hands="Jhakri cuffs +1",ring1="Levia. Ring +1",ring2="Shiva ring +1",
	--         back=MABback,waist="Grunfeld rope",legs="Jhakri slops +1",feet="Jhakri pigaches +1"}
		   
	-- sets.precast.WS['Earth Crusher'] = {ammo="Pemphredo Tathlum",
	--         head="Jhakri coronal +1",neck="Sanctity Necklace",ear1="Friomisi Earring",ear2="Barkarole Earring",
	--         body="Jhakri robe +1",hands="Jhakri cuffs +1",ring1="Acumen ring",ring2="Shiva ring +1",
	--         back=MABback,waist="Refoccilation stone",legs="Jhakri slops +1",feet="Jhakri pigaches +1"}

	-- sets.precast.WS['Cataclysm'] = sets.precast.WS['Earth Crusher']
	-- sets.precast.WS['Starlight'] = {}
	-- sets.precast.WS['Moonlight'] = {}

	--------------------------------------
	-- Midcast sets
	--------------------------------------

	-- Base fast recast for spells
sets.midcast.FastRecast = sets.precast.FC

sets.midcast.Geomancy = {
    main={ name="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Azimuth Hood +1",
    body="Bagua Tunic +3",
    hands="Geomancy Mitaines",
    legs="Assid. Pants +1",
    feet="Geomancy Sandals",
    neck="Bagua Charm +1",
    waist="Luminary Sash",
    left_ear="Gna Earring",
    right_ear="Loquac. Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back  = LifeStreamCape.PetDT
}

sets.midcast.Geomancy.Indi = {
	main  = Solstice.D,
	sub   = "Genmei Shield",
	range = Dunna.R15,
	head  = "Azimuth Hood +1",
	body  = "Bagua Tunic +3",
	hands = "Geomancy Mitaines +3",
--	legs= { name="Vanya Slops", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
--	feet={ name="Medium's Sabots", augments={'MP+50','MND+8','"Conserve MP"+6','"Cure" potency +3%',}},
	neck="Incanter's Torque",
	waist="Austerity Belt",
	left_ear="Mendi. Earring",
	right_ear="Gifted Earring",
	left_ring="Stikini Ring",
	right_ring="Stikini Ring",
    back  = LifeStreamCape.PetDT
}

sets.midcast.Cure = {
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
	right_ring="Stikini Ring"
}
		   
sets.midcast.Cursna = sets.precast.FC

sets.midcast.Curaga = sets.midcast.Cure

sets.midcast['Enhancing Magic'] = {
	main="Daybreak",
	sub="Ammurapi Shield",
	neck="Incanter's Torque",
	left_ring="Stikini Ring",
	right_ring="Stikini Ring",
}

sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], {
	waist="Siegel Sash"
})
   
sets.midcast['Regen'] = {
	main="Daybreak",
	sub="Ammurapi Shield",
	neck="Incanter's Torque",
	waist="Pythia Sash +1",
	left_ear="Andoaa Earring",
	right_ear="Magnetic Earring",
	left_ring="Stikini Ring",
	right_ring="Stikini Ring",
	back="Solemnity Cape"
}
   
sets.midcast['Haste'] = {main="Daybreak",
	sub="Ammurapi Shield",
	range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
	head={ name="Telchine Cap", augments={'"Conserve MP"+3','Enh. Mag. eff. dur. +9',}},
	body="Vedic Coat",
	hands={ name="Telchine Gloves", augments={'"Fast Cast"+4','Enh. Mag. eff. dur. +7',}},
	legs={ name="Lengo Pants", augments={'INT+9','Mag. Acc.+15','"Mag.Atk.Bns."+14',}},
	feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
	neck="Incanter's Torque",
	waist="Pythia Sash +1",
	left_ear="Andoaa Earring",
	right_ear="Magnetic Earring",
	left_ring="Stikini Ring",
	right_ring="Stikini Ring",
	back="Solemnity Cape",}

sets.midcast.RefreshSelf = {
	main  = "Daybreak",
	sub   = "Ammurapi Shield",
--[[

	head  = "Amalric Coif",
	body  = "Vedic Coat",
	hands={ name="Telchine Gloves", augments={'"Fast Cast"+4','Enh. Mag. eff. dur. +7',}},
	legs={ name="Lengo Pants", augments={'INT+9','Mag. Acc.+15','"Mag.Atk.Bns."+14',}},
	feet="Inspirited Boots",
	neck="Incanter's Torque",
	waist="Pythia Sash +1",
	left_ear="Andoaa Earring",
	right_ear="Magnetic Earring",
	left_ring="Stikini Ring",
	right_ring="Stikini Ring",
	back="Solemnity Cape",
]]
} 

sets.midcast['Refresh'] = {main="Daybreak",
	sub="Ammurapi Shield",
	range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
	head="Amalric Coif",
	body={ name="Vanya Robe", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
	hands={ name="Telchine Gloves", augments={'"Fast Cast"+4','Enh. Mag. eff. dur. +7',}},
	legs={ name="Lengo Pants", augments={'INT+9','Mag. Acc.+15','"Mag.Atk.Bns."+14',}},
	feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
	neck="Incanter's Torque",
	waist="Pythia Sash +1",
	left_ear="Andoaa Earring",
	right_ear="Magnetic Earring",
	left_ring="Stikini Ring",
	right_ring="Stikini Ring",
	back="Solemnity Cape",}     

sets.midcast['Enfeebling Magic'] = {
	main="Daybreak",
	sub="Ammurapi Shield",
	range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
	head="Jhakri Coronal +1",
	body="Jhakri Robe +2",
	hands="Geomancy Mitaines +3",
	legs="Geomancy Pants +3",
	feet="Geo. Sandals +3",
	neck="Bagua Charm +1",
	waist="Luminary Sash",
	left_ear="Digni. Earring",
	right_ear="Regal Earring",
	left_ring="Stikini Ring",
	right_ring="Kishar Ring",
	back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},}

sets.midcast.ElementalEnfeeble = sets.midcast['Enfeebling Magic']

sets.midcast['Impact'] = set_combine(sets.midcast['Enfeebling Magic'], {
	head=empty,
	body="Twilight Cloak"
})

sets.midcast['Dark Magic'] = {main="Daybreak",
	sub="Ammurapi Shield",
	range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
	head="Geo. Galero +3",
	body="Geomancy Tunic +3",
	hands="Geomancy Mitaines +3",
	legs="Geomancy Pants +3",
	feet="Geo. Sandals +3",
	neck="Sanctity Necklace",
	waist="Luminary Sash",
	left_ear="Digni. Earring",
	right_ear="Regal Earring",
	left_ring="Stikini Ring",
	right_ring="Kishar Ring",
	back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},}

sets.midcast['Drain'] = {main="Daybreak",
	sub="Ammurapi Shield",
	range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
	head="Geo. Galero +3",
	body="Geomancy Tunic +3",
	hands="Geomancy Mitaines +3",
	legs="Geomancy Pants +3",
	feet="Geo. Sandals +3",
	neck="Sanctity Necklace",
	waist="Luminary Sash",
	left_ear="Digni. Earring",
	right_ear="Regal Earring",
	left_ring="Stikini Ring",
	right_ring="Kishar Ring",
	back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},}

sets.midcast['Aspir'] = sets.midcast['Drain']
sets.midcast['Aspir II'] = sets.midcast['Drain']
sets.midcast['Aspir III'] = sets.midcast['Drain']      

	-- Elemental Magic sets

gear.default.obi_waist = "Eschan Stone"

sets.midcast['Elemental Magic'] = {
	main  = "Daybreak",
	sub   = "Ammurapi Shield",
	head  = "Bugua Galero +3",
	body  ="Bagua Tunic +3",
	hands = MerlinicDastanas.MagicBurst,
	legs  = "Bagua Pants +3",
	feet  = "Bagua Sandals +3",
	neck  = "Incanter's Torque",
	waist = "Luminary Sash",
	lear = "Malignance Earring",
	rear  = "Regal Earring",
	lring = "Freke Ring",
	rring = "Stikini Ring",
	back  = "Twilight Cape",
--		back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}


sets.midcast['Elemental Magic'].old = {
	main="Daybreak",
--	main="Solstice",
	sub="Ammurapi Shield",
	head="Jhakri Coronal +1",
	body="Bagua Tunic +3",
	hands="Jhakri Cuffs +2",
	legs="Jhakri Slops +1",
	feet="Jhakri Pigaches +1",
	neck="Incanter's Torque",
	waist="Luminary Sash",
	left_ear="Malignance Earring",
	right_ear="Regal Earring",
	left_ring="Zodiac Ring",
	right_ring="Stikini Ring",
	back="Twilight Cape",
--		back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}


sets.midcast['Elemental Magic'].BurstBurst = sets.midcast['Elemental Magic']


--[[
sets.midcast['Elemental Magic'].Resistant = {
	sub="Ammurapi Shield",
	ammo="Pemphredo Tathlum",
	head="Cath Palug Crown",
	body="Jhakri Robe +2",
	hands="Jhakri Cuffs +2",
	legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','INT+10','Mag. Acc.+11','"Mag.Atk.Bns."+14',}},
	feet="Jhakri Pigaches +2",
	neck="Sanctity Necklace",
	waist="Eschan Stone",
	left_ear="Malignance Earring",
	right_ear="Regal Earring",
	left_ring="Acumen Ring",
	right_ring="Jhakri Ring",
	back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
	   
sets.midcast['Elemental Magic'].BurstBurst = {
	main="Daybreak",
	sub="Ammurapi Shield",
	ammo="Pemphredo Tathlum",
	head="Ea Hat",
	body="Jhakri Robe +2",
	hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','Magic burst dmg.+11%',}},
	legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','INT+10','Mag. Acc.+11','"Mag.Atk.Bns."+14',}},
	feet="Jhakri Pigaches +2",
	neck="Sanctity Necklace",
	waist="Eschan Stone",
	left_ear="Malignance Earring",
	right_ear="Regal Earring",
	left_ring="Mujin Band",
	right_ring="Freke Ring",
	back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},}
]]
		   
sets.midcast['Elemental Magic'].BurstResist = sets.midcast['Elemental Magic'].Burst 


	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

	-- Resting sets

	-- Idle sets
sets.idle = {
	main={ name="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},
	sub="Genmei Shield",
	range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
	head="Azimuth Hood +1",
	body="Jhakri Robe +2",
	hands="Geomancy Mitaines +3",
	legs="Assid. Pants +1",
	feet="Geo. Sandals +3",
	neck="Twilight Torque",
	waist="Luminary Sash",
	left_ear="Malignance Earring",
    right_ear="Lugalbanda Earring",
	left_ring="Defending Ring",
    right_ring={ name="Dark Ring", augments={'Phys. dmg. taken -5%','Magic dmg. taken -3%'}},
    back={ name="Lifestream Cape", augments={'Geomancy Skill +10','Indi. eff. dur. +15','Pet: Damage taken -2%',}}
}

sets.idle.PetRegen = {
	main="Sucellus",
	sub="Genmei Shield",
	range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
	head="Azimuth Hood +1",
	body="Jhakri Robe +2",
	hands="Geomancy Mitaines +3",
	legs="Psycloth Lappas",
	feet="Geo. Sandals +3",
	neck="Bagua Charm +1",
	waist="Isa Belt",
    left_ear="Lugalbanda Earring",
	right_ear="Loquac. Earring",
	left_ring="Defending Ring",
    right_ring={ name="Dark Ring", augments={'Magic dmg. taken -6%','Phys. dmg. taken -3%',}},
	back  = NantosueltaCape.PetDT

--[[
	sub="Genmei Shield",
	range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
	body="Geomancy Tunic +3",
	legs="Geomancy Pants +3",
	feet={ name="Bagua Sandals +1", augments={'Enhances "Radial Arcana" effect',}},
	neck="Bagua Charm +1",
	waist="Isa Belt",
	right_ear="Infused Earring",
	right_ring="Warden's Ring",
]]
}

	-- .Pet sets are for when Luopan is present.
sets.idle.Pet = sets.idle.PetRegen
		   
sets.idle.Pet.PDT = sets.idle.PetRegen


	-- sets.idle.Weak = {main="Bolelabunga",sub="Genmei shield",range="Dunna",
	--         head="Hike Khat",neck="Loricate Torque +1",ear1="Genmei Earring",ear2="Infused earring",
	--         body="Jhakri Robe +1",hands="Bagua Mitaines +1",ring1="Sheltered Ring",ring2="Defending Ring",
	--         back="Lifestream Cape",waist="Fucho-no-obi",legs="Assiduity Pants +1",feet="Azimuth Gaiters +1"}

	-- Defense sets

	-- sets.defense.PDT = {main="Solstice",sub="Genmei shield",range="Dunna",
	--         head="Hike Khat",neck="Loricate Torque +1",ear1="Genmei Earring",ear2="Infused earring",
	--         body="Jhakri Robe +1",hands="Geomancy Mitaines +3",ring1="Vocane Ring",ring2="Defending Ring",
	--         back="Lifestream Cape",waist="Luminary Sash",legs="Assiduity Pants +1",feet="Azimuth Gaiters +1"}

	-- sets.defense.MDT = {main="Solstice",sub="Genmei shield",range="Dunna",
	--         head="Merlinic Hood",neck="Loricate Torque +1",ear1="Genmei Earring",ear2="Infused earring",
	--         body="Jhakri Robe +1",hands="Geomancy Mitaines +3",ring1="Vocane Ring",ring2="Defending Ring",
	--         back="Lifestream Cape",waist="Fucho-no-obi",legs="Assiduity Pants +1",feet="Azimuth Gaiters +1"}

	sets.Kiting = {feet="Geomancy Sandals +3"}

	-- sets.latent_refresh = {waist="Fucho-no-obi"}

	--------------------------------------
	-- Engaged sets
	--------------------------------------

	-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
	-- sets if more refined versions aren't defined.
	-- If you create a set with both offense and defense modes, the offense mode should be first.
	-- EG: sets.engaged.Dagger.Accuracy.Evasion

	-- Normal melee group
	-- sets.engaged = {Main="Solstice",sub="Genmei shield",ammo="Amar Cluster",
	--         head="Jhakri Coronal +1",neck="Asperity Necklace",ear1="Dignitary's Earring",ear2="Cessance Earring",
	--         body="Onca Suit",ring1="Petrov Ring",ring2="Apate Ring",
	--         back="Kayapa Cape",waist="Goading Belt"}

	-- sets.engaged.Acc = {Main="Solstice",sub="Genmei shield",ammo="Amar Cluster",
	--         head="Jhakri Coronal +1",neck="Asperity Necklace",ear1="Dignitary's Earring",ear2="Cessance Earring",
	--         body="Onca Suit",ring1="Petrov Ring",ring2="Apate Ring",
	--         back="Kayapa Cape",waist="Goading Belt"}

	-- sets.engaged.DW = {ammo="Amar Cluster",
	--         head="Jhakri Coronal +1",neck="Asperity Necklace",ear1="Dignitary's Earring",ear2="Cessance Earring",
	--         body="Onca Suit",ring1="Petrov Ring",ring2="Apate Ring",
	--         back="Kayapa Cape",waist="Goading Belt"}

	-- sets.engaged.DWAcc = {ammo="Hasty Pinion +1",
	--         head="Jhakri Coronal +1",neck="Asperity Necklace",ear1="Dignitary's Earring",ear2="Cessance Earring",
	--         body="Onca Suit",ring1="Petrov Ring",ring2="Apate Ring",
	--         back="Kayapa Cape",waist="Goading Belt"}

	-- sets.engaged.PDT = {Main="Solstice",sub="Genmei shield",ammo="Amar Cluster",
	--         head="Jhakri Coronal +1",neck="Loricate torque +1",ear1="Etiolation Earring",ear2="Static Earring",
	--         body="Witching Robe",hands="Geomancy Mitaines +3",ring1="Gelatinous ring +1",ring2="Defending Ring",
	--         back="Lifestream Cape",waist="Ninurta's Sash",legs=PDTlegs,feet="Azimuth Gaiters +1"}
		   
	-- sets.engaged.Staff = {main="Grioavolr",sub="Niobid Strap",ammo="Amar Cluster",
	--         head="Jhakri Coronal +1",neck="Clotharius Torque",ear1="Bladeborn Earring",ear2="Steelflash Earring",
	--         body="Onca Suit",ring1="Petrov Ring",ring2="Apate Ring",
	--         back="Kayapa Cape",waist="Ninurta's Sash"}
		   
	-- sets.engaged.Refresh = {Main="Solstice",sub="Genmei shield",ammo="Amar Cluster",
	--         head="Azimuth Hood +1",neck="Sanctity Necklace",ear1="Etiolation Earring",ear2="Infused Earring",
	--         body="Witching Robe",hands="Bagua Mitaines +1",ring1="Sheltered Ring",ring2="Paguroidea Ring",
	--         back=Petback,waist="Isa Belt",legs="Assiduity pants +1",feet="Serpentes sabots"}
--end
