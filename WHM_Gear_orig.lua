-- Precast Sets
sets.precast = {}
-- Fast cast sets for spells

sets.precast.FC = {
--  /SCH --3
	main="C. Palug Hammer", --7
	sub="Chanter's Shield", --3
	ammo="Impatiens", --(2)
	head="Volte Beret", --6
	body="Inyanga Jubbah +2", --14
	hands="Gende. Gages +1", --7
	legs="Volte Brais", --8
	feet="Volte Gaiters", --6
	neck="Clr. Torque +2", --10
	ear1="Malignance Earring", --4
	ear2="Enchntr. Earring +1", --2
	ring1="Lebeche Ring", --(2)
	ring2="Weather. Ring +1", --6(4)
	back="Perimede Cape", --(4)
	waist="Embla Sash", --5
	}

sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {
	waist="Siegel Sash",
	})

sets.precast.FC.Cure = set_combine(sets.precast.FC, {
	ammo="Impatiens", --(2)
	head="Piety Cap +3", --15
	feet="Kaykaus Boots +1", --7
	ring1="Lebeche Ring", --(2)
	ring2="Weather. Ring +1", --6(4)
	back="Perimede Cape", --(4)
	waist="Shinjutsu-no-Obi +1", --5
	})

sets.precast.FC.Curaga = sets.precast.FC.Cure
sets.precast.FC.CureSolace = sets.precast.FC.Cure
sets.precast.FC.Impact = set_combine(sets.precast.FC, {head=empty, body="Twilight Cloak", waist="Shinjutsu-no-Obi +1"})
sets.precast.FC.Dispelga = set_combine(sets.precast.FC, {main="Daybreak", sub="Ammurapi Shield"})

-- Precast sets to enhance JAs
--sets.precast.JA.Benediction = {}

-- Weaponskill sets
sets.precast.WS = {}

-- Default set for any weaponskill that isn't any more specifically defined
sets.precast.WS = {
	--ammo="Floestone",
	head="Piety Cap +3",
	body="Piety Briault +3",
	hands="Piety Mitts +3",
	legs="Piety Pantaln. +3",
	feet="Piety Duckbills +2",
	neck="Fotia Gorget",
	ear1="Moonshade Earring",
	ear2="Ishvara Earring",
	ring1="Epaminondas's Ring",
	ring2="Shukuyu Ring",
	back=gear.WHM_WS_Cape,
	waist="Fotia Belt",
	}

sets.precast.WS['Black Halo'] = set_combine(sets.precast.WS, {
	neck="Caro Necklace",
	})

sets.precast.WS['Hexa Strike'] = set_combine(sets.precast.WS, {
	head="Blistering Sallet +1",
	ring2="Begrudging Ring",
	back=gear.WHM_DA_Cape,
	})

sets.precast.WS['Flash Nova'] = set_combine(sets.precast.WS, {
	ammo="Ghastly Tathlum +1",
	head=empty;
	body="Cohort Cloak +1",
	legs="Kaykaus Tights +1",
	})

-- Midcast Sets

sets.midcast.FC = sets.precast.FC

sets.midcast.ConserveMP = {
	--main="Sucellus",
	--sub="Thuellaic Ecu +1",
	head="Vanya Hood",
	--body="Vedic Coat",
	--hands="Shrieker's Cuffs",
	--legs="Vanya Slops",
	feet="Kaykaus Boots +1",
	ear2="Mendi. Earring",
	back="Solemnity Cape",
	waist="Shinjutsu-no-Obi +1",
	}

-- Cure sets

