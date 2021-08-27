-- Precast Sets
sets.precast = {}
-- Fast cast sets for spells
-- Gear 40/80 + SCH (100 - 40 = 60 / 10) = 46
sets.precast.FC = {
	main="Sucellus",				--  5
	head="Nahtirah Hat",			-- 10 																	
	body="Inyanga Jubbah +1", 		-- 13
	feet="Regal Pumps +1", 			--  6
	left_ear="Malignance Earring", 	--  4
	right_ear="Loquac. Earring",	--  2
}

sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {
	waist="Siegel Sash",
})

-- Cure FC 40
sets.precast.FC.Cure = set_combine(sets.precast.FC, {
	main="Daybreak", 
	sub="Sors Shield", 				--  5	
	hands="Vanya Cuffs",			--  7
	legs="Ebers Pant. +1",			-- 13
	feet="Vanya Clogs",				-- 15
})

sets.precast.FC.Curaga = sets.precast.FC.Cure
sets.precast.FC.CureSolace = sets.precast.FC.Cure
sets.precast.FC.Impact = set_combine(sets.precast.FC, {
	head=empty, 
	body="Twilight Cloak", 
})

sets.precast.FC.Dispelga = set_combine(sets.precast.FC, {
	main="Daybreak", 
	sub="Ammurapi Shield"
})

-- Precast sets to enhance JAs
--sets.precast.JA.Benediction = {}

-- Weaponskill sets
sets.precast.WS = {}

--[[ Default set for any weaponskill that isn't any more specifically defined
sets.precast.WS = {
	--ammo="Floestone",
	head="Piety Cap +3",
	body="Piety Briault +3",
	hands="Piety Mitts +3",
	legs="Piety Pantaln. +3",
	feet="Piety Duckbills +2",
	neck="Fotia Gorget",
	left_ear="Moonshade Earring",
	right_ear="Ishvara Earring",
	left_ring="Epaminondas's Ring",
	right_ring="Shukuyu Ring",
	back=gear.WHM_WS_Cape,
	waist="Fotia Belt",
	}

sets.precast.WS['Black Halo'] = set_combine(sets.precast.WS, {
	neck="Caro Necklace",
	})

sets.precast.WS['Hexa Strike'] = set_combine(sets.precast.WS, {
	head="Blistering Sallet +1",
	right_ring="Begrudging Ring",
	back=gear.WHM_DA_Cape,
	})

sets.precast.WS['Flash Nova'] = set_combine(sets.precast.WS, {
	ammo="Ghastly Tathlum +1",
	head=empty;
	body="Cohort Cloak +1",
	legs="Kaykaus Tights +1",
	})
]]

-- Midcast Sets
sets.midcast = {}
sets.midcast.FC = sets.precast.FC

sets.midcast.ConserveMP = {
	head="Vanya Hood",
	legs="Ebers Pant. +1",
	waist="Luminary Sash",
}

-- Cure sets -- Potency I / II
sets.midcast.CureSolace = {
	main="Queller Rod",			--  0 /  2
	sub="Sors Shield", 			--  3 
	head="Vanya Hood",			-- 10
	body="Vanya Robe",		
	hands="Vanya Cuffs",	
	legs="Ebers Pant. +1",		
	feet="Vanya Clogs",			-- 10
	neck="Incanter's Torque",	
	waist="Luminary Sash",
	left_ear="Roundel Earring",
	right_ear="Regal Earring",
	left_ring="Stikini Ring",
	right_ring="Inyanga Ring"
}

sets.midcast.CureSolaceWeather = set_combine(sets.midcast.CureSolace, {
	main="Chatoyant Staff",
	sub="Enki Strap",
	left_ear="Nourish. Earring",
	back="Twilight Cape"
})

sets.midcast.CureNormal = sets.midcast.CureSolace

sets.midcast.CureWeather = sets.midcast.CureSolaceWeather

sets.midcast.CuragaNormal = sets.midcast.CureNormal

sets.midcast.CuragaWeather = sets.midcast.CureWeather

--sets.midcast.CureMelee = sets.midcast.CureSolace

sets.midcast.StatusRemoval = {
	head="Vanya Hood",
	body="Inyanga Jubbah +1",
	feet="Vanya Clogs", --5
}

sets.midcast.Cursna = sets.midcast.StatusRemoval

sets.midcast.Erase = set_combine(sets.midcast.StatusRemoval, {
	neck="Clr. Torque"
})

sets.midcast['Enhancing Magic'] = {
	main="Beneficus",
	sub="Ammurapi Shield",
	head="Inyanga Tiara +1",
	body="Inyanga Jubbah +1",
	hands="Inyanga Dastanas +1",
	neck="Incanter's Torque",
	waist="Olympus Sash",
}

sets.midcast.EnhancingDuration = sets.midcast['Enhancing Magic']

sets.midcast.Regen = set_combine(sets.midcast.EnhancingDuration, {
	head="Inyanga Tiara +1",
})

sets.midcast.RegenDuration = sets.midcast.EnhancingDuration

sets.midcast.Refresh = sets.midcast.EnhancingDuration

sets.midcast.Stoneskin = set_combine(sets.midcast.EnhancingDuration, {
	neck="Nodens Gorget",
	waist="Siegel Sash",
})

sets.midcast.Aquaveil = set_combine(sets.midcast.EnhancingDuration, {
	left_ear="Halasz Earring",
	right_ring="Evanescence Ring",
})

