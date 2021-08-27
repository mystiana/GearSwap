------------------------------------------------------------------------------------------------
---------------------------------------- Generic Sets ------------------------------------------
------------------------------------------------------------------------------------------------

sets.idle={
--    main="Trishula",
--    sub="Utu Grip",
    ammo="Amar Cluster",
    head="Hjarrandi Helm",
    body="Hjarrandi Breast.",
--	{ name="Valorous Mail", augments={'Accuracy+7 Attack+7','"Store TP"+5','STR+12','Attack+12',}},
    hands="Flam. Manopolas +2",
    legs="Carmine Cuisses +1",
	feet="Flam. Gambieras +2",
	neck="Loricate Torque +1",
    waist="Ioskeha Belt",
    left_ear="Brutal Earring",
    right_ear="Sherida Earring",
    left_ring="Defending Ring",
	right_ring="Karieyh Ring",
    back  = Brig.DEXDA
}

sets.engaged = {
--    main="Trishula",
--    sub="Utu Grip",
    ammo="Amar Cluster",
    head="Flam. Zucchetto +2",
    body="Flamma Korazin +2",
    hands="Sulev. Gauntlets +2",
    legs="Flamma Dirs +2",
    feet="Flam. Gambieras +2",
	neck  = "Dragoon's Collar +2",
    waist="Ioskeha Belt",
    left_ear="Assuage Earring",
    right_ear="Sherida Earring",
    left_ring="Flamma Ring",
    right_ring="Niqmaddu Ring",
    back  = Brig.STRDA1
}

------------------------------------------------------------------------------------------------
------------------------------------- Weaponskill Sets -----------------------------------------
------------------------------------------------------------------------------------------------
sets.precast.WS = set_combine(sets.engaged, {
	ammo  = "Knobkierrie",
	head  = "Flamma Zucchetto +2",
	neck  = "Dragoon's Collar +2",
	lear  = "Moonshade Earring",
	rear  = "Sherida Earring",
	body  = "Sulevia Platemail +2",
	hands = "Sulevia's Gauntlets +2",
	lring = "Regal Ring",
	rring = "Niqmaddu Ring",
	back  = Brig.STRDA,
	legs  = "Sulevia's Cuisses +2",
	feet  = "Flamma Gambieras +2"  
})

sets.precast.WS['Stardiver'] = set_combine(sets.precast.WS, {
})

sets.precast.WS['Stardiver'].HighTP = set_combine(sets.precast.WS['Stardiver'], {
    head="Gleti's Mask",
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet="Gleti's Boots",
	neck = "Shadow Gorget",
	waist = "Soil Belt"
})
sets.precast.WS['Stardiver'].MaxTP = set_combine(sets.precast.WS['Stardiver'], {
    head="Gleti's Mask",
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet="Gleti's Boots",
	neck = "Shadow Gorget",
	waist = "Soil Belt",
	right_ear="Brutal Earring"
})

sets.precast.WS['Camlann\'s Torment'] = set_combine(sets.precast.WS, {
	right_ear="Ishvara Earring",
})

sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {
    head="Gleti's Mask",
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet="Gleti's Boots",
	right_ear="Ishvara Earring",
})

sets.precast.WS['Impulse Drive'] = set_combine(sets.precast.WS, {
	right_ear="Ishvara Earring",
	neck = "Shadow Gorget",
	waist = "Soil Belt"
})

------------------------------------------------------------------------------------------------
------------------------------------ Job abilities Sets ----------------------------------------
------------------------------------------------------------------------------------------------
sets.precast.JA['Angon'] = {
	ammo="Angon", 
	hands="Ptero. Fin. Gauntlets +1"
}

sets.precast.JA['Spirit Link'] = {
	head="Vishap Armet +3"
}

------------------------------------------------------------------------------------------------
---------------------------------------- Midcast Sets ------------------------------------------
------------------------------------------------------------------------------------------------
sets.midcast.HealingBreath = {
	head="Vishap Armet +3"
}

sets.midcast.ElementalBreath = {
	head="Vishap Armet +3"
}

sets.buff.Charm = {
	neck="Dgn. Collar +2",
}

sets.buff.Sleep = {
	neck="Berserker's Torque",
}
