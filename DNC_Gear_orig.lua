-- Define sets and vars used by this job file.

------------------------------------------------------------------------------------------------
---------------------------------------- Precast Sets ------------------------------------------
------------------------------------------------------------------------------------------------

-- Enmity set
sets.Enmity = {
	ammo="Sapience Orb", --2
	head="Halitus Helm", --8
	body="Emet Harness +1", --10
	hands="Horos Bangles +3", --9
	feet="Ahosi Leggings", --7
	neck="Unmoving Collar +1", --10
	ear1="Cryptic Earring", --4
	ear2="Trux Earring", --5
	ring1="Pernicious Ring", --5
	ring2="Eihwaz Ring", --5
	back=gear.DNC_WTZ_Cape, --10
	waist="Kasiri Belt", --3
}

sets.precast.JA['Provoke'] = sets.Enmity
sets.precast.JA['No Foot Rise'] = {body="Horos Casaque +3"}
sets.precast.JA['Trance'] = {head="Horos Tiara +3"}

-- Waltz Potency/CHR
sets.precast.Waltz = {
	head="Maxixi Tiara +3",
	body="Maxixi Casaque +3", --19(8)
	hands="Horos Bangles +3",
	legs="Dashing Subligar", --10
	feet="Maxixi Toeshoes +3", --14
	neck="Etoile Gorget +1", --7
	--ear1="Handler's Earring +1",
	ear2="Enchntr. Earring +1",
	ring1="Carb. Ring +1",
	ring2="Metamor. Ring +1",
	back=gear.DNC_WTZ_Cape,
	waist="Aristo Belt",
}

sets.precast.WaltzSelf = set_combine(sets.precast.Waltz, {
	head="Mummu Bonnet +2", --(8)
	ring1="Asklepian Ring", --(3)
	ear1="Roundel Earring", --5
}) -- Waltz effects received

sets.precast.Waltz['Healing Waltz'] = {}
sets.precast.Samba = {head="Maxixi Tiara +3", back=gear.DNC_TP_Cape}
sets.precast.Jig = {legs="Horos Tights +3", feet="Maxixi Toeshoes +3"}

sets.precast.Step = {
	ammo="C. Palug Stone",
	head="Maxixi Tiara +3",
	body="Maxixi Casaque +3",
	hands="Maxixi Bangles +3",
	legs="Mummu Kecks +2",
	feet="Horos T. Shoes +3",
	neck="Etoile Gorget +1",
	ear1="Mache Earring +1",
	ear2="Telos Earring",
	ring1="Regal Ring",
	ring2={name="Chirich Ring +1", bag="wardrobe4"},
	waist="Olseni Belt",
	back=gear.DNC_TP_Cape
	}

sets.precast.Step['Feather Step'] = set_combine(sets.precast.Step, {feet="Macu. Toeshoes +1"})
sets.precast.Flourish1 = {}
sets.precast.Flourish1['Animated Flourish'] = sets.Enmity

sets.precast.Flourish1['Violent Flourish'] = {
	ammo="Yamarang",
	head="Mummu Bonnet +2",
	body="Horos Casaque +3",
	hands="Mummu Wrists +2",
	legs="Mummu Kecks +2",
	feet="Mummu Gamash. +2",
	neck="Etoile Gorget +1",
	ear1="Digni. Earring",
	ear2="Enchntr. Earring +1",
	ring1="Metamor. Ring +1",
	ring2="Weather. Ring +1",
	waist="Eschan Stone",
	back=gear.DNC_TP_Cape,
	} -- Magic Accuracy

sets.precast.Flourish1['Desperate Flourish'] = {
	ammo="C. Palug Stone",
	head="Maxixi Tiara +3",
	body="Maxixi Casaque +3",
	hands="Maxixi Bangles +3",
	legs=gear.Herc_WS_legs,
	feet="Maxixi Toeshoes +3",
	neck="Etoile Gorget +1",
	ear1="Cessance Earring",
	ear2="Telos Earring",
	ring1="Regal Ring",
	ring2={name="Chirich Ring +1", bag="wardrobe4"},
	back=gear.DNC_TP_Cape,
	} -- Accuracy

sets.precast.Flourish2 = {}
sets.precast.Flourish2['Reverse Flourish'] = {hands="Macu. Bangles +1",    back="Toetapper Mantle"}
sets.precast.Flourish3 = {}
sets.precast.Flourish3['Striking Flourish'] = {body="Macu. Casaque +1"}
sets.precast.Flourish3['Climactic Flourish'] = {head="Maculele Tiara +1",}