sets.midcast.CureSolace = {
	main="Raetic Rod +1", --23(+10)
	sub="Sors Shield", --3/(-5)
	ammo="Pemphredo Tathlum ",
	head="Kaykaus Mitra +1", --11(+2)/(-6)
	body="Ebers Bliaud +1",
	hands="Theophany Mitts +3", --(+4)/(-7)
	legs="Ebers Pant. +1",
	feet="Kaykaus Boots +1", --11(+2)/(-12)
	neck="Clr. Torque +2", --10/(-25)
	ear1="Glorious Earring", -- (+2)/(-5)
	ear2="Magnetic Earring",
	ring1="Lebeche Ring", --3/(-5)
	ring2="Weather. Ring +1",
	back=gear.WHM_Cure_Cape, --10
	waist="Shinjutsu-no-Obi +1",
  }

sets.midcast.CureSolaceWeather = set_combine(sets.midcast.CureSolace, {
	ear2="Nourish. Earring +1", --7
	back="Twilight Cape",
	waist="Hachirin-no-Obi",
	})

sets.midcast.CureNormal = set_combine(sets.midcast.CureSolace, {
	body="Theo. Briault +3", --0(+6)/(-6)
	})

sets.midcast.CureWeather = set_combine(sets.midcast.CureNormal, {
	hands="Kaykaus Cuffs +1", --11/(-6)
	ear2="Nourish. Earring +1", --7
	back="Twilight Cape",
	waist="Hachirin-no-Obi",
	})

sets.midcast.CuragaNormal = set_combine(sets.midcast.CureNormal, {
	body="Theo. Briault +3", --0(+6)/(-6)
	ring1={name="Stikini Ring +1", bag="wardrobe3"},
	ring2="Metamor. Ring +1",
	waist="Luminary Sash",
	})

sets.midcast.CuragaWeather = {
	body="Theo. Briault +3", --0(+6)/(-6)
	hands="Kaykaus Cuffs +1", --11/(-6)
	ring1={name="Stikini Ring +1", bag="wardrobe3"},
	ring2="Metamor. Ring +1",
	back="Twilight Cape",
	waist="Hachirin-no-Obi",
	}

--sets.midcast.CureMelee = sets.midcast.CureSolace

sets.midcast.StatusRemoval = {
	main="Yagrush",
	sub="Chanter's Shield",
	head="Vanya Hood",
	body="Inyanga Jubbah +2",
	hands="Fanatic Gloves",
	legs="Aya. Cosciales +2",
	feet="Medium's Sabots",
	neck="Orunmila's Torque",
	ear1="Loquacious Earring",
	ear2="Etiolation Earring",
	ring1="Kishar Ring",
	ring2="Weather. Ring +1",
	back=gear.WHM_FC_Cape,
	waist="Embla Sash",
	}

sets.midcast.Cursna = set_combine(sets.midcast.StatusRemoval, {
	main="Yagrush",
	sub="Chanter's Shield",
	body="Ebers Bliaud +1",
	hands="Fanatic Gloves", --15
	legs="Th. Pant. +3", --21
	feet="Vanya Clogs", --5
	--feet="Gende. Galosh. +1", --10
	neck="Debilis Medallion", --15
	ear1="Beatific Earring",
	ear2="Meili Earring",
	ring1="Haoma's Ring", --15
	ring2="Menelaus's Ring", --20
	back=gear.WHM_FC_Cape, --25
	waist="Bishop's Sash",
	})

sets.midcast.Erase = set_combine(sets.midcast.StatusRemoval, {neck="Clr. Torque +2"})

-- 110 total Enhancing Magic Skill; caps even without Light Arts
sets.midcast['Enhancing Magic'] = {
	main="Gada",
	sub="Ammurapi Shield",
	head=gear.Telchine_ENH_head,
	body=gear.Telchine_ENH_body,
	hands="Dynasty Mitts",
	legs=gear.Telchine_ENH_legs,
	feet="Theo. Duckbills +3",
	neck="Incanter's Torque",
	ear1="Mimir Earring",
	ear2="Andoaa Earring",
	ring1={name="Stikini Ring +1", bag="wardrobe3"},
	ring2={name="Stikini Ring +1", bag="wardrobe4"},
	back="Fi Follet Cape +1",
	waist="Olympus Sash",
	}

