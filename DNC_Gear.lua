-- Define sets and vars used by this job file.

------------------------------------------------------------------------------------------------
------------------------------------------ Base Sets -------------------------------------------
------------------------------------------------------------------------------------------------

sets.idle = {
	main="Kaja Knife",
    sub={ name="Enchufla", augments={'DMG:+15','DEX+15','"Subtle Blow"+7',}},
    ammo="Charis Feather",
    head="Meghanada Visor",
    body="Meghanada Cuirie",
    hands="Meghanada Gloves",
    legs="Meg. Chausses",
    feet="Tandava Crackows",
    neck="Charis Necklace",
    waist="Twilight Belt",
    left_ear="Charis Earring",
    right_ear="Brutal Earring",
    left_ring="Rajas Ring",
    right_ring="Epona's Ring",
    back="Toetapper Mantle",
}

sets.engaged = {
	main="Kaja Knife",
    sub={ name="Enchufla", augments={'DMG:+15','DEX+15','"Subtle Blow"+7',}},
    ammo="Amar Cluster",
    head="Mummu Bonnet",
    body="Mummu Jacket",
    hands="Mummu Wrists",
    legs="Mummu Kecks",
    feet="Mummu Gamashes",
    neck="Subtlety Spec.",
    waist="Kentarch Belt +1",
    left_ear="Assuage Earring",
    right_ear="Brutal Earring",
    left_ring="Rajas Ring",
    right_ring="Cacoethic Ring +1",
    back="Toetapper Mantle",
}

------------------------------------------------------------------------------------------------
----------------------------------------- Action Sets ------------------------------------------
------------------------------------------------------------------------------------------------

sets.precast.Samba = {
	head="Dancer's Tiara"
}

sets.precast.Waltz = {
	body="Dancer's Casaque +1",
	head="Etoile Tiara",
    left_ear="Roundel Earring"
}

sets.precast.Step = {
	hands="Dancer's Bangles +1"
}

sets.precast.Step['Feather Step'] = set_combine(sets.precast.step, {
	feet="Charis Shoes +2"
})

sets.precast.Jig = {
	legs="Etoile Tights",
	feet="Dancer's Toe Shoes"
}

sets.precast.JA['Reverse Flourish'] = {
	hands="Charis Bangles +2"
}

sets.precast.FC = {
	feet="Meg. Jambeaux",
	right_ear="Loquacious Earring"
}

sets.precast.WS = {
	right_ring="Karieyh Ring",
	right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}}
}
