Toutatis = {}
Toutatis.TP = { name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}} 
Toutatis.WSD = { name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}}
Toutatis.Crit = { name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}}

--------------------------------------
-- Special sets (required by rules)
--------------------------------------

sets.TreasureHunter = {
    hands="Plunderer's Armlets +1",
    waist="Chaac Belt",
    feet="Skulk. Poulaines +1"
}
sets.ExtraRegen = {head="Ocelomeh Headpiece +1"}
sets.Kiting = { feet="Jute Boots +1" }

sets.buff['Sneak Attack'] = {
    ammo="Yetshila",
    head="Pillager's Bonnet +1",
    neck="Asperity Necklace",
    lear="Dudgeon Earring",
    rear="Heartseeker Earring",
    body="Pillager's Vest +1",
    hands="Pillager's Armlets +1",
    lring="Epona's Ring",
    rring="Rajas Ring",
    back=Toutatis.TP,
    waist="Patentia Sash",
    legs="Pillager's Culottes +1",
    feet="Plunderer's Poulaines +1"
}

sets.buff['Trick Attack'] = {
    ammo="Yetshila",
    head="Pillager's Bonnet +1",
    neck="Asperity Necklace",
    lear="Dudgeon Earring",
    rear="Heartseeker Earring",
    body="Pillager's Vest +1",
    hands="Pillager's Armlets +1",
    lring="Epona's Ring",
    rring="Stormsoul Ring",
    back=Toutatis.TP,
    waist="Patentia Sash",
    legs="Pillager's Culottes +1",
    feet="Plunderer's Poulaines +1"
}

-- Actions we want to use to tag TH.
sets.precast.Step = sets.TreasureHunter
sets.precast.Flourish1 = sets.TreasureHunter
sets.precast.JA.Provoke = sets.TreasureHunter


--------------------------------------
-- Precast sets
--------------------------------------

-- Precast sets to enhance JAs
sets.precast.JA['Collaborator'] = {head="Raider's Bonnet +2"}
sets.precast.JA['Accomplice'] = {head="Raider's Bonnet +2"}
sets.precast.JA['Flee'] = {feet="Pillager's Poulaines +1"}
sets.precast.JA['Hide'] = {body="Pillager's Vest +1"}
sets.precast.JA['Conspirator'] = {} -- {body="Raider's Vest +2"}
sets.precast.JA['Steal'] = {head="Plunderer's Bonnet",hands="Pillager's Armlets +1",legs="Pillager's Culottes +1",feet="Pillager's Poulaines +1"}
sets.precast.JA['Despoil'] = {legs="Raider's Culottes +2",feet="Raider's Poulaines +2"}
sets.precast.JA['Perfect Dodge'] = {hands="Plunderer's Armlets +1"}
sets.precast.JA['Feint'] = {} -- {legs="Assassin's Culottes +2"}

sets.precast.JA['Sneak Attack'] = sets.buff['Sneak Attack']
sets.precast.JA['Trick Attack'] = sets.buff['Trick Attack']


-- Waltz set (chr and vit)
sets.precast.Waltz = {
    ammo="Sonia's Plectrum",
    head="Whirlpool Mask",
    body="Pillager's Vest +1",
    hands="Pillager's Armlets +1",
    lring="Asklepian Ring",
    back="Iximulew Cape",
    waist="Caudata Belt",
    legs="Pillager's Culottes +1",
    feet="Plunderer's Poulaines +1"
}

-- Don't need any special gear for Healing Waltz.
sets.precast.Waltz['Healing Waltz'] = {}

-- Fast cast sets for spells
sets.precast.FC = {
    head="Haruspex Hat",
    rear="Loquacious Earring",
    hands="Thaumas Gloves",
    lring="Prolix Ring",
    legs="Enif Cosciales"
}

sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {neck="Magoraga Beads"})

-- Ranged snapshot gear
sets.precast.RA = {
    head="Aurore Beret",
    hands="Iuitl Wristbands",
    legs="Nahtirah Trousers",
    feet="Wurrukatte Boots"
}

-- Weaponskill sets

