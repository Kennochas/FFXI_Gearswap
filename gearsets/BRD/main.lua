-- Augmented Armor -- 

Intarabus = {}
Intarabus.Idle = {name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}}
Intarabus.FC = {name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}}
Intarabus.TP = {name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Damage taken-5%',}}
Intarabus.WSD = {name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}}

Linos = {}
Linos.FC = {name="Linos", augments={'All Songs+2','"Fast Cast"+4','Singing skill +10',}} -- Fast Cast
Linos.MA = {name="Linos", augments={'Accuracy+13 Attack+13','"Dbl.Atk."+2','DEX+7',}} -- Multi-Attack TP
Linos.WSD = {name="Linos", augments={'Accuracy+12 Attack+12','Weapon skill damage +2%',}} -- WS DMG
Linos.PDT = { name="Linos", augments={'Phys. dmg. taken -3%',}} -- PDT

Kali = {}

Kali.C = {name="Kali", augments={'MP+60','Mag. Acc.+20','"Refresh"+1',}}
Kali.D = {name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}}

Vanya = {}
Vanya.Head = {}
Vanya.Body = {}
Vanya.Hands = {}
Vanya.Legs = {}
Vanya.Feet = {}

Vanya.Head.A = {name="Vanya Hood", augments={'MP+50','"Cure" potency +7%','Enmity-6',}}
Vanya.Head.D = {name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}}

Vanya.Hands.B = {name="Vanya Cuffs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}}

Vanya.Feet.B = {name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}}

Telchine = {}
Telchine.Head = {}
Telchine.Body = {}
Telchine.Hands = {}
Telchine.Legs = {}
Telchine.Feet = {}

Telchine.Feet.BardSong = {name="Telchine Pigaches", augments={'Song spellcasting time -5%',}}

-- Precast Sets

-- Fast cast sets for spells
sets.precast.FC = {
    main=Kali.D, 
    sub="Genmei Shield", 
    range=Linos.FC,
    head=Vanya.Head.D, 
    neck="Orunmila's Torque",
    ear1="Etiolation Earring",
    ear2="Loquacious Earring",
    body="Inyanga Jubbah +2",
    hands="Leyline Gloves",
    ring1="Defending Ring",
    ring2="Kishar Ring",
    back=Intarabus.FC,
    waist="Witful Belt",
    legs="Ayanmo Cosciales +2",
    feet="Kaykaus Boots +1"
}

sets.precast.FC.Cure = set_combine(
    sets.precast.FC, {
        ear2="Mendicant's Earring",
        legs="Doyen Pants"
    }
)

sets.precast.FC.Curaga = sets.precast.FC.Cure

sets.precast.FC["Dispelga"] = set_combine(sets.precast.FC,{main="Daybreak", sub="Ammurapi Shield"})

sets.precast.FC.Stoneskin = set_combine(
    sets.precast.FC, {
        head="Umuthi Hat",
        waist="Siegel Sash",
    }
)

sets.precast.FC['Enhancing Magic'] = set_combine(
    sets.precast.FC, {
        waist="Siegel Sash"
    }
)

sets.precast.FC.BardSong = {
    main=Kali.D,
    sub="Genmei Shield",
    head="Fili Calot +1",
    neck="Orunmila's Torque",
    ear1="Aoidos' Earring",
    ear2="Loquacious Earring",
    body="Inyanga Jubbah +2",
    hands="Leyline Gloves",
    ring1="Defending Ring",
    ring2="Kishar Ring",
    back=Intarabus.FC,
    waist="Witful Belt",
    legs="Ayanmo Cosciales +2",
    feet=Telchine.Feet.BardSong
}

sets.precast.FC["Honor March"] = set_combine(sets.precast.FC.BardSong,{range="Marsyas"})

sets.precast.Lullaby = sets.precast.FC.BardSong

sets.precast.FC.Daurdabla = set_combine(
    sets.precast.FC.BardSong, {
        range=info.ExtraSongInstrument
    }
)

-- Precast sets to enhance JAs

sets.precast.JA['Nightingale'] = {feet={ name="Bihu Slippers +1"}}
sets.precast.JA['Troubadour'] = {body={ name="Bihu Justaucorps +1"}}
sets.precast.JA['Soul Voice'] = {legs={ name="Bihu Cannions +1"}}

-- Extra song magic

sets.midcast.Daurdabla = { range=info.ExtraSongInstrument }
sets.midcast.DaurdablaDummy = set_combine(sets.midcast.SongRecast, {range=info.ExtraSongInstrument})

