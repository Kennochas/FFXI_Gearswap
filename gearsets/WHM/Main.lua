--------------------------------------
-- Start defining the sets
--------------------------------------

Grio = {}
Grio.enfeeb = { name="Grioavolr", augments={'Enfb.mag. skill +10','MP+31','Mag. Acc.+21','"Mag.Atk.Bns."+13',}}
Grio.nuke = { name="Grioavolr", augments={'Mag. Acc.+30','"Mag.Atk.Bns."+30',}}

Alaunus = {}
Alaunus.MND = { name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','Enmity-10','Phys. dmg. taken-10%',}}
Alaunus.TP = { name="Alaunus's Cape", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+10',}}
Alaunus.DT = { name="Alaunus's Cape", augments={'MP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Phys. dmg. taken-10%',}}
Alaunus.Enfeeb = { name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Enmity-10',}}

TelchineHead = {}
TelchineHead.Enh = { name="Telchine Cap", augments={'Evasion+9','"Fast Cast"+2','Enh. Mag. eff. dur. +9',}}
TelchineHead.Pet = { name="Telchine Cap", augments={'Pet: Mag. Evasion+20','Pet: "Regen"+2','Pet: Damage taken -3%',}}

TelchineBody = {}
TelchineBody.Enh = { name="Telchine Chas.", augments={'Evasion+9','"Conserve MP"+4','Enh. Mag. eff. dur. +10',}}
TelchineBody.Pet = { name="Telchine Chas.", augments={'Pet: DEF+16','Pet: "Regen"+2','Pet: Damage taken -4%',}}

TelchineLegs = {}
TelchineLegs.Enh = { name="Telchine Braconi", augments={'Evasion+7','Spell interruption rate down -6%','Enh. Mag. eff. dur. +9',}}
TelchineLegs.Pet = { name="Telchine Braconi", augments={'Pet: Mag. Evasion+12','Pet: "Regen"+3','Pet: Damage taken -4%',}}

TelchineFeet = {}
TelchineFeet.Pet = { name="Telchine Pigaches", augments={'Pet: Mag. Evasion+20','Pet: "Regen"+1','Pet: Damage taken -4%',}}

-- Precast Sets

-- Fast cast sets for spells
sets.precast.FC = {
    ammo="Impatiens", -- (2 QM)
    head="Vanya Hood", --10
    neck="Orunmila's Torque", --4
    ear1="Loquacious Earring", --2
    ear2="Malignance Earring", --4
    body="Shango Robe", --13
    hands="Fanatic Gloves", --7
    ring1="Prolix Ring", --2
    ring2="Kishar Ring", --4
    back=Alaunus.DT, --10
    waist="Witful Belt", --3 (3 QM)
    legs="Ayanmo Cosciales +2", --6
    feet="Regal Pumps +1" --7
} --72% (5% QM)
    
sets.precast.FC.Dispelga = set_combine({main="Daybreak", sub="Ammurapi Shield"}, sets.precast.FC)
    
sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {
    waist="Siegel Sash" })

sets.precast.FC.Stoneskin = set_combine(sets.precast.FC['Enhancing Magic'], {
    legs="Doyen Pants"})

sets.precast.FC['Healing Magic'] = set_combine(sets.precast.FC, {
    main="Vadose Rod",
    back="Disperser's Cape",
    legs="Ebers Pantaloons +1"})

sets.precast.FC.StatusRemoval = sets.precast.FC['Healing Magic']

sets.precast.FC.Cure = set_combine(sets.precast.FC['Healing Magic'], {
    main="Queller Rod",
    sub="Sors Shield",
    head="Vanya Hood",
    ear1="Mendicant's Earring",
    hands="Kaykaus Cuffs"})
    
sets.precast.FC.Curaga = sets.precast.FC.Cure
sets.precast.FC.CureSolace = sets.precast.FC.Cure
sets.precast.FC.CureAura = sets.precast.FC.Cure
-- CureMelee spell map should default back to Healing Magic.

-- Precast sets to enhance JAs
sets.precast.JA.Benediction = {body="Piety Briault +1"}

-- Waltz set (chr and vit)
sets.precast.Waltz = {
    head="Vanya Hood",
    neck="Fortitude Torque",
    body="Vanya Robe",
    hands="Ayanmo Manopolas +2",
    ring1="Angel's Ring",
    ring2="Ayanmo Ring",
    back=Alaunus.DT,
    waist="Latria Sash",
    legs="Gyve Trousers",
    feet="Vanya Clogs"
}

-- Weaponskill sets

-- Default set for any weaponskill that isn't any more specifically defined
gear.default.weaponskill_neck = "Fotia Gorget"
gear.default.weaponskill_waist = "Fotia Belt"
sets.precast.WS = {
    ammo="Vanir Battery",
    head="Chironic Hat",
    neck="Fotia Gorget",
    ear1="Moonshade Earring",
    ear2="Ishvara Earring",
    body="Ayanmo Corazza +2",
    hands="Ayanmo Manopolas +2",
    ring1="Rufescent Ring",
    ring2="Ilabrat Ring",
    back=Alaunus.TP,
    waist="Fotia Belt",
    legs="Ayanmo Cosciales +2",
    feet="Ayanmo Gambieras +2"
}

sets.precast.WS['Flash Nova'] = {
    ammo="Amar Cluster",
    head="Theophany Cap +2",
    neck="Baetyl Pendant",
    ear1="Malignance Earring",
    ear2="Regal Earring",
    body="Volte Doublet",
    hands="Regal Cuffs",
    ring1="Freke Ring",
    ring2="Rufescent Ring",
    back=Alaunus.MND,
    waist="Eschan Stone",
    legs="Lengo Pants",
    feet="navon Crackows"
}
    
sets.precast.WS['Seraph Strike'] = {
    ammo="Amar Cluster",
    head="Theophany Cap +2",
    neck="Baetyl Pendant",
    ear1="Malignance Earring",
    ear2="Regal Earring",
    body="Volte Doublet",
    hands="Regal Cuffs",
    ring1="Freke Ring",
    ring2="Rufescent Ring",
    back=Alaunus.MND,
    waist="Eschan Stone",
    legs="Lengo Pants",
    feet="navon Crackows"
}

sets.precast.WS['Shining Strike'] = {
    ammo="Amar Cluster",
    head="Theophany Cap +2",
    neck="Baetyl Pendant",
    ear1="Malignance Earring",
    ear2="Regal Earring",
    body="Volte Doublet",
    hands="Regal Cuffs",
    ring1="Freke Ring",
    ring2="Rufescent Ring",
    back=Alaunus.MND,
    waist="Eschan Stone",
    legs="Lengo Pants",
    feet="navon Crackows"
}
    
sets.precast.WS['Mystic Boon'] = {
    ammo="Amar Cluster",
    head="Ayanmo Zucchetto +2",
    neck="Caro Necklace",
    ear1="Malignance Earring",
    ear2="Regal Earring",
    body="Piety Briault +1",
    hands="Regal Cuffs",
    ring1="Rufescent Ring",
    ring2="Persis Ring",
    back=Alaunus.MND,
    waist="Grunfeld Rope",
    legs="Ayanmo Cosciales +2",
    feet="Ayanmo Gambieras +2"
}
    
sets.precast.WS['Hexa Strike'] = {
    ammo="Amar Cluster",
    head="Ayanmo Zucchetto +2",
    neck="Fotia Gorget",
    ear1="Malignance Earring",
    ear2="Regal Earring",
    body="Piety Briault +1",
    hands="Regal Cuffs",
    ring1="Cacoethic Ring +1",
    ring2="Rufescent Ring",
    back=Alaunus.MND,
    waist="Fotia Belt",
    legs="Ayanmo Cosciales +2",
    feet="Ayanmo Gambieras +2"
}
    
sets.precast.WS['Realmrazer'] = {
    ammo="Amar Cluster",
    head="Ayanmo Zucchetto +2",
    neck="Caro Necklace",
    ear1="Malignance Earring",
    ear2="Regal Earring",
    body="Piety Briault +1",
    hands="Regal Cuffs",
    ring1="Cacoethic Ring +1",
    ring2="Rufescent Ring",
    back=Alaunus.MND,
    waist="Grunfeld Rope",
    legs="Ayanmo Cosciales +2",
    feet="Ayanmo Gambieras +2"
}
    
sets.precast.WS['Black Halo'] = {
    ammo="Amar Cluster",
    head="Ayanmo Zucchetto +2",
    neck="Caro Necklace",
    ear1="Malignance Earring",
    ear2="Regal Earring",
    body="Piety Briault +1",
    hands="Regal Cuffs",
    ring1="Cacoethic Ring +1",
    ring2="Rufescent Ring",
    back=Alaunus.MND,
    waist="Grunfeld Rope",
    legs="Ayanmo Cosciales +2",
    feet="Ayanmo Gambieras +2"
}
    
sets.precast.WS['Full Swing'] = {
    ammo="Amar Cluster",
    head="Ayanmo Zucchetto +2",
    neck="Caro Necklace",
    ear1="Ishvara Earring",
    ear2="Moonshade Earring",
    body="Piety Briault +1",
    hands="Regal Cuffs",
    ring1="Cacoethic Ring +1",
    ring2="Rufescent Ring",
    back=Alaunus.MND,
    waist="Grunfeld Rope",
    legs="Ayanmo Cosciales +2",
    feet="Ayanmo Gambieras +2"
}
-- Midcast Sets

sets.midcast.FastRecast = {
    main="Vadose Rod",
    sub="Ammurapi Shield",
    ammo="Impatiens",
    head=TelchineHead.Enh,
    neck="Orunmila's Torque",
    ear1="Loquacious Earring",
    ear2="Malignance Earring",
    body=TelchineBody.Enh,
    hands="Dynasty Mitts",
    ring1="Prolix Ring",
    ring2="Kishar Ring",
    back=Alaunus.DT,
    waist="Witful Belt",
    legs=TelchineLegs.Enh,
    feet="Theophany Duckbills +2"	
}

-- Cure sets
gear.default.obi_waist = "Hachirin-no-Obi"
gear.default.obi_back = "Twilight Cape"

sets.midcast.CureSolace = {
    main="Queller Rod",
    sub="Sors Shield",
    ammo="Sapience Orb",
    head="Ebers Cap +1",
    neck="Incanter's Torque",
    ear1="Glorious Earring",
    ear2="Nourishing Earring +1",
    body="Ebers Bliaud +1",
    hands="Theophany Mitts +2",
    ring1="Stikini Ring",
    ring2="Lebeche Ring",
    back=Alaunus.MND,
    waist="Austerity Belt",
    legs="Ebers Pantaloons +1",
    feet="Vanya Clogs"
}

sets.midcast.CureAuraSolace = {
    main="Chatoyant Staff",
    sub="Enki Strap",
    ammo="Sapience Orb",
    head="Ebers Cap +1",
    neck="Incanter's Torque",
    ear1="Glorious Earring",
    ear2="Nourishing Earring +1",
    body="Ebers Bliaud +1",
    hands="Theophany Mitts +2",
    ring1="Stikini Ring",
    ring2="Lebeche Ring",
    back="Twilight Cape",
    waist="Hachirin-no-Obi",
    legs="Ebers Pantaloons +1",
    feet="Vanya Clogs"
}

sets.midcast.CureAura = {
    main="Chatoyant Staff",
    sub="Enki Strap",
    ammo="Sapience Orb",
    head="Ebers Cap +1",
    neck="Incanter's Torque",
    ear1="Glorious Earring",
    ear2="Nourishing Earring +1",
    body="Theophany Briault +2",
    hands="Theophany Mitts +2",
    ring1="Stikini Ring",
    ring2="Lebeche Ring",
    back="Twilight Cape",
    waist="Hachirin-no-Obi",
    legs="Ebers Pantaloons +1",
    feet="Vanya Clogs"
}
    
sets.midcast.Cure = {
    main="Queller Rod",
    sub="Sors Shield",
    ammo="Sapience Orb",
    head="Ebers Cap +1",
    neck="Incanter's Torque",
    ear1="Glorious Earring",
    ear2="Nourishing Earring +1",
    body="Theophany Briault +2",
    hands="Theophany Mitts +2",
    ring1="Stikini Ring",
    ring2="Lebeche Ring",
    back=Alaunus.MND,
    waist="Austerity Belt",
    legs="Ebers Pantaloons +1",
    feet="Vanya Clogs"
}

sets.midcast.Curaga = {
    main="Queller Rod",
    sub="Sors Shield",
    ammo="Sapience Orb",
    head="Ebers Cap +1",
    neck="Incanter's Torque",
    ear1="Glorious Earring",
    ear2="Nourishing Earring +1",
    body="Theophany Briault +2",
    hands="Theophany Mitts +2",
    ring1="Stikini Ring",
    ring2="Lebeche Ring",
    back=Alaunus.MND,
    waist="Austerity Belt",
    legs="Ebers Pantaloons +1",
    feet="Vanya Clogs"
}
    
sets.midcast.CuragaAura = {
    main="Chatoyant Staff",
    sub="Enki Strap",
    ammo="Sapience Orb",
    head="Ebers Cap +1",
    neck="Incanter's Torque",
    ear1="Glorious Earring",
    ear2="Nourishing Earring +1",
    body="Theophany Briault +2",
    hands="Theophany Mitts +2",
    ring1="Stikini Ring",
    ring2="Lebeche Ring",
    back="Twilight Cape",
    waist="Hachirin-no-Obi",
    legs="Ebers Pantaloons +1",
    feet="Vanya Clogs"
}

sets.midcast.CureMelee = {
    ammo="Sapience Orb",
    head="Ebers Cap +1",
    neck="Incanter's Torque",
    ear1="Glorious Earring",
    ear2="Nourishing Earring +1",
    body="Theophany Briault +2",
    hands="Theophany Mitts +2",
    ring1="Stikini Ring",
    ring2="Lebeche Ring",
    back=Alaunus.MND,
    waist="Austerity Belt",
    legs="Ebers Pantaloons +1",
    feet="Vanya Clogs"
}

sets.midcast.Cursna = {
    main="Queller Rod",
    sub="Genmei Shield",
    head="Ebers Cap +1",
    neck="Malison Medallion",
    ear1="Loquacious Earring",
    ear2="Malignance Earring",
    body="Ebers Bliaud +1",
    hands="Fanatic Gloves",
    ring1="Stikini Ring",
    ring2="Ephedra Ring",
    back=Alaunus.MND,
    waist="Witful Belt",
    legs="Theophany Pantaloons +2",
    feet="Vanya Clogs"
}

sets.midcast.StatusRemoval = {
    main="Septoptic",
    sub="Genmei Shield",		
    ammo="Sapience Orb",
    head="Ebers Cap +1",
    neck="Orunmila's Torque",
    ear1="Loquacious Earring",
    ear2="Malignance Earring",		
    body="Inyanga Jubbah +2",
    hands="Fanatic Gloves",
    ring1="Kishar Ring",
    ring2="Lebeche Ring",
    back=Alaunus.MND,
    waist="Witful Belt",
    legs="Ayanmo Cosciales +2",
    feet="Vanya Clogs"
}

-- 110 total Enhancing Magic Skill; caps even without Light Arts
sets.midcast['Enhancing Magic'] = {
    main="Gada",
    sub="Ammurapi Shield",
    ammo="Impatiens",
    head=TelchineHead.Enh,
    neck="Incanter's Torque",
    ear1="Loquacious Earring",
    ear2="Andoaa Earring",
    body=TelchineBody.Enh,
    hands="Dynasty Mitts",
    ring1="Stikini Ring",
    ring2="Stikini Ring",
    back="Merciful Cape",
    waist="Olympus Sash",
    legs=TelchineLegs.Enh,
    feet="Theophany Duckbills +2"
}

sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], {
    main="Septoptic",
    neck="Nodens Gorget",
    ear1="Earthcry Earring",
    waist="Siegel Sash"})