-- Default set for any weaponskill that isn't any more specifically defined
sets.precast.WS = {}
sets.precast.WS.Acc = set_combine(sets.precast.WS, {ammo="Honed Tathlum", back="Letalis Mantle"})

-- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
sets.precast.WS['Exenterator'] = {
    ammo="Seeth. Bomblet +1",
    head="Meghanada Visor +1",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet="Meg. Jam. +1",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal Earring",
    right_ear="Sherida Earring",
    left_ring="Apate Ring",
    right_ring="Regal Ring",
    back=Toutatis.WSD,
}
sets.precast.WS['Exenterator'].Acc = set_combine(sets.precast.WS['Exenterator'], {ammo="Honed Tathlum", back="Letalis Mantle"})
sets.precast.WS['Exenterator'].Mod = set_combine(sets.precast.WS['Exenterator'], {head="Felistris Mask",waist=gear.ElementalBelt})
sets.precast.WS['Exenterator'].SA = set_combine(sets.precast.WS['Exenterator'].Mod, {ammo="Qirmiz Tathlum"})
sets.precast.WS['Exenterator'].TA = set_combine(sets.precast.WS['Exenterator'].Mod, {ammo="Qirmiz Tathlum"})
sets.precast.WS['Exenterator'].SATA = set_combine(sets.precast.WS['Exenterator'].Mod, {ammo="Qirmiz Tathlum"})

sets.precast.WS['Dancing Edge'] = set_combine(sets.precast.WS, {})
sets.precast.WS['Dancing Edge'].Acc = set_combine(sets.precast.WS['Dancing Edge'], {ammo="Honed Tathlum", back="Letalis Mantle"})
sets.precast.WS['Dancing Edge'].Mod = set_combine(sets.precast.WS['Dancing Edge'], {waist=gear.ElementalBelt})
sets.precast.WS['Dancing Edge'].SA = set_combine(sets.precast.WS['Dancing Edge'].Mod, {ammo="Qirmiz Tathlum"})
sets.precast.WS['Dancing Edge'].TA = set_combine(sets.precast.WS['Dancing Edge'].Mod, {ammo="Qirmiz Tathlum"})
sets.precast.WS['Dancing Edge'].SATA = set_combine(sets.precast.WS['Dancing Edge'].Mod, {ammo="Qirmiz Tathlum"})

sets.precast.WS['Evisceration'] = {
    ammo="Yetshila",
    head="Uk'uxkaj Cap",
    neck="Fotia Gorget",
    lear="Moonshade Earring",
    rear="Steelflash Earring",
    body="Abnoba Kaftan",
    hands="Mummu Wrists +2",
    left_ring="Mummu Ring",
    right_ring="Regal Ring",
    back=Toutatis.Crit,
    waist="Fotia Belt",
    legs="Mummu Kecks +2",
    feet="Mummu Gamashes +2"
}
sets.precast.WS['Evisceration'].Acc = set_combine(sets.precast.WS['Evisceration'], {ammo="Honed Tathlum", back="Letalis Mantle"})
sets.precast.WS['Evisceration'].Mod = set_combine(sets.precast.WS['Evisceration'], {back="Kayapa Cape",waist=gear.ElementalBelt})
sets.precast.WS['Evisceration'].SA = set_combine(sets.precast.WS['Evisceration'].Mod, {})
sets.precast.WS['Evisceration'].TA = set_combine(sets.precast.WS['Evisceration'].Mod, {})
sets.precast.WS['Evisceration'].SATA = set_combine(sets.precast.WS['Evisceration'].Mod, {})

sets.precast.WS['Rudra\'s Storm'] = {
    ammo="Seeth. Bomblet +1",
    head="Uk'uxkaj Cap",
    body="Herculean Vest",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet="Mummu Gamash. +2",
    neck="Fotia Gorget",
    waist="Grunfeld Rope",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Apate Ring",
    right_ring="Regal Ring",
    back=Toutatis.WSD,
}
sets.precast.WS['Rudra\'s Storm'].Acc = set_combine(sets.precast.WS['Rudra\'s Storm'], {ammo="Honed Tathlum", back="Letalis Mantle"})
sets.precast.WS['Rudra\'s Storm'].Mod = set_combine(sets.precast.WS['Rudra\'s Storm'], {back="Kayapa Cape",waist=gear.ElementalBelt})
sets.precast.WS['Rudra\'s Storm'].SA = set_combine(sets.precast.WS['Rudra\'s Storm'].Mod, {ammo="Qirmiz Tathlum",
    body="Pillager's Vest +1",legs="Pillager's Culottes +1"})