-- Midcast Sets
-- Buffing Songs
sets.midcast.Ballad =   { legs="Fili Rhingrave +1" }
sets.midcast.Minuet =   { body="Fili Hongreline +1" }
sets.midcast.March  =   { hands="Fili Manchettes +1" }
sets.midcast['Honor March'] = set_combine(sets.midcast.March,{range="Marsyas"})
sets.midcast.Minne  =   { legs="Mousai Seraweels" }
sets.midcast.Carol  =   { hands="Mousai Gages"}
sets.midcast.Paeon =    {}
sets.midcast.Mazurka =  { range="Marsyas" }


-- Lullaby Customizations
-- sets.midcast.Lullaby = {range="Marsyas"}
-- sets.midcast.Lullaby.Resistant = {range="Blurred Harp +1"}

sets.midcast['Horde Lullaby'] = { range="Daurdabla" }
sets.midcast['Horde Lullaby II'] = sets.midcast['Horde Lullaby']

--sets.midcast['Horde Lullaby'].Resistant = {range="Blurred Harp +1"}
--sets.midcast['Horde Lullaby'].AoE = {range="Blurred Harp +1"}
--sets.midcast['Horde Lullaby II'] = {range="Marsyas"}
--sets.midcast['Horde Lullaby II'].Resistant = {range="Blurred Harp +1"}
--sets.midcast['Horde Lullaby II'].AoE = {range="Blurred Harp +1"}

sets.midcast.SongEffect = {
    main="Carnwenhan",
    sub="Genmei Shield",
    range="Gjallarhorn",
    head="Fili Calot +1",
    neck="Moonbow Whistle +1",
    ear1="Etiolation Earring",
    ear2="Genmei Earring",
    body="Fili Hongreline +1",
    hands="Fili Manchettes +1",
    ring1="Defending Ring",
    ring2="Gelatinous Ring +1",
    back=Intarabus.FC,
    waist="Flume Belt",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +3"
}

sets.midcast.SongDebuff = {
    main="Daybreak",
    sub="Ammurapi Shield",
    range="Gjallarhorn",
    head="Brioso Roundlet +3",
    neck="Moonbow Whistle +1",
    ear1="Digni. Earring",
    ear2="Regal Earring",
    body="Brioso Justau. +2",
    hands="Brioso Cuffs +3",
    ring1="Stikini Ring",
    ring2="Stikini Ring",
    back=Intarabus.FC,
    waist="Luminary Sash",
    legs="Brioso Cannions +3",
    feet="Brioso Slippers +3"
}

sets.midcast.Lullaby = {
    main="Carnwenhan",
    sub="Ammurapi Shield",
    range="Gjallarhorn",
    head="Brioso Roundlet +3",
    neck="Moonbow Whistle +1",
    ear1="Digni. Earring",
    ear2="Regal Earring",
    body="Fili Hongreline +1",
    hands="Brioso Cuffs +3",
    ring1="Stikini Ring",
    ring2="Stikini Ring",
    back=Intarabus.FC,
    waist="Luminary Sash",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +3"
}

-- Other general spells and classes.
sets.midcast.Cure = {
    main="Daybreak",
    sub="Genmei Shield",
    range=Linos.FC,
    head=Vanya.Head.A,
    neck="Incanter's Torque",
    ear1="Etiolation Earring",
    ear2="Mendicant's Earring",
    body="Vrikodara Jupon",
    hands=Vanya.Hands.B,
    ring1="Stikini Ring",
    ring2="Stikini Ring",
    back="Solemnity Cape",
    waist="Luminary Sash",
    legs="Chironic Hose",
    feet=Vanya.Feet.B,
}
    
sets.midcast.Curaga = sets.midcast.Cure
    
sets.midcast.Stoneskin = {
    main=Kali.D,
    sub="Ammurapi Shield",
    range=Linos.FC,
    head="Umuthi Hat", 
    neck="Incanter's Torque",
    ear1="Earthcry Earring",
    ear2="Gifted Earring",
    body="Inyanga Jubbah +2",
    hands="Brioso Cuffs +3",
    ring1="Stikini Ring",
    ring2="Stikini Ring",
    back="Pahtli Cape",
    waist="Siegel Sash",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +3"
}
    