sets.midcast.EnhancingDuration = {
	main="Gada",
	sub="Ammurapi Shield",
	head=gear.Telchine_ENH_head,
	body=gear.Telchine_ENH_body,
	hands=gear.Telchine_ENH_hands,
	legs=gear.Telchine_ENH_legs,
	feet="Theo. Duckbills +3",
	waist="Embla Sash",
	}

sets.midcast.Regen = set_combine(sets.midcast.EnhancingDuration, {
	main="Bolelabunga",
	sub="Ammurapi Shield",
	head="Inyanga Tiara +2",
	body="Piety Briault +3",
	hands=gear.Telchine_ENH_hands,
	legs=gear.Telchine_ENH_legs,
	feet=gear.Telchine_ENH_feet,
	})

sets.midcast.RegenDuration = set_combine(sets.midcast.EnhancingDuration, {
	body=gear.Telchine_ENH_body,
	hands="Ebers Mitts +1",
	legs="Th. Pant. +3",
	feet="Theo. Duckbills +3",
	})

sets.midcast.Refresh = set_combine(sets.midcast.EnhancingDuration, {
	waist="Gishdubar Sash",
	back="Grapevine Cape",
	})

sets.midcast.Stoneskin = set_combine(sets.midcast.EnhancingDuration, {
	neck="Nodens Gorget",
	waist="Siegel Sash",
	})

sets.midcast.Aquaveil = set_combine(sets.midcast.EnhancingDuration, {
	main="Vadose Rod",
	sub="Ammurapi Shield",
	ammo="Staunch Tathlum +1",
	hands="Regal Cuffs",
	ear1="Halasz Earring",
	ear2="Magnetic Earring",
	ring1="Freke Ring",
	ring2="Evanescence Ring",
	waist="Emphatikos Rope",
	})

sets.midcast.Auspice = set_combine(sets.midcast.EnhancingDuration, {
	feet="Ebers Duckbills +1",
	})

sets.midcast.BarElement = set_combine(sets.midcast['Enhancing Magic'], {
	main="Beneficus",
	sub="Ammurapi Shield",
	head="Ebers Cap +1",
	body="Ebers Bliaud +1",
	hands="Ebers Mitts +1",
	legs="Piety Pantaln. +3",
	feet="Ebers Duckbills +1",
	})

sets.midcast.BoostStat = set_combine(sets.midcast['Enhancing Magic'], {
	feet="Ebers Duckbills +1"
	})

sets.midcast.Protect = set_combine(sets.midcast.ConserveMP, sets.midcast.EnhancingDuration, {
	ring1="Sheltered Ring",
	})

sets.midcast.Protectra = sets.midcast.Protect
sets.midcast.Shell = sets.midcast.Protect
sets.midcast.Shellra = sets.midcast.Protect

sets.midcast['Divine Magic'] = {
	main="Yagrush",
	sub="Ammurapi Shield",
	ammo="Ghastly Tathlum +1",
	head="Theophany Cap +3",
	body="Theo. Briault +3",
	hands="Piety Mitts +3",
	legs="Chironic Hose",
	feet="Theo. Duckbills +3",
	neck="Erra Pendant",
	ear1="Digni. Earring",
	ear2="Regal Earring",
	ring1={name="Stikini Ring +1", bag="wardrobe3"},
	ring2={name="Stikini Ring +1", bag="wardrobe4"},
	back="Aurist's Cape +1",
	waist="Acuity Belt +1",
	}

sets.midcast.Banish = set_combine(sets.midcast['Divine Magic'], {
	main="Daybreak",
	sub="Ammurapi Shield",
	head=empty;
	body="Cohort Cloak +1",
	hands="Fanatic Gloves",
	legs="Kaykaus Tights +1",
	neck="Sanctity Necklace",
	ear1="Malignance Earring",
	ring1="Freke Ring",
	ring2="Weather. Ring +1",
	waist="Refoccilation Stone",
	})