sets.precast.WS['Rudra\'s Storm'].TA = set_combine(sets.precast.WS['Rudra\'s Storm'].Mod, {ammo="Qirmiz Tathlum",
    body="Pillager's Vest +1",legs="Pillager's Culottes +1"})
sets.precast.WS['Rudra\'s Storm'].SATA = set_combine(sets.precast.WS['Rudra\'s Storm'].Mod, {ammo="Qirmiz Tathlum",
    body="Pillager's Vest +1",legs="Pillager's Culottes +1"})

sets.precast.WS['Mandalic Stab'] = sets.precast.WS["Rudra's Storm"]
sets.precast.WS['Mandalic Stab'].Acc = sets.precast.WS["Rudra's Storm"].Acc
sets.precast.WS['Mandalic Stab'].Mod = sets.precast.WS["Rudra's Storm"].Mod
sets.precast.WS['Mandalic Stab'].SA = sets.precast.WS["Rudra's Storm"].SA
sets.precast.WS['Mandalic Stab'].TA = sets.precast.WS["Rudra's Storm"].TA
sets.precast.WS['Mandalic Stab'].SATA = sets.precast.WS["Rudra's Storm"].SATA

sets.precast.WS["Shark Bite"] = set_combine(sets.precast.WS, {head="Pillager's Bonnet +1",lear="Brutal Earring",rear="Moonshade Earring"})
sets.precast.WS['Shark Bite'].Acc = set_combine(sets.precast.WS['Shark Bite'], {ammo="Honed Tathlum", back="Letalis Mantle"})
sets.precast.WS['Shark Bite'].Mod = set_combine(sets.precast.WS['Shark Bite'], {back="Kayapa Cape",waist=gear.ElementalBelt})
sets.precast.WS['Shark Bite'].SA = set_combine(sets.precast.WS['Shark Bite'].Mod, {ammo="Qirmiz Tathlum",
    body="Pillager's Vest +1",legs="Pillager's Culottes +1"})
sets.precast.WS['Shark Bite'].TA = set_combine(sets.precast.WS['Shark Bite'].Mod, {ammo="Qirmiz Tathlum",
    body="Pillager's Vest +1",legs="Pillager's Culottes +1"})
sets.precast.WS['Shark Bite'].SATA = set_combine(sets.precast.WS['Shark Bite'].Mod, {ammo="Qirmiz Tathlum",
    body="Pillager's Vest +1",legs="Pillager's Culottes +1"})

sets.precast.WS['Aeolian Edge'] = {
    ammo="Jukukik Feather",
    head="Wayfarer Circlet",
    neck="Stoicheion Medal",
    lear="Friomisi Earring",
    rear="Moonshade Earring",
    body="Wayfarer Robe",
    hands="Pillager's Armlets +1",
    lring="Acumen Ring",
    rring="Demon's Ring",
    back="Toro Cape",
    waist=gear.ElementalBelt,
    legs="Shneddick Tights +1",
    feet="Wayfarer Clogs"
}

sets.precast.WS['Aeolian Edge'].TH = set_combine(sets.precast.WS['Aeolian Edge'], sets.TreasureHunter)

--------------------------------------
-- Midcast sets
--------------------------------------

sets.midcast.FastRecast = {
    head="Whirlpool Mask",
    rear="Loquacious Earring",
    body="Pillager's Vest +1",
    hands="Pillager's Armlets +1",
    back="Canny Cape",
    legs="Kaabnax Trousers",
    feet="Iuitl Gaiters +1"
}

-- Specific spells
sets.midcast.Utsusemi = {
    head="Whirlpool Mask",
    neck="Ej Necklace",
    rear="Loquacious Earring",
    body="Pillager's Vest +1",
    hands="Pillager's Armlets +1",
    lring="Beeline Ring",
    back="Canny Cape",
    legs="Kaabnax Trousers",
    feet="Iuitl Gaiters +1"
}

