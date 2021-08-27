
------------------------------------------------------------------------------------------------
---------------------------------------- Precast Sets ------------------------------------------
------------------------------------------------------------------------------------------------

sets.precast.JA['Spirit Surge'] = {body="Ptero. Mail +3"}
sets.precast.JA['Call Wyvern'] = {body="Ptero. Mail +3"}
sets.precast.JA['Ancient Circle'] = {legs="Vishap Brais +3"}

sets.precast.JA['Spirit Link'] = {
	head="Vishap Armet +3",
	hands="Pel. Vambraces +1",
	feet="Ptero. Greaves +3",
	ear1="Pratik Earring",
	}

sets.precast.JA['Steady Wing'] = {
	legs="Vishap Brais +3",
	feet="Ptero. Greaves +3",
	neck="Chanoix's Gorget",
	ear1="Lancer's Earring",
	ear2="Anastasi Earring",
	back="Updraft Mantle",
	}

sets.precast.JA['Jump'] = {
	ammo="Aurgelmir Orb +1",
	head="Flam. Zucchetto +2",
	body="Vishap Mail +3",
	hands="Vis. Fng. Gaunt. +3",
	legs="Ptero. Brais +3",
	feet="Ostro Greaves",
	neck="Anu Torque",
	ear1="Sherida Earring",
	ear2="Telos Earring",
	ring1={name="Chirich Ring +1", bag="wardrobe3"},
	ring2="Niqmaddu Ring",
	back=gear.DRG_JMP_Cape,
	waist="Ioskeha Belt +1",
	}

sets.precast.JA['High Jump'] = sets.precast.JA['Jump']
sets.precast.JA['Spirit Jump'] = sets.precast.JA['Jump']
sets.precast.JA['Soul Jump'] = set_combine(sets.precast.JA['Jump'], {body="Vishap Mail +3", hands="Emi. Gauntlets +1", legs=gear.Valo_STP_legs})
sets.precast.JA['Super Jump'] = {}

sets.precast.JA['Angon'] = {ammo="Angon", hands="Ptero. Fin. G. +3"}

-- Fast cast sets for spells
sets.precast.FC = {
	ammo="Sapience Orb", --2
	head="Carmine Mask +1", --14
	body="Sacro Breastplate", --10
	hands="Leyline Gloves", --8
	legs="Aya. Cosciales +2", --6
	feet="Carmine Greaves +1", --8
	neck="Orunmila's Torque", --5
	ear1="Loquacious Earring", --2
	ear2="Enchntr. Earring +1", --2
	ring2="Weather. Ring +1", --6(4)
	}

------------------------------------------------------------------------------------------------
------------------------------------- Weapon Skill Sets ----------------------------------------
------------------------------------------------------------------------------------------------

sets.precast.WS = {
	ammo="Knobkierrie",
	head=gear.Valo_WSD_head,
	body=gear.Valo_WSD_body,
	hands="Ptero. Fin. G. +3",
	legs="Vishap Brais +3",
	feet="Sulev. Leggings +2",
	neck="Fotia Gorget",
	ear1="Sherida Earring",
	ear2="Moonshade Earring",
	ring1="Regal Ring",
	ring2="Niqmaddu Ring",
	back=gear.DRG_WS2_Cape,
	waist="Fotia Belt",
	}

sets.precast.WS.Acc = set_combine(sets.precast.WS, {})

sets.precast.WS['Camlann\'s Torment'] = set_combine(sets.precast.WS, {
	neck="Dgn. Collar +1",
	ear2="Ishvara Earring",
	ring2="Epaminondas's Ring",
	waist="Sailfi Belt +1",
	})

sets.precast.WS['Camlann\'s Torment'].Acc = set_combine(sets.precast.WS['Camlann\'s Torment'], {})

sets.precast.WS['Drakesbane'] = set_combine(sets.precast.WS, {
	head="Flam. Zucchetto +2",
	body="Hjarrandi Breast.",
	hands="Flamma Manopolas +2",
	legs="Zoar Subligar +1",
	neck="Dgn. Collar +1",
	ear2="Brutal Earring",
	ring1="Begrudging Ring",
	back=gear.DRG_WS4_Cape,
	waist="Sailfi Belt +1",
	})

sets.precast.WS['Drakesbane'].Acc = set_combine(sets.precast.WS['Drakesbane'], {
	waist="Ioskeha Belt +1",
	})

sets.precast.WS['Geirskogul'] = set_combine(sets.precast.WS, {
	head="Lustratio Cap +1",
	legs="Lustr. Subligar +1",
	ear2="Mache Earring +1",
	ring2="Epaminondas's Ring",
	back=gear.DRG_WS3_Cape,
	})

sets.precast.WS['Geirskogul'].Acc = set_combine(sets.precast.WS['Geirskogul'], {})