sets.midcast.Holy = sets.midcast.Banish

sets.midcast['Dark Magic'] = {
	main="Rubicundity",
	sub="Ammurapi Shield",
	ammo="Pemphredo Tathlum",
	head="Pixie Hairpin +1",
	body="Theo. Briault +3",
	hands="Theophany Mitts +3",
	legs="Chironic Hose",
	feet="Theo. Duckbills +3",
	neck="Erra Pendant",
	ear1="Malignance Earring",
	ear2="Mani Earring",
	ring1="Evanescence Ring",
	ring2="Archon Ring",
	back="Aurist's Cape +1",
	waist="Fucho-no-Obi",
	}

-- Custom spell classes
sets.midcast.MndEnfeebles = {
	main="Yagrush",
	sub="Ammurapi Shield",
	ammo="Pemphredo Tathlum",
	head=empty;
	body="Cohort Cloak +1",
	hands="Regal Cuffs",
	legs="Chironic Hose",
	feet="Theo. Duckbills +3",
	neck="Erra Pendant",
	ear1="Malignance Earring",
	ear2="Vor Earring",
	ring1="Kishar Ring",
	ring2={name="Stikini Ring +1", bag="wardrobe4"},
	back="Aurist's Cape +1",
	waist="Luminary Sash",
	}

sets.midcast.IntEnfeebles = set_combine(sets.midcast.MndEnfeebles, {
	waist="Acuity Belt +1",
	})

sets.midcast.Dispelga = set_combine(sets.midcast.IntEnfeebles, {main="Daybreak", sub="Ammurapi Shield"})

sets.midcast.Impact = {
	main="Yagrush",
	sub="Ammurapi Shield",
	head=empty,
	body="Twilight Cloak",
	hands="Raetic Bangles +1",
	legs="Th. Pant. +3",
	feet="Theo. Duckbills +3",
	ring1="Freke Ring",
	ring2="Archon Ring",
	}

-- Initializes trusts at iLvl 119
sets.midcast.Trust = sets.precast.FC

-- Sets to return to when not performing an action.

-- Resting sets
sets.resting = {
	main="Chatoyant Staff",
	waist="Shinjutsu-no-Obi +1",
	}

-- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)
sets.idle = {
	main="Daybreak",
	sub="Genmei Shield",
	ammo="Homiliary",
	head="Volte Beret",
	body="Piety Briault +3",
	--hands="Raetic Bangles +1",
	legs="Volte Brais",
	feet="Inyan. Crackows +2",
	neck="Bathy Choker +1",
	ear1="Eabani Earring",
	ear2="Sanare Earring",
	ring1={name="Stikini Ring +1", bag="wardrobe3"},
	ring2={name="Stikini Ring +1", bag="wardrobe4"},
	back="Moonlight Cape",
	waist="Carrier's Sash",
	}

sets.idle.DT = set_combine(sets.idle, {
	main="Daybreak",
	sub="Genmei Shield", --10/0
	ammo="Staunch Tathlum +1", --3/3
	head="Aya. Zucchetto +2", --3/3
	hands="Gende. Gages +1", --4/4
	neck="Loricate Torque +1", --6/6
	ear1="Odnowa Earring +1", --3/5
	ring1="Gelatinous Ring +1", --7/(-1)
	ring2="Defending Ring", --10/10
	back="Moonlight Cape", --6/6
	waist="Carrier's Sash",
	})

sets.idle.MEva = set_combine(sets.idle.DT, {
	main="Daybreak",
	sub="Genmei Shield",
	ammo="Staunch Tathlum +1",
	head="Inyanga Tiara +2",
	body="Inyanga Jubbah +2",
	--hands="Raetic Bangles +1",
	legs="Inyanga Shalwar +2",
	feet="Inyan. Crackows +2",
	neck="Warder's Charm +1",
	ear1="Eabani Earring",
	ear2="Sanare Earring",
	ring1="Purity Ring",
	ring2="Inyanga Ring",
	back=gear.WHM_FC_Cape,
	waist="Carrier's Sash",
	})