sets.midcast.Auspice = {
    main="Septoptic",
    sub="Ammurapi Shield",
    ammo="Impatiens",
    head=TelchineHead.Enh,
    neck="Incanter's Torque",
    ear1="Gifted Earring",
    ear2="Andoaa Earring",
    body=TelchineBody.Enh,
    hands="Dynasty Mitts",
    ring1="Stikini Ring",
    ring2="Stikini Ring",
    back="Merciful Cape",
    waist="Olympus Sash",
    legs=TelchineLegs.Enh,
    feet="Theophany Duckbills +2"
}

sets.midcast.BarElement = {
    main="Beneficus",
    sub="Ammurapi Shield",
    ammo="Impatiens",
    head="Ebers Cap +1",
    neck="Incanter's Torque",
    ear1="Loquacious Earring",
    ear2="Andoaa Earring",
    body="Ebers Bliaud +1",
    hands="Ebers Mitts +1",
    ring1="Stikini Ring",
    ring2="Stikini Ring",
    back="Merciful Cape",
    waist="Olympus Sash",
    legs="Piety Pantaloons +1",
    feet="Ebers Duckbills +1"
}

sets.midcast.Dispelga = set_combine(sets.midcast.MndEnfeebles, {
    main="Daybreak",
    sub="Ammurapi Shield",
    hands="Regal Cuffs"})