sets.precast.FC = {
	ammo="Sapience Orb",
	head=gear.Herc_MAB_head, --7
	body=gear.Taeon_FC_body, --8
	hands="Leyline Gloves", --8
	legs="Rawhide Trousers", --5
	feet=gear.Herc_MAB_feet, --2
	neck="Orunmila's Torque", --5
	ear1="Loquacious Earring", --2
	ear2="Enchntr. Earring +1", --2
	ring2="Weather. Ring +1", --6(4)
	}

sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {
	ammo="Impatiens",
	body="Passion Jacket",
	ring1="Lebeche Ring",
	})


------------------------------------------------------------------------------------------------
------------------------------------- Weapon Skill Sets ----------------------------------------
------------------------------------------------------------------------------------------------

sets.precast.WS = {
	ammo="Aurgelmir Orb +1",
	head=gear.Herc_WSD_head,
	body=gear.Herc_WS_body,
	hands="Maxixi Bangles +3",
	legs="Horos Tights +3",
	feet="Lustra. Leggings +1",
	neck="Fotia Gorget",
	ear1="Ishvara Earring",
	ear2="Moonshade Earring",
	ring1="Regal Ring",
	ring2="Epaminondas's Ring",
	back=gear.DNC_WS1_Cape,
	waist="Fotia Belt",
	} -- default set

sets.precast.WS.Acc = set_combine(sets.precast.WS, {
	ammo="Voluspa Tathlum",
	head="Dampening Tam",
	legs="Meg. Chausses +2",
	feet="Meg. Jam. +2",
	ear2="Telos Earring",
	})

sets.precast.WS.Critical = {body="Meg. Cuirie +2"}

sets.precast.WS['Exenterator'] = set_combine(sets.precast.WS, {
	head=gear.Adhemar_B_head,
	body="Meg. Cuirie +2",
	legs="Meg. Chausses +2",
	feet="Meg. Jam. +2",
	ear1="Sherida Earring",
	ear2="Brutal Earring",
	back=gear.DNC_WS2_Cape,
	})

sets.precast.WS['Exenterator'].Acc = set_combine(sets.precast.WS['Exenterator'], {
	ammo="Voluspa Tathlum",
	head="Dampening Tam",
	body="Horos Casaque +3",
	ear2="Telos Earring",
	})

sets.precast.WS['Pyrrhic Kleos'] = set_combine(sets.precast.WS, {
	head="Lustratio Cap +1",
	body="Horos Casaque +3",
	hands=gear.Adhemar_B_hands,
	legs="Samnuha Tights",
	feet=gear.Herc_TA_feet,
	ear1="Sherida Earring",
	ear2="Mache Earring +1",
	ring1="Gere Ring",
	ring2="Epona's Ring",
	back=gear.DNC_WS2_Cape,
	})

sets.precast.WS['Pyrrhic Kleos'].Acc = set_combine(sets.precast.WS['Pyrrhic Kleos'], {
	ammo="Voluspa Tathlum",
	head="Dampening Tam",
	hands=gear.Adhemar_A_hands,
	legs=gear.Herc_WS_legs,
	feet=gear.Herc_STP_feet,
	})

sets.precast.WS['Evisceration'] = set_combine(sets.precast.WS, {
	ammo="Charis Feather",
	head=gear.Adhemar_B_head,
	body="Abnoba Kaftan",
	hands="Mummu Wrists +2",
	legs="Lustr. Subligar +1",
	feet=gear.Herc_STP_feet,
	ear1="Sherida Earring",
	ear2="Mache Earring +1",
	ring1="Begrudging Ring",
	ring2="Mummu Ring",
	back=gear.DNC_WS3_Cape,
	})

sets.precast.WS['Evisceration'].Acc = set_combine(sets.precast.WS['Evisceration'], {
	ammo="Voluspa Tathlum",
	head="Dampening Tam",
	body="Horos Casaque +3",
	legs="Meg. Chausses +2",
	feet="Maxixi Toeshoes +3",
	ring1="Regal Ring",
	})

sets.precast.WS['Rudra\'s Storm'] = set_combine(sets.precast.WS, {
	ammo="Charis Feather",
	neck="Etoile Gorget +1",
	ear1="Sherida Earring",
	waist="Artful Belt +1",
	})