sets.midcast['Enhancing Magic'] = {
    main=Kali.D,
    sub="Ammurapi Shield",
    range=Linos.FC,
    head=Vanya.Head.D,
    neck="Incanter's Torque",
    ear1="Etiolation Earring",
    ear2="Gifted Earring",
    body="Inyanga Jubbah +2",
    hands="Leyline Gloves",
    ring1="Stikini Ring",
    ring2="Kishar Ring",
    back=Intarabus.FC,
    waist="Luminary Sash",
    legs="Ayanmo Cosciales +2",
    feet="Bihu Slippers +1"
}
    
sets.midcast.Cursna = {
    main="Chatoyant Staff",
    sub="Pax Grip",
    range=Linos.FC,
    head=Vanya.Head.D,
    neck="Incanter's Torque",
    ear1="Etiolation Earring",
    ear2="Gifted Earring",
    body="Inyanga Jubbah +2",
    hands="Brioso Cuffs +3",
    ring1="Stikini Ring",
    ring2="Stikini Ring",
    back=Intarabus.FC,
    waist="Luminary Sash",
    legs="Chironic Hose",
    feet="Bihu Slippers +1"
}

sets.midcast['Enfeebling Magic'] = {
    main=Kali.D,
    sub="Ammurapi Shield",
    range=Linos.FC,
    head="Brioso Roundlet +3",
    neck="Moonbow Whistle +1",
    ear1="Digni. Earring",
    ear2="Regal Earring",
    body="Brioso Justau. +2",
    hands="Brioso Cuffs +3",
    ring1="Stikini Ring",
    ring2="Stikini Ring",
    back=Intarabus.FC,
    waist="Luminary Sash",
    legs="Brioso Cannions +3",
    feet="Brioso Slippers +3"
}

sets.midcast["Dispelga"] = {
    main="Daybreak", 
    sub="Ammurapi Shield",
    head="Brioso Roundlet +3",
    neck="Moonbow Whistle +1",
    ear1="Digni. Earring",
    ear2="Regal Earring",
    body="Brioso Justaucorps +2",
    hands="Brioso Cuffs +3",
    ring1="Stikini Ring",
    ring2="Stikini Ring",
    back=Intarabus.FC,
    waist="Luminary Sash",
    legs="Brioso Cannions +3",
    feet="Brioso Slippers +3" 
}

-- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)
sets.idle = {
    main="Daybreak",
    sub="Genmei Shield",
    range=Linos.PDT,
    head="Inyanga Tiara +2",
    neck="Loricate Torque +1",
    ear1="Etiolation Earring",
    ear2="Genmei Earring",
    body="Inyanga Jubbah +2",
    hands="Inyan. Dastanas +2",
    ring1="Defending Ring",
    ring2="Inyanga Ring",
    back=Intarabus.Idle,
    waist="Flume Belt",
    legs="Brioso Cannions +3",
    feet="Fili Cothurnes +1"
}

sets.idle.town = {
    main="Carnwenhan",
    sub="Genmei Shield",
    range=Linos.PDT,
    head="Inyanga Tiara +2",
    neck="Loricate Torque +1",
    ear1="Etiolation Earring",
    ear2="Genmei Earring",
    body="Inyanga Jubbah +2",
    hands="Inyan. Dastanas +2",
    ring1="Defending Ring",
    ring2="Inyanga Ring",
    back=Intarabus.Idle,
    waist="Flume Belt",
    legs="Brioso Cannions +3",
    feet="Fili Cothurnes +1"
}

sets.idle.PDT = {
    main="Daybreak",
    sub="Genmei Shield",
    range=Linos.PDT,
    head="Inyanga Tiara +2",
    neck="Loricate Torque +1",
    ear1="Etiolation Earring",
    ear2="Genmei Earring",
    body="Inyanga Jubbah +2",
    hands="Inyan. Dastanas +2",
    ring1="Defending Ring",
    ring2="Inyanga Ring",
    back=Intarabus.Idle,
    waist="Flume Belt",
    legs="Brioso Cannions +3",
    feet="Inyan. Crackows +2"
}

sets.idle.DPS = {  
    main="Tauret",
    sub="Taming Sari",
    range=Linos.PDT,
    head="Inyanga Tiara +2",
    neck="Loricate Torque +1",
    ear1="Etiolation Earring",
    ear2="Genmei Earring",
    body="Inyanga Jubbah +2",
    hands="Inyan. Dastanas +2",
    ring1="Defending Ring",
    ring2="Inyanga Ring",
    back=Intarabus.Idle,
    waist="Flume Belt",
    legs="Brioso Cannions +3",
    feet="Fili Cothurnes +1"
}