sets.midcast.Regen = {
    main="Bolelabunga",
    sub="Ammurapi Shield",
    ammo="Impatiens",
    ear1="Loquacious Earring",
    ear2="Malignance Earring",
    head="Inyanga Tiara +2",
    neck="Incanter's Torque",
    body="Piety Briault +1",
    hands="Ebers Mitts +1",
    ring1="Kishar Ring",
    ring2="Lebeche Ring",
    back=Alaunus.MND,
    legs="Theophany Pantaloons +2",
    feet="Theophany Duckbills +2"
}

sets.midcast.Protectra = {
    feet="Piety Duckbills"
}

sets.midcast.Shellra = {
    legs="Piety Pantaloons +1"
}
    
sets.midcast.Erase = {
    main="Septoptic",
    sub="Genmei Shield",
    ammo="Sapience Orb",
    head="Ebers Cap +1",
    neck="Cleric's Torque",
    ear1="Loquacious Earring",
    ear2="Malignance Earring",
    body="Ebers Bliaud +1",
    hands="Fanatic Gloves",
    ring1="Kishar Ring",
    ring2="Lebeche Ring",
    back=Alaunus.MND,
    waist="Witful Belt",
    legs="Ayanmo Cosciales +2",
    feet="Vanya Clogs"		
}