sets.precast.WS['Rudra\'s Storm'].Acc = set_combine(sets.precast.WS['Rudra\'s Storm'], {
	ammo="Voluspa Tathlum",
	legs=gear.Herc_WS_legs,
	feet=gear.Herc_STP_feet,
	ear2="Telos Earring",
	waist="Grunfeld Rope",
	})

sets.precast.WS['Aeolian Edge'] = {
	ammo="Pemphredo Tathlum",
	head=gear.Herc_MAB_head,
	body="Samnuha Coat",
	hands="Maxixi Bangles +3",
	legs="Horos Tights +3",
	feet=gear.Herc_WSD_feet,
	neck="Baetyl Pendant",
	ear1="Crematio Earring",
	ear2="Friomisi Earring",
	ring1="Metamor. Ring +1",
	ring2="Epaminondas's Ring",
	back="Argocham. Mantle",
	waist="Orpheus's Sash",
	}

sets.precast.Skillchain = {
	hands="Macu. Bangles +1",
	}

------------------------------------------------------------------------------------------------
---------------------------------------- Midcast Sets ------------------------------------------
------------------------------------------------------------------------------------------------

sets.midcast.FastRecast = sets.precast.FC

sets.midcast.SpellInterrupt = {
	ammo="Impatiens", --10
	ring1="Evanescence Ring", --5
	}

sets.midcast.Utsusemi = sets.midcast.SpellInterrupt

------------------------------------------------------------------------------------------------
----------------------------------------- Idle Sets --------------------------------------------
------------------------------------------------------------------------------------------------

sets.resting = {}

sets.idle = {
	ammo="Staunch Tathlum +1",
	head="Turms Cap +1",
	body="Malignance Tabard",
	hands="Turms Mittens +1",
	legs="Turms Subligar +1",
	feet="Turms Leggings +1",
	neck="Bathy Choker +1",
	ear1="Eabani Earring",
	ear2="Sanare Earring",
	ring1={name="Chirich Ring +1", bag="wardrobe3"},
	ring2={name="Chirich Ring +1", bag="wardrobe4"},
	back="Moonlight Cape",
	waist="Engraved Belt",
	}

sets.idle.DT = set_combine(sets.idle, {
	ammo="Staunch Tathlum +1", --3/3
	head="Malignance Chapeau", --6/6
	body="Malignance Tabard", --9/9
	hands="Malignance Gloves", --5/5
	legs="Malignance Tights", --7/7
	feet="Malignance Boots", --4/4
	neck="Warder's Charm +1",
	ear2="Sanare Earring",
	ring1="Purity Ring", --0/4
	ring2="Defending Ring", --10/10
	back="Moonlight Cape", --6/6
	})

sets.idle.Town = set_combine(sets.idle, {
	ammo="Aurgelmir Orb +1",
	head=gear.Adhemar_B_head,
	body="Ashera Harness",
	hands="Maxixi Bangles +3",
	legs="Horos Tights +3",
	feet="Horos T. Shoes +3",
	neck="Etoile Gorget +1",
	ear1="Sherida Earring",
	ear2="Telos Earring",
	back=gear.DNC_TP_Cape,
	waist="Windbuffet Belt +1",
	})

sets.idle.Weak = sets.idle.DT

------------------------------------------------------------------------------------------------
---------------------------------------- Defense Sets ------------------------------------------
------------------------------------------------------------------------------------------------

sets.defense.PDT = sets.idle.DT
sets.defense.MDT = sets.idle.DT

sets.Kiting = {feet="Skd. Jambeaux +1"}

------------------------------------------------------------------------------------------------
---------------------------------------- Engaged Sets ------------------------------------------
------------------------------------------------------------------------------------------------

-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
-- sets if more refined versions aren't defined.
-- If you create a set with both offense and defense modes, the offense mode should be first.
-- EG: sets.engaged.Dagger.Accuracy.Evasion

sets.engaged = {
	ammo="Aurgelmir Orb +1",
	head=gear.Adhemar_B_head,
	body="Horos Casaque +3",
	hands=gear.Adhemar_B_hands,
	legs="Samnuha Tights",
	feet=gear.Herc_TA_feet,
	neck="Etoile Gorget +1",
	ear1="Cessance Earring",
	ear2="Brutal Earring",
	ring1="Gere Ring",
	ring2="Epona's Ring",
	back=gear.DNC_TP_Cape,
	waist="Windbuffet Belt +1",
	}