-- Ranged gear
sets.midcast.RA = {
    head="Whirlpool Mask",
    neck="Ej Necklace",
    lear="Clearview Earring",
    rear="Volley Earring",
    body="Iuitl Vest",
    hands="Iuitl Wristbands",
    lring="Beeline Ring",
    rring="Hajduk Ring",
    back="Libeccio Mantle",
    waist="Aquiline Belt",
    legs="Nahtirah Trousers",
    feet="Iuitl Gaiters +1"
}

sets.midcast.RA.Acc = {
    head="Pillager's Bonnet +1",
    neck="Ej Necklace",
    lear="Clearview Earring",
    rear="Volley Earring",
    body="Iuitl Vest",
    hands="Buremte Gloves",
    lring="Beeline Ring",
    rring="Hajduk Ring",
    back="Libeccio Mantle",
    waist="Aquiline Belt",
    legs="Thurandaut Tights +1",
    feet="Pillager's Poulaines +1"
}


--------------------------------------
-- Idle/resting/defense sets
--------------------------------------

-- Resting sets
sets.resting = {
    head="Ocelomeh Headpiece +1",
    neck="Wiglen Gorget",
    lring="Sheltered Ring",
    rring="Paguroidea Ring"
}

-- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)

sets.idle = {
    ammo="Ginsen",
    head="Dampening Tam",
    neck="Anu Torque",
    lear="Brutal Earring",
    rear="Sherida Earring",
    body="Mummu Jacket +2",
    hands="Floral Gauntlets",
    lring="Epona's Ring",
    rring="Hetairoi Ring",
    back=Toutatis.TP,
    waist="Reiki Yotai",
    legs="Samnuha Tights",
    feet="Jute Boots +1"
}

sets.idle.Town = {
    ammo="Ginsen",
    head="Dampening Tam",
    neck="Anu Torque",
    lear="Brutal Earring",
    rear="Sherida Earring",
    body="Mummu Jacket +2",
    hands="Floral Gauntlets",
    lring="Epona's Ring",
    rring="Hetairoi Ring",
    back=Toutatis.TP,
    waist="Reiki Yotai",
    legs="Samnuha Tights",
    feet="Jute Boots +1"
}

sets.idle.Weak = {
    ammo="Thew Bomblet",
    head="Pillager's Bonnet +1",
    neck="Wiglen Gorget",
    lear="Dudgeon Earring",
    rear="Heartseeker Earring",
    body="Pillager's Vest +1",
    hands="Pillager's Armlets +1",
    lring="Sheltered Ring",
    rring="Paguroidea Ring",
    back="Shadow Mantle",
    waist="Flume Belt",
    legs="Pillager's Culottes +1",
    feet="Jute Boots +1"
}

-- Defense sets

sets.defense.Evasion = {
    head="Pillager's Bonnet +1",
    neck="Ej Necklace",
    body="Qaaxo Harness",
    hands="Pillager's Armlets +1",
    lring="Defending Ring",
    rring="Beeline Ring",
    back="Canny Cape",
    waist="Flume Belt",
    legs="Kaabnax Trousers",
    feet="Iuitl Gaiters +1"
}

sets.defense.PDT = {
    ammo="Iron Gobbet",
    head="Pillager's Bonnet +1",
    neck="Twilight Torque",
    body="Iuitl Vest",
    hands="Pillager's Armlets +1",
    lring="Defending Ring",
    rring=gear.DarkRing.physical,
    back="Iximulew Cape",
    waist="Flume Belt",
    legs="Pillager's Culottes +1",
    feet="Iuitl Gaiters +1"
}

sets.defense.MDT = {
    ammo="Demonry Stone",
    head="Pillager's Bonnet +1",
    neck="Twilight Torque",
    body="Pillager's Vest +1",
    hands="Pillager's Armlets +1",
    lring="Defending Ring",
    rring="Shadow Ring",
    back="Engulfer Cape",
    waist="Flume Belt",
    legs="Pillager's Culottes +1",
    feet="Iuitl Gaiters +1"
}


--------------------------------------
-- Melee sets
--------------------------------------