sets.midcast['Divine Magic'] = {
    main="Daybreak", 
    sub="Ammurapi shield",
    ammo="Pemphredo Tathlum",
    head="Ipoca Beret",
    neck="Jokushu Chain",
    ear1="Regal Earring",
    ear2="Malignance Earring",
    body="Volte Doublet",
    hands="Regal Cuffs",
    ring1="Stikini Ring",
    ring2="Freke Ring",
    back=Alaunus.Enfeeb,
    waist="Luminary Sash",
    legs="Theophany Pantaloons +2",
    feet="Theophany Duckbills +2"
}

sets.midcast['Dark Magic'] = {
    main=Grio.nuke, 
    sub="Enki Strap",
    ammo="Pemphredo Tathlum",
    head="Pixie Hairpin +1",
    neck="Erra Pendant",
    ear1="Regal Earring",
    ear2="Malignance Earring",
    body="Volte Doublet",
    hands="Regal Cuffs",
    ring1="Archon Ring",
    ring2="Evanescence Ring",
    back=Alaunus.Enfeeb,
    waist="Luminary Sash",
    legs="Theophany Pantaloons +2",
    feet="Theophany Duckbills +2"
}

-- Custom spell classes
sets.midcast.MndEnfeebles = {
    main="Maxentius", 
    sub="Ammurapi Shield",
    ammo="Pemphredo Tathlum",
    head="Theophany Cap +2",
    neck="Erra Pendant",
    ear1="Regal Earring",
    ear2="Malignance Earring",
    body="Volte Doublet",
    hands="Regal Cuffs",
    ring1="Kishar Ring",
    ring2="Stikini Ring",
    back=Alaunus.Enfeeb,
    waist="Porous Rope",
    legs="Chironic Hose",
    feet="Theophany Duckbills +2"
}