sets.engaged.LowAcc = set_combine(sets.engaged, {
	head="Dampening Tam",
	hands=gear.Adhemar_A_hands,
	})

sets.engaged.MidAcc = set_combine(sets.engaged.LowAcc, {
	ammo="Voluspa Tathlum",
	ear2="Telos Earring",
	ring1={name="Chirich Ring +1", bag="wardrobe3"},
	ring2="Ilabrat Ring",
	waist="Kentarch Belt +1",
	})

sets.engaged.HighAcc = set_combine(sets.engaged.MidAcc, {
	ammo="C. Palug Stone",
	body="Maxixi Casaque +3",
	legs="Horos Tights +3",
	feet=gear.Herc_STP_feet,
	ear2="Mache Earring +1",
	ring1="Regal Ring",
	ring2={name="Chirich Ring +1", bag="wardrobe4"},
	waist="Olseni Belt",
	})

sets.engaged.STP = set_combine(sets.engaged, {
	head=gear.Herc_STP_head,
	body="Ashera Harness",
	ring1={name="Chirich Ring +1", bag="wardrobe3"},
	ring2={name="Chirich Ring +1", bag="wardrobe4"},
	})

-- * DNC Native DW Trait: 30% DW
-- * DNC Job Points DW Gift: 5% DW

-- No Magic Haste (74% DW to cap)
sets.engaged.DW = {
	ammo="Aurgelmir Orb +1",
	head=gear.Adhemar_B_head,
	body="Macu. Casaque +1", --11
	hands=gear.Adhemar_B_hands,
	legs="Samnuha Tights",
	feet=gear.Taeon_DW_feet, --9
	neck="Charis Necklace", --5
	ear1="Eabani Earring", --4
	ear2="Suppanomimi", --5
	ring1="Gere Ring",
	ring2="Epona's Ring",
	back=gear.DNC_TP_Cape,
	waist="Reiki Yotai", --7
	} -- 41%

sets.engaged.DW.LowAcc = set_combine(sets.engaged.DW, {
	head="Dampening Tam",
	hands=gear.Adhemar_A_hands,
	})

sets.engaged.DW.MidAcc = set_combine(sets.engaged.DW.LowAcc, {
	ammo="Voluspa Tathlum",
	head="Maxixi Tiara +3", --8
	ring1={name="Chirich Ring +1", bag="wardrobe3"},
	ring2="Ilabrat Ring",
	waist="Kentarch Belt +1",
	})

sets.engaged.DW.HighAcc = set_combine(sets.engaged.DW.MidAcc, {
	ammo="C. Palug Stone",
	body="Maxixi Casaque +3",
	legs="Horos Tights +3",
	feet=gear.Herc_STP_feet,
	ear2="Mache Earring +1",
	ring1="Regal Ring",
	ring2={name="Chirich Ring +1", bag="wardrobe4"},
	waist="Olseni Belt",
	})

sets.engaged.DW.STP = set_combine(sets.engaged.DW, {
	head=gear.Herc_STP_head,
	ring1={name="Chirich Ring +1", bag="wardrobe3"},
	ring2={name="Chirich Ring +1", bag="wardrobe4"},
	})

-- 15% Magic Haste (67% DW to cap)
sets.engaged.DW.LowHaste = {
	ammo="Aurgelmir Orb +1",
	head=gear.Adhemar_B_head,
	body="Macu. Casaque +1", --11
	hands=gear.Adhemar_B_hands,
	legs="Samnuha Tights",
	feet=gear.Herc_TA_feet,
	neck="Charis Necklace", --5
	ear1="Eabani Earring", --4
	ear2="Suppanomimi", --5
	ring1="Gere Ring",
	ring2="Epona's Ring",
	back=gear.DNC_TP_Cape,
	waist="Reiki Yotai", --7
	} -- 32%

sets.engaged.DW.LowAcc.LowHaste = set_combine(sets.engaged.DW.LowHaste, {
	head="Dampening Tam",
	hands=gear.Adhemar_A_hands,
	})