-- Normal melee group
sets.engaged = {
    ammo="Ginsen",
    head="Dampening Tam",
    neck="Anu Torque",
    lear="Brutal Earring",
    rear="Sherida Earring",
    body="Herculean Vest",
    hands="Floral Gauntlets",
    lring="Epona's Ring",
    rring="Hetairoi Ring",
    back=Toutatis.TP,
    waist="Reiki Yotai",
    legs="Meg. Chausses +2",
    feet="Herculean Boots"
}
sets.engaged.Acc = {
    ammo="Honed Tathlum",
    head="Whirlpool Mask",
    neck="Ej Necklace",
    lear="Dudgeon Earring",
    rear="Heartseeker Earring",
    body="Pillager's Vest +1",
    hands="Pillager's Armlets +1",
    lring="Epona's Ring",
    rring="Rajas Ring",
    back=Toutatis.TP,
    waist="Hurch'lan Sash",
    legs="Manibozho Brais",
    feet="Qaaxo Leggings"
}
-- Mod set for trivial mobs (Skadi+1)
sets.engaged.Mod = {
    ammo="Thew Bomblet",
    head="Felistris Mask",
    neck="Asperity Necklace",
    lear="Dudgeon Earring",
    rear="Heartseeker Earring",
    body="Skadi's Cuirie +1",
    hands="Pillager's Armlets +1",
    lring="Epona's Ring",
    rring="Rajas Ring",
    back=Toutatis.TP,
    waist="Patentia Sash",
    legs=gear.AugQuiahuiz,
    feet="Plunderer's Poulaines +1"
}

-- Mod set for trivial mobs (Thaumas)
sets.engaged.Mod2 = {
    ammo="Thew Bomblet",
    head="Felistris Mask",
    neck="Asperity Necklace",
    lear="Dudgeon Earring",
    rear="Heartseeker Earring",
    body="Thaumas Coat",
    hands="Pillager's Armlets +1",
    lring="Epona's Ring",
    rring="Hetairoi Ring",
    back="Atheling Mantle",
    waist="Patentia Sash",
    legs="Pillager's Culottes +1",
    feet="Plunderer's Poulaines +1"
}

sets.engaged.Evasion = {
    ammo="Thew Bomblet",
    head="Felistris Mask",
    neck="Ej Necklace",
    lear="Dudgeon Earring",
    rear="Heartseeker Earring",
    body="Qaaxo Harness",
    hands="Pillager's Armlets +1",
    lring="Epona's Ring",
    rring="Beeline Ring",
    back="Canny Cape",
    waist="Patentia Sash",
    legs="Kaabnax Trousers",
    feet="Qaaxo Leggings"
}

sets.engaged.Acc.Evasion = {
    ammo="Honed Tathlum",
    head="Whirlpool Mask",
    neck="Ej Necklace",
    lear="Dudgeon Earring",
    rear="Heartseeker Earring",
    body="Pillager's Vest +1",
    hands="Pillager's Armlets +1",
    lring="Epona's Ring",
    rring="Beeline Ring",
    back="Canny Cape",
    waist="Hurch'lan Sash",
    legs="Kaabnax Trousers",
    feet="Qaaxo Leggings"
}

sets.engaged.PDT = {
    ammo="Thew Bomblet",
    head="Felistris Mask",
    neck="Twilight Torque",
    lear="Dudgeon Earring",
    rear="Heartseeker Earring",
    body="Iuitl Vest",
    hands="Pillager's Armlets +1",
    lring="Epona's Ring",
    rring="Defending Ring",
    back="Iximulew Cape",
    waist="Patentia Sash",
    legs="Iuitl Tights",
    feet="Qaaxo Leggings"
}

sets.engaged.Acc.PDT = {
    ammo="Honed Tathlum",
    head="Whirlpool Mask",
    neck="Twilight Torque",
    lear="Dudgeon Earring",
    rear="Heartseeker Earring",
    body="Iuitl Vest",
    hands="Pillager's Armlets +1",
    lring="Epona's Ring",
    rring="Defending Ring",
    back="Canny Cape",
    waist="Hurch'lan Sash",
    legs="Iuitl Tights",
    feet="Qaaxo Leggings"
}