sets.midcast.IntEnfeebles = {
    main="Maxentius", 
    sub="Ammurapi Shield",
    ammo="Pemphredo Tathlum",
    head="Theophany Cap +2",
    neck="Erra Pendant",
    ear1="Regal Earring",
    ear2="Malignance Earring",
    body="Volte Doublet",
    hands="Regal Cuffs",
    ring1="Kishar Ring",
    ring2="Stikini Ring",
    back=Alaunus.Enfeeb,
    waist="Luminary Sash",
    legs="Chironic Hose",
    feet="Theophany Duckbills +2"
}


-- Sets to return to when not performing an action.

-- Resting sets
sets.resting = {}


-- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)
sets.idle = {
    main="Bolelabunga", 
    sub="Genmei Shield",
    ammo="Staunch Tathlum",
    head="Inyanga Tiara +2",
    neck="Loricate Torque +1",
    ear1="Genmei Earring",
    ear2="Etiolation Earring",
    body="Piety Briault +1",
    hands="Inyanga Dastanas +2",
    ring1="Defending Ring",
    ring2="Renaye Ring",
    back=Alaunus.DT,
    waist="Gishdubar Sash",
    legs="Inyanga Shalwar +2",
    feet="Inyanga Crackows +2"
}

sets.idle.PDT = {
    main="Malignance Pole", 
    sub="Genmei Shield",
    ammo="Staunch Tathlum",
    head="Inyanga Tiara +2",
    neck="Loricate Torque +1",
    ear1="Genmei Earring",
    ear2="Etiolation Earring",
    body="Volte Doublet",
    hands="Inyanga Dastanas +2",
    ring1="Defending Ring",
    ring2="Purity Ring",
    back=Alaunus.DT,
    waist="Gishdubar Sash",
    legs="Inyanga Shalwar +2",
    feet="Inyanga Crackows +2"
} --50% PDT/MDT || +758 (808) MEva || +25% Resist Silence (10% all others)