sets.engaged.DW.MidAcc.LowHaste = set_combine(sets.engaged.DW.LowAcc.LowHaste, {
	ammo="Voluspa Tathlum",
	head="Maxixi Tiara +3", --8
	body="Horos Casaque +3",
	ring1={name="Chirich Ring +1", bag="wardrobe3"},
	ring2="Ilabrat Ring",
	waist="Kentarch Belt +1",
	})

sets.engaged.DW.HighAcc.LowHaste = set_combine(sets.engaged.DW.MidAcc.LowHaste, {
	ammo="C. Palug Stone",
	body="Maxixi Casaque +3",
	legs="Horos Tights +3",
	feet=gear.Herc_STP_feet,
	ear2="Mache Earring +1",
	ring1="Regal Ring",
	ring2={name="Chirich Ring +1", bag="wardrobe4"},
	waist="Olseni Belt",
	})

sets.engaged.DW.STP.LowHaste = set_combine(sets.engaged.DW.LowHaste, {
	head=gear.Herc_STP_head,
	ring1={name="Chirich Ring +1", bag="wardrobe3"},
	ring2={name="Chirich Ring +1", bag="wardrobe4"},
	})

-- 30% Magic Haste (56% DW to cap)
sets.engaged.DW.MidHaste = {
	ammo="Aurgelmir Orb +1",
	head=gear.Adhemar_B_head,
	body=gear.Adhemar_B_body, --6
	hands=gear.Adhemar_B_hands,
	legs="Samnuha Tights",
	feet=gear.Herc_TA_feet,
	neck="Etoile Gorget +1",
	ear1="Eabani Earring", --4
	ear2="Suppanomimi", --5
	ring1="Gere Ring",
	ring2="Epona's Ring",
	back=gear.DNC_TP_Cape,
	waist="Reiki Yotai", --7
	} -- 22%

sets.engaged.DW.LowAcc.MidHaste = set_combine(sets.engaged.DW.MidHaste, {
	head="Dampening Tam",
	hands=gear.Adhemar_A_hands,
	})

sets.engaged.DW.MidAcc.MidHaste = set_combine(sets.engaged.DW.LowAcc.MidHaste, {
	ammo="Voluspa Tathlum",
	head="Maxixi Tiara +3", --8
	body="Horos Casaque +3",
	ring1={name="Chirich Ring +1", bag="wardrobe3"},
	ring2="Ilabrat Ring",
	waist="Kentarch Belt +1",
	})

sets.engaged.DW.HighAcc.MidHaste = set_combine(sets.engaged.DW.MidAcc.MidHaste, {
	ammo="C. Palug Stone",
	body="Maxixi Casaque +3",
	legs="Horos Tights +3",
	feet=gear.Herc_STP_feet,
	ear2="Mache Earring +1",
	ring1="Regal Ring",
	ring2={name="Chirich Ring +1", bag="wardrobe4"},
	waist="Olseni Belt",
	})

sets.engaged.DW.STP.MidHaste = set_combine(sets.engaged.DW.MidHaste, {
	head=gear.Herc_STP_head,
	ring1={name="Chirich Ring +1", bag="wardrobe3"},
	ring2={name="Chirich Ring +1", bag="wardrobe4"},
	})

-- 35% Magic Haste (51% DW to cap)
sets.engaged.DW.HighHaste = {
	ammo="Aurgelmir Orb +1",
	head=gear.Adhemar_B_head,
	body=gear.Adhemar_B_body, --6
	hands=gear.Adhemar_B_hands,
	legs="Samnuha Tights",
	feet=gear.Herc_TA_feet,
	neck="Etoile Gorget +1",
	ear1="Eabani Earring", --4
	ear2="Brutal Earring",
	ring1="Gere Ring",
	ring2="Epona's Ring",
	back=gear.DNC_TP_Cape,
	waist="Windbuffet Belt +1",
  } -- 10% Gear

sets.engaged.DW.LowAcc.HighHaste = set_combine(sets.engaged.DW.HighHaste, {
	head="Dampening Tam",
	hands=gear.Adhemar_A_hands,
	waist="Kentarch Belt +1",
	})

sets.engaged.DW.MidAcc.HighHaste = set_combine(sets.engaged.DW.LowAcc.HighHaste, {
	ammo="Voluspa Tathlum",
	body="Horos Casaque +3",
	ring1={name="Chirich Ring +1", bag="wardrobe3"},
	ring2="Ilabrat Ring",
	})