sets.idle.Town = set_combine(sets.idle, {
	main="Yagrush",
	sub="Ammurapi Shield",
	head="Kaykaus Mitra +1",
	body="Kaykaus Bliaut +1",
	legs="Kaykaus Tights +1",
	feet="Kaykaus Boots +1",
	neck="Clr. Torque +2",
	ear1="Glorious Earring",
	ear2="Regal Earring",
	})

-- Defense sets

sets.defense.PDT = sets.idle.DT
sets.defense.MDT = sets.idle.DT

sets.Kiting = {feet="Herald's Gaiters"}
sets.latent_refresh = {waist="Fucho-no-obi"}

-- Engaged sets

-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
-- sets if more refined versions aren't defined.
-- If you create a set with both offense and defense modes, the offense mode should be first.
-- EG: sets.engaged.Dagger.Accuracy.Evasion

-- Basic set for if no TP weapon is defined.
sets.engaged = {
	main="Yagrush",
	sub="Ammurapi Shield",
	head="Blistering Sallet +1",
	body="Ayanmo Corazza +2",
	hands=gear.Telchine_STP_hands,
	legs="Aya. Cosciales +2",
	feet=gear.Chironic_QA_feet,
	neck="Combatant's Torque",
	ear1="Cessance Earring",
	ear2="Telos Earring",
	ring1={name="Chirich Ring +1", bag="wardrobe3"},
	ring2={name="Chirich Ring +1", bag="wardrobe4"},
	back=gear.WHM_DA_Cape,
	waist="Windbuffet Belt +1",
	}

sets.engaged.Acc = set_combine(sets.engaged, {
	hands="Gazu Bracelet +1",
	feet="Volte Boots",
	waist="Olseni Belt",
	})

sets.engaged.DW = {
	main="Yagrush",
	sub="C. Palug Hammer",
	head="Blistering Sallet +1",
	body="Ayanmo Corazza +2",
	hands=gear.Telchine_STP_hands,
	legs="Aya. Cosciales +2",
	feet=gear.Chironic_QA_feet,
	neck="Combatant's Torque",
	ear1="Cessance Earring",
	ear2="Suppanomimi", --5
	ring1={name="Chirich Ring +1", bag="wardrobe3"},
	ring2={name="Chirich Ring +1", bag="wardrobe4"},
	back=gear.WHM_DA_Cape,
	waist="Shetal Stone", --6
	}

sets.engaged.DW.Acc = set_combine(sets.engaged.DW, {
	sub="Sindri",
	hands="Gazu Bracelet +1",
	feet="Volte Boots",
	})

sets.engaged.Aftermath = {
	head="Aya. Zucchetto +2",
	hands=gear.Telchine_STP_hands,
	legs="Aya. Cosciales +2",
	feet=gear.Telchine_STP_feet,
	ring1={name="Chirich Ring +1", bag="wardrobe3"},
	ring2={name="Chirich Ring +1", bag="wardrobe4"},
	back=gear.WHM_STP_Cape,
	}

-- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
sets.buff['Divine Caress'] = {hands="Ebers Mitts +1", back="Mending Cape"}
sets.buff['Devotion'] = {head="Piety Cap +3"}
sets.buff.Sublimation = {waist="Embla Sash"}

sets.buff.Doom = {
	neck="Nicander's Necklace", --20
	ring1={name="Eshmun's Ring", bag="wardrobe3"}, --20
	ring2={name="Eshmun's Ring", bag="wardrobe4"}, --20
	waist="Gishdubar Sash", --10
	}

sets.Obi = {waist="Hachirin-no-Obi"}
-- sets.CP = {back="Mecisto. Mantle"}