sets.idle.Town = {
    main="Bolelabunga", 
    sub="Genmei Shield",
    ammo="Staunch Tathlum",
    head="Inyanga Tiara +2",
    neck="Loricate Torque +1",
    ear1="Genmei Earring",
    ear2="Etiolation Earring",
    body="Volte Doublet",
    hands="Inyanga Dastanas +2",
    ring1="Defending Ring",
    ring2="Renaye Ring",
    back=Alaunus.DT,
    waist="Gishdubar Sash",
    legs="Inyanga Shalwar +2",
    feet="Herald's Gaiters"
}

sets.idle.Weak = {
    main="Bolelabunga", 
    sub="Genmei Shield",
    ammo="Homiliary",
    head="Inyanga Tiara +2",
    neck="Loricate Torque +1",
    ear1="Genmei Earring",
    ear2="Etiolation Earring",
    body="Volte Doublet",
    hands="Inyanga Dastanas +2",
    ring1="Defending Ring",
    ring2="Vocane Ring",
    back=Alaunus.DT,
    waist="Gishdubar Sash",
    legs="Inyanga Shalwar +2",
    feet="Inyanga Crackows +2"
}

-- Defense sets

sets.defense.PDT = {
    main="Bolelabunga", 
    sub="Genmei Shield",
    ammo="Staunch Tathlum",
    head="Ayanmo Zucchetto +2",
    neck="Loricate Torque +1",
    ear1="Ethereal Earring",
    ear2="Loquacious Earring",
    body="Volte Doublet",
    hands="Ayanmo Manopolas +2",
    ring1="Defending Ring",
    ring2="Warden's Ring",
    back=Alaunus.DT,
    waist="Latria Sash",
    legs="Inyanga Shalwar +2",
    feet="Ayanmo Gambieras +2"
}

sets.defense.MDT = {
    main="Bolelabunga", 
    sub="Genmei Shield",
    ammo="Staunch Tathlum",
    head="Ayanmo Zucchetto +2",
    neck="Loricate Torque +1",
    ear1="Ethereal Earring",
    ear2="Loquacious Earring",
    body="Volte Doublet",
    hands="Ayanmo Manopolas +2",
    ring1="Defending Ring",
    ring2="Warden's Ring",
    back=Alaunus.DT,
    waist="Latria Sash",
    legs="Inyanga Shalwar +2",
    feet="Ayanmo Gambieras +2"
}

sets.Kiting = {}

sets.latent_refresh = {waist="Fucho-no-Obi"}

-- Engaged sets

-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
-- sets if more refined versions aren't defined.
-- If you create a set with both offense and defense modes, the offense mode should be first.
-- EG: sets.engaged.Dagger.Accuracy.Evasion

-- Basic set for if no TP weapon is defined.
sets.engaged = {
    ammo="Vanir Battery",
    head="Ayanmo Zucchetto +2",
    neck="Clotharius Torque",
    ear1="Cessance Earring",
    ear2="Telos Earring",
    body="Ayanmo Corazza +2",
    hands="Ayanmo Manopolas +2",
    ring1="Petrov Ring",
    ring2="Ilabrat Ring",
    back=Alaunus.TP,
    waist="Grunfeld Rope",
    legs="Ayanmo Cosciales +2",
    feet="Ayanmo Gambieras +2"
}

-- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
sets.buff['Divine Caress'] = {
    hands="Ebers Mitts +1"}