sets.engaged.DW.HighAcc.HighHaste = set_combine(sets.engaged.DW.MidAcc.HighHaste, {
	ammo="C. Palug Stone",
	head="Maxixi Tiara +3", --8
	body="Maxixi Casaque +3",
	legs="Horos Tights +3",
	feet=gear.Herc_STP_feet,
	ear2="Mache Earring +1",
	ring1="Regal Ring",
	ring2={name="Chirich Ring +1", bag="wardrobe4"},
	waist="Olseni Belt",
	})

sets.engaged.DW.STP.HighHaste = set_combine(sets.engaged.DW.HighHaste, {
	head=gear.Herc_STP_head,
	ring1={name="Chirich Ring +1", bag="wardrobe3"},
	ring2={name="Chirich Ring +1", bag="wardrobe4"},
	waist="Kentarch Belt +1",
	})

-- 45% Magic Haste (36% DW to cap)
sets.engaged.DW.MaxHaste = {
	ammo="Aurgelmir Orb +1",
	head=gear.Adhemar_B_head,
	body="Horos Casaque +3",
	hands=gear.Adhemar_B_hands,
	legs="Samnuha Tights",
	feet=gear.Herc_TA_feet,
	neck="Etoile Gorget +1",
	ear1="Sherida Earring",
	ear2="Brutal Earring",
	ring1="Gere Ring",
	ring2="Epona's Ring",
	back=gear.DNC_TP_Cape,
	waist="Windbuffet Belt +1",
	} -- 0%

sets.engaged.DW.LowAcc.MaxHaste = set_combine(sets.engaged.DW.MaxHaste, {
	head="Dampening Tam",
	hands=gear.Adhemar_A_hands,
	ear2="Telos Earring",
	waist="Kentarch Belt +1",
	})

sets.engaged.DW.MidAcc.MaxHaste = set_combine(sets.engaged.DW.LowAcc.MaxHaste, {
	ammo="Voluspa Tathlum",
	ear1="Cessance Earring",
	ring1={name="Chirich Ring +1", bag="wardrobe3"},
	ring2="Ilabrat Ring",
	})

sets.engaged.DW.HighAcc.MaxHaste = set_combine(sets.engaged.DW.MidAcc.MaxHaste, {
	ammo="C. Palug Stone",
	head="Maxixi Tiara +3", --8
	body="Maxixi Casaque +3",
	legs="Horos Tights +3",
	feet=gear.Herc_STP_feet,
	ear2="Mache Earring +1",
	ring1="Regal Ring",
	ring2={name="Chirich Ring +1", bag="wardrobe4"},
	waist="Olseni Belt",
	})

sets.engaged.DW.STP.MaxHaste = set_combine(sets.engaged.DW.MaxHaste, {
	head=gear.Herc_STP_head,
	body="Ashera Harness",
	ear2="Telos Earring",
	ring1={name="Chirich Ring +1", bag="wardrobe3"},
	ring2={name="Chirich Ring +1", bag="wardrobe4"},
	waist="Kentarch Belt +1",
	})

------------------------------------------------------------------------------------------------
---------------------------------------- Hybrid Sets -------------------------------------------
------------------------------------------------------------------------------------------------

sets.engaged.Hybrid = {
	head=gear.Adhemar_D_head, --4/0
	body="Ashera Harness", --7/7
	neck="Loricate Torque +1", --6/6
	ring1="Moonlight Ring", --5/5
	ring2="Defending Ring", --10/10
	}

sets.engaged.DT = set_combine(sets.engaged, sets.engaged.Hybrid)
sets.engaged.LowAcc.DT = set_combine(sets.engaged.LowAcc, sets.engaged.Hybrid)
sets.engaged.MidAcc.DT = set_combine(sets.engaged.MidAcc, sets.engaged.Hybrid)
sets.engaged.HighAcc.DT = set_combine(sets.engaged.HighAcc, sets.engaged.Hybrid)
sets.engaged.STP.DT = set_combine(sets.engaged.STP, sets.engaged.Hybrid)

sets.engaged.DW.DT = set_combine(sets.engaged.DW, sets.engaged.Hybrid)
sets.engaged.DW.LowAcc.DT = set_combine(sets.engaged.DW.LowAcc, sets.engaged.Hybrid)
sets.engaged.DW.MidAcc.DT = set_combine(sets.engaged.DW.MidAcc, sets.engaged.Hybrid)
sets.engaged.DW.HighAcc.DT = set_combine(sets.engaged.DW.HighAcc, sets.engaged.Hybrid)
sets.engaged.DW.STP.DT = set_combine(sets.engaged.DW.STP, sets.engaged.Hybrid)