sets.precast.WS['Impulse Drive'] = set_combine(sets.precast.WS['Camlann\'s Torment'], {
	head="Flam. Zucchetto +2",
	body="Hjarrandi Breast.",
	hands="Flamma Manopolas +2",
	legs="Pelt. Cuissots +1",
	neck="Dgn. Collar +1",
	ear2="Moonshade Earring",
	ring1="Begrudging Ring",
	ring2="Epaminondas's Ring",
	back=gear.DRG_WS4_Cape,
	waist="Sailfi Belt +1",
	})

sets.precast.WS['Impulse Drive'].Acc = set_combine(sets.precast.WS['Impulse Drive'], {
	legs="Vishap Brais +3",
	waist="Ioskeha Belt +1",
	})

sets.precast.WS['Impulse Drive'].HighTP = set_combine(sets.precast.WS['Impulse Drive'], {
	head=gear.Valo_WSD_head,
	body=gear.Valo_WSD_body,
	hands="Ptero. Fin. G. +3",
	legs="Vishap Brais +3",
	back=gear.DRG_WS2_Cape,
	ear2="Ishvara Earring",
	ring1="Regal Ring",
	})

sets.precast.WS['Sonic Thrust'] = sets.precast.WS['Camlann\'s Torment']
sets.precast.WS['Sonic Thrust'].Acc = sets.precast.WS['Camlann\'s Torment'].Acc

sets.precast.WS['Stardiver'] = set_combine(sets.precast.WS, {
	head="Flam. Zucchetto +2",
	body=gear.Valo_TP_body,
	hands="Sulev. Gauntlets +2",
	neck="Fotia Gorget",
	legs="Sulev. Cuisses +2",
	feet="Flam. Gambieras +2",
	back=gear.DRG_WS1_Cape,
	})

sets.precast.WS['Stardiver'].Acc = set_combine(sets.precast.WS['Stardiver'], {
	head="Ptero. Armet +3",
	feet="Ptero. Greaves +3",
	})

sets.precast.WS['Raiden Thrust'] = set_combine(sets.precast.WS, {
	ammo="Pemphredo Tathlum",
	body="Carm. Sc. Mail +1",
	hands="Carmine Fin. Ga. +1",
	ear1="Crematio Earring",
	ear2="Friomisi Earring",
	ring1="Shiva Ring +1",
	back="Argocham. Mantle",
	})

sets.precast.WS['Thunder Thrust'] = sets.precast.WS['Raiden Thrust']

sets.precast.WS['Leg Sweep'] = set_combine(sets.precast.WS, {
	ammo="Pemphredo Tathlum",
	head="Flam. Zucchetto +2",
	body="Flamma Korazin +2",
	hands="Flam. Manopolas +2",
	legs="Flamma Dirs +2",
	feet="Flam. Gambieras +2",
	ear1="Digni. Earring",
	ring1="Metamor. Ring +1",
	ring2="Weather. Ring +1",
	})

sets.WSDayBonus = {head="Gavialis Helm"}

------------------------------------------------------------------------------------------------
---------------------------------------- Midcast Sets ------------------------------------------
------------------------------------------------------------------------------------------------

sets.midcast.HealingBreath = {
	head="Ptero. Armet +3",
	body=gear.Acro_Pet_body,
	hands=gear.Acro_Pet_hands,
	legs="Vishap Brais +3",
	feet="Ptero. Greaves +3",
	neck="Dgn. Collar +1",
	ear1="Lancer's Earring",
	ear2="Anastasi Earring",
	back="Updraft Mantle",
	waist="Glassblower's Belt",
	}

sets.midcast.ElementalBreath = {
	head="Ptero. Armet +3",
	body=gear.Acro_Pet_body,
	hands=gear.Acro_Pet_hands,
	neck="Lancer's Torque",
	ear1="Enmerkar Earring",
	ear2="Dragoon's Earring",
	ring1="C. Palug Ring",
	back="Updraft Mantle",
	waist="Glassblower's Belt",
	}

------------------------------------------------------------------------------------------------
----------------------------------------- Idle Sets --------------------------------------------
------------------------------------------------------------------------------------------------

sets.idle = {
	ammo="Staunch Tathlum +1", --3/3
	head="Hjarrandi Helm", --10/10
	body="Sacro Breastplate",
	hands="Sulev. Gauntlets +2", --5/5
	legs="Carmine Cuisses +1",
	feet="Ptero. Greaves +3",
	neck="Bathy Choker +1",
	ear1="Eabani Earring",
	ear2="Sanare Earring",
	ring1={name="Chirich Ring +1", bag="wardrobe3"},
	ring2={name="Chirich Ring +1", bag="wardrobe4"},
	back="Moonlight Cape", --6/6
	waist="Flume Belt +1", --4/0
	}

sets.idle.DT = set_combine(sets.idle, {
	ammo="Staunch Tathlum +1", --3/3
	body="Hjarrandi Breast.", --12/12
	head="Hjarrandi Helm", --10/10
	hands="Flam. Manopolas +2",
	feet="Ptero. Greaves +3",
	neck="Loricate Torque +1", --6/6
	ear1="Sanare Earring",
	ear2="Anastasi Earring",
	ring1="Moonlight Ring", --5/5
	ring2="Defending Ring", --10/10
	waist="Carrier's Sash",
	})