sets.midcast.Auspice = sets.midcast.EnhancingDuration

sets.midcast.BarElement = sets.midcast['Enhancing Magic']

sets.midcast.BoostStat = sets.midcast['Enhancing Magic']

sets.midcast.Protect = set_combine(sets.midcast.ConserveMP, sets.midcast.EnhancingDuration, {})

sets.midcast.Protectra = sets.midcast.Protect
sets.midcast.Shell = sets.midcast.Protect
sets.midcast.Shellra = sets.midcast.Protect

sets.midcast['Divine Magic'] = {
	main="Daybreak", 
	sub="Ammurapi Shield",
	neck="Erra Pendant",
	right_ear="Regal Earring",
	left_ring="Stikini Ring",
}

sets.midcast.Banish = set_combine(sets.midcast['Divine Magic'], {
	main="Daybreak",
	sub="Ammurapi Shield",
	left_ear="Malignance Earring"
})

sets.midcast.Holy = sets.midcast.Banish

sets.midcast['Dark Magic'] = {
	main="Daybreak", 
	sub="Ammurapi Shield",
	head="Pixie Hairpin +1",
	neck="Erra Pendant",
	left_ear="Malignance Earring",
	right_ear="Abyssal Earring",
	right_ring="Evanescence Ring",
}

-- Custom spell classes
sets.midcast.MndEnfeebles = {
	sub="Ammurapi Shield",
	body="Vanya Robe",
	hands="Regal Cuffs",
	neck="Erra Pendant",
	left_ear="Malignance Earring",
	right_ring="Stikini Ring",
	waist="Luminary Sash",
}

sets.midcast.IntEnfeebles = sets.midcast.MndEnfeebles

sets.midcast.Dispelga = set_combine(sets.midcast.IntEnfeebles, {
	main="Daybreak", 
	sub="Ammurapi Shield"
})

sets.midcast.Impact = {
	sub="Ammurapi Shield",
	head=empty,
	body="Twilight Cloak",
}

-- Initializes trusts at iLvl 119
sets.midcast.Trust = sets.precast.FC

-- Sets to return to when not performing an action.

-- Resting sets
sets.resting = {
	main="Chatoyant Staff",
	sub  = "Enki Strap"
--	waist="Shinjutsu-no-Obi +1",
}

-- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)
sets.idle = {
	main="Daybreak",
	sub="Genmei Shield",
	ammo="Hydrocera",
	head="Inyanga Tiara +1",
	body="Inyanga Jubbah +1",
	hands="Inyanga Dastanas +1",
	legs="Volte Brais",
	feet="Herald's Gaiters",
	neck="Loricate Torque +1",
	left_ear="Dominance Earring",
	right_ear="Regal Earring",
	left_ring="Stikini Ring",
	right_ring="Inyanga Ring",
	back="Mending Cape",
	waist="Porous Rope",
}

sets.idle.DT = set_combine(sets.idle, {
	main="Malignance Pole",
	sub="Enki Strap",
--	head="Aya. Zucchetto +2", 
--	left_ear="Odnowa Earring +1", 
	left_ring="Wardern's Ring", 
	right_ring="Defending Ring", 
})

sets.idle.MEva = sets.idle.DT

sets.idle.Town = sets.idle

-- Defense sets

sets.defense.PDT = sets.idle.DT
sets.defense.MDT = sets.idle.DT

sets.Kiting = {feet="Herald's Gaiters"}
--sets.latent_refresh = {waist="Fucho-no-obi"}

-- Engaged sets

-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
-- sets if more refined versions aren't defined.
-- If you create a set with both offense and defense modes, the offense mode should be first.
-- EG: sets.engaged.Dagger.Accuracy.Evasion

--[[ Basic set for if no TP weapon is defined.
sets.engaged = {
	main="Yagrush",
	sub="Ammurapi Shield",
	head="Blistering Sallet +1",
	body="Ayanmo Corazza +2",
	hands=gear.Telchine_STP_hands,
	legs="Aya. Cosciales +2",
	feet=gear.Chironic_QA_feet,
	neck="Combatant's Torque",
	left_ear="Cessance Earring",
	right_ear="Telos Earring",
	left_ring={name="Chirich Ring +1", bag="wardrobe3"},
	right_ring={name="Chirich Ring +1", bag="wardrobe4"},
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
	left_ear="Cessance Earring",
	right_ear="Suppanomimi", --5
	left_ring={name="Chirich Ring +1", bag="wardrobe3"},
	right_ring={name="Chirich Ring +1", bag="wardrobe4"},
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
	left_ring={name="Chirich Ring +1", bag="wardrobe3"},
	right_ring={name="Chirich Ring +1", bag="wardrobe4"},
	back=gear.WHM_STP_Cape,
	}
]]

-- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
sets.buff['Divine Caress'] = {
	hands="Ebers Mitts +1", 
	back="Mending Cape"
}

sets.buff['Devotion'] = {
	head="Piety Cap +3"
}
sets.buff.Sublimation = {
	waist="Embla Sash"
}

sets.buff.Doom = {
	neck="Nicander's Necklace", --20
	left_ring={name="Eshmun's Ring", bag="wardrobe3"}, --20
	right_ring={name="Eshmun's Ring", bag="wardrobe4"}, --20
	waist="Gishdubar Sash", --10
	}

sets.Obi = {waist="Hachirin-no-Obi"}
-- sets.CP = {back="Mecisto. Mantle"}