sets.engaged.DW.DT.LowHaste = set_combine(sets.engaged.DW.LowHaste, sets.engaged.Hybrid)
sets.engaged.DW.LowAcc.DT.LowHaste = set_combine(sets.engaged.DW.LowAcc.LowHaste, sets.engaged.Hybrid)
sets.engaged.DW.MidAcc.DT.LowHaste = set_combine(sets.engaged.DW.MidAcc.LowHaste, sets.engaged.Hybrid)
sets.engaged.DW.HighAcc.DT.LowHaste = set_combine(sets.engaged.DW.HighAcc.LowHaste, sets.engaged.Hybrid)
sets.engaged.DW.STP.DT.LowHaste = set_combine(sets.engaged.DW.STP.LowHaste, sets.engaged.Hybrid)

sets.engaged.DW.DT.MidHaste = set_combine(sets.engaged.DW.MidHaste, sets.engaged.Hybrid)
sets.engaged.DW.LowAcc.DT.MidHaste = set_combine(sets.engaged.DW.LowAcc.MidHaste, sets.engaged.Hybrid)
sets.engaged.DW.MidAcc.DT.MidHaste = set_combine(sets.engaged.DW.MidAcc.MidHaste, sets.engaged.Hybrid)
sets.engaged.DW.HighAcc.DT.MidHaste = set_combine(sets.engaged.DW.HighAcc.MidHaste, sets.engaged.Hybrid)
sets.engaged.DW.STP.DT.MidHaste = set_combine(sets.engaged.DW.STP.MidHaste, sets.engaged.Hybrid)

sets.engaged.DW.DT.HighHaste = set_combine(sets.engaged.DW.HighHaste, sets.engaged.Hybrid)
sets.engaged.DW.LowAcc.DT.HighHaste = set_combine(sets.engaged.DW.LowAcc.HighHaste, sets.engaged.Hybrid)
sets.engaged.DW.MidAcc.DT.HighHaste = set_combine(sets.engaged.DW.MidAcc.HighHaste, sets.engaged.Hybrid)
sets.engaged.DW.HighAcc.DT.HighHaste = set_combine(sets.engaged.DW.HighAcc.HighHaste, sets.engaged.Hybrid)
sets.engaged.DW.STP.DT.HighHaste = set_combine(sets.engaged.DW.HighHaste.STP, sets.engaged.Hybrid)

sets.engaged.DW.DT.MaxHaste = set_combine(sets.engaged.DW.MaxHaste, sets.engaged.Hybrid)
sets.engaged.DW.LowAcc.DT.MaxHaste = set_combine(sets.engaged.DW.LowAcc.MaxHaste, sets.engaged.Hybrid)
sets.engaged.DW.MidAcc.DT.MaxHaste = set_combine(sets.engaged.DW.MidAcc.MaxHaste, sets.engaged.Hybrid)
sets.engaged.DW.HighAcc.DT.MaxHaste = set_combine(sets.engaged.DW.HighAcc.MaxHaste, sets.engaged.Hybrid)
sets.engaged.DW.STP.DT.MaxHaste = set_combine(sets.engaged.DW.STP.MaxHaste, sets.engaged.Hybrid)


------------------------------------------------------------------------------------------------
---------------------------------------- Special Sets ------------------------------------------
------------------------------------------------------------------------------------------------

sets.buff['Saber Dance'] = {legs="Horos Tights +3"}
sets.buff['Fan Dance'] = {body="Horos Bangles +3"}
sets.buff['Climactic Flourish'] = {head="Maculele Tiara +1"} --body="Meg. Cuirie +2"}
sets.buff['Closed Position'] = {feet="Horos T. Shoes +3"}

sets.buff.Doom = {
	neck="Nicander's Necklace", --20
	ring1={name="Eshmun's Ring", bag="wardrobe3"}, --20
	ring2={name="Eshmun's Ring", bag="wardrobe4"}, --20
	waist="Gishdubar Sash", --10
	}

-- sets.CP = {back="Mecisto. Mantle"}
--sets.Reive = {neck="Ygnas's Resolve +1"}