sets.idle.Pet = set_combine(sets.idle, {
	body="Vishap Mail +3",
	hands="Ptero. Fin. G. +3",
	feet="Ptero. Greaves +3",
	neck="Dgn. Collar +1",
	ear1="Enmerkar Earring",
	ear2="Anastasi Earring",
	waist="Isa Belt",
	})

sets.idle.DT.Pet = set_combine(sets.idle.Pet, {
	head="Hjarrandi Helm", --10/10
	body="Emicho Haubert +1",
	legs="Ptero. Brais +3",
	neck="Dgn. Collar +1",
	ring1="Moonlight Ring", --5/5
	ring2="Defending Ring", --10/10
	back="Moonlight Cape", --6/6
	})

sets.idle.Town = set_combine(sets.idle, {
	ammo="Aurgelmir Orb +1",
	head="Ptero. Armet +3",
	hands="Ptero. Fin. G. +3",
	feet="Ptero. Greaves +3",
	neck="Dgn. Collar +1",
	ear1="Sherida Earring",
	ear2="Telos Earring",
	back=gear.DRG_TP_Cape,
	waist="Ioskeha Belt +1",
	})

sets.idle.Weak = sets.idle.DT
sets.Kiting = {legs="Carmine Cuisses +1"}


------------------------------------------------------------------------------------------------
---------------------------------------- Defense Sets ------------------------------------------
------------------------------------------------------------------------------------------------

sets.defense.PDT = sets.idle.DT
sets.defense.MDT = sets.idle.DT

------------------------------------------------------------------------------------------------
---------------------------------------- Engaged Sets ------------------------------------------
------------------------------------------------------------------------------------------------

sets.engaged = {
	ammo="Aurgelmir Orb +1",
	head="Flam. Zucchetto +2",
	body=gear.Valo_TP_body,
	hands="Sulev. Gauntlets +2",
	legs=gear.Valo_TP_legs,
	feet="Flam. Gambieras +2",
	neck="Anu Torque",
	ear1="Sherida Earring",
	ear2="Brutal Earring",
	ring1={name="Chirich Ring +1", bag="wardrobe3"},
	ring2="Niqmaddu Ring",
	back=gear.DRG_TP_Cape,
	waist="Sailfi Belt +1",
	}

sets.engaged.LowAcc = set_combine(sets.engaged, {
	neck="Combatant's Torque",
	ear2="Cessance Earring",
	waist="Ioskeha Belt +1",
	})

sets.engaged.MidAcc = set_combine(sets.engaged.LowAcc, {
	ammo="Voluspa Tathlum",
	neck="Shulmanu Collar",
	ring1="Flamma Ring",
	ear2="Telos Earring",
	})

sets.engaged.HighAcc = set_combine(sets.engaged.MidAcc, {
	ammo="Amar Cluster",
	body="Emicho Haubert +1",
	hands="Emi. Gauntlets +1",
	legs=gear.Valo_STP_legs,
	ring1="Regal Ring",
	})

sets.engaged.MaxAcc = set_combine(sets.engaged.HighAcc, {
	body="Vishap Mail +3",
	head="Vishap Armet +3",
	legs="Ptero. Brais +3",
	feet="Vishap Greaves +3",
	ear2="Mache Earring +1",
	ring1="Flamma Ring",
	})

sets.engaged.STP = set_combine(sets.engaged, {
	hands=gear.Acro_STP_hands,
	legs=gear.Valo_STP_legs,
	ear2="Telos Earring",
	back=gear.DRG_JMP_Cape,
	})


------------------------------------------------------------------------------------------------
---------------------------------------- Hybrid Sets -------------------------------------------
------------------------------------------------------------------------------------------------

sets.engaged.Hybrid = {
	neck="Loricate Torque +1", --6/6
	body="Vishap Mail +3",
	ring1="Moonlight Ring", --5/5
	ring2="Defending Ring", --10/10
	}

sets.engaged.DT = set_combine(sets.engaged, sets.engaged.Hybrid)
sets.engaged.LowAcc.DT = set_combine(sets.engaged.LowAcc, sets.engaged.Hybrid)
sets.engaged.MidAcc.DT = set_combine(sets.engaged.MidAcc, sets.engaged.Hybrid)
sets.engaged.HighAcc.DT = set_combine(sets.engaged.HighAcc, sets.engaged.Hybrid)
sets.engaged.STP.DT = set_combine(sets.engaged.STP, sets.engaged.Hybrid)

------------------------------------------------------------------------------------------------
---------------------------------------- Special Sets ------------------------------------------
------------------------------------------------------------------------------------------------

sets.buff.Doom = {
	neck="Nicander's Necklace", --20
	ring1={name="Eshmun's Ring", bag="wardrobe3"}, --20
	ring2={name="Eshmun's Ring", bag="wardrobe4"}, --20
	waist="Gishdubar Sash", --10
	}

-- sets.CP = {back="Mecisto. Mantle"}
--sets.Reive = {neck="Ygnas's Resolve +1"}