sets.Kiting = set_combine(
    sets.idle.PDT, {
        feet="Fili Cothurnes +1"
    }
)

sets.latent_refresh = {waist="Fucho-no-obi"}

-- Engaged sets

-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
-- sets if more refined versions aren't defined.
-- If you create a set with both offense and defense modes, the offense mode should be first.
-- EG: sets.engaged.Dagger.Accuracy.Evasion

-- Basic set for if no TP weapon is defined.
sets.engaged = {
    main="Tauret",
    range=Linos.MA,
    head="Ayanmo Zucchetto +2",
    neck="Lissome Necklace",
    ear1="Cessance Earring",
    ear2="Telos Earring",
    body="Ayanmo Corazza +2",
    hands="Ayanmo Manopolas +2",
    ring1="Petrov Ring",
    ring2="Hetairoi Ring",
    back="Xucau Mantle",
    waist="Sailfi belt +1",
    legs="Jokushu Haidate",
    feet="Ayanmo Gambieras +2"
}

-- -- Sets with weapons defined.
sets.engaged.Dagger = {
    main="Tauret",
    range=Linos.MA,
    head="Ayanmo Zucchetto +2",
    neck="Sanctity Necklace",
    ear1="Cessance Earring",
    ear2="Telos Earring",
    body="Ayanmo Corazza +2",
    hands="Ayanmo Manopolas +2",
    ring1="Petrov Ring",
    ring2="Hetairoi Ring",
    back="Atheling Mantle",
    waist="Grunfeld Rope",
    legs="Jokushu Haidate",
    feet="Ayanmo Gambieras +2"
}

-- -- Set if dual-wielding
sets.engaged.DW = {
    main="Tauret",
    sub="Taming Sari",
    range=Linos.MA,
    head="Ayanmo Zucchetto +2",
    neck="Lissome Necklace",
    ear1="Cessance Earring",
    ear2="Telos Earring",
    body="Ayanmo Corazza +2",
    hands="Ayanmo Manopolas +2",
    ring1="Petrov Ring",
    ring2="Hetairoi Ring",
    back="Atheling Mantle",
    waist="Reiki Yotai",
    legs="Jokushu Haidate",
    feet="Ayanmo Gambieras +2"
}

-- Weaponskill sets
-- Default set for any weaponskill that isn't any more specifically defined
sets.precast.WS = {
    range=Linos.WSD,
    head="Ayanmo Zucchetto +2",
    neck="Fotia Gorget",
    ear1="Moonshade Earring",
    ear2="Ishvara Earring",
    body="Ayanmo Corazza +2",
    hands="Ayanmo Manopolas +2",
    ring1="Apate Ring",
    ring2="Hetairoi Ring",
    back=Intarabus.WSD,
    waist="Fotia Belt",
    legs="Ayanmo Cosciales +2",
    feet="Ayanmo Gambieras +2",
}


-- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
sets.precast.WS['Rudra\'s Storm'] = set_combine(sets.precast.WS) 

sets.precast.WS['Rudras Storm'] = sets.precast.WS['Rudra\'s Storm']

sets.precast.WS['Mordant Rime'] = set_combine(sets.precast.WS)


sets.precast.WS['Evisceration'] = set_combine(sets.precast.WS)

--sets.precast.WS['Exenterator'] = set_combine(sets.precast.WS, {ring2="Stormsoul Ring"})

--sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS, {ring2="Stormsoul Ring"})

-- sets.precast.WS['Requiescat'] = {
--     range=Linos.WSD,
--     head="Ayanmo Zucchetto +2",
--     neck="Fotia Gorget",
--     ear1="Moonshade Earring",
--     ear2="Brutal Earring",
--     body="Ayanmo Corazza +2",
--     hands="Ayanmo Manopolas +2",
--     ring1="Apate Ring",
--     ring2="Thundersoul Ring",
--     back="Atheling Mantle",
--     waist="Fotia Belt",
--     legs="Querkening Brais",
--     feet="Ayanmo Gambieras +2"
-- }

sets.precast.WS['Savage Blade'] = {
    range=Linos.WSD,
    head="Ayanmo Zucchetto +2",
    neck="Fotia Gorget",
    ear1="Moonshade Earring",
    ear2="Brutal Earring",
    body="Bihu Justaucorps +1",
    hands="Ayanmo Manopolas +2",
    ring1="Apate Ring",
    ring2="Thundersoul Ring",
    back="Atheling Mantle",
    waist="Fotia Belt",
    legs="Querkening Brais",
    feet="Ayanmo Gambieras +2"
}