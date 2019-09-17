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

-- Precast Sets

-- Fast cast sets for spells
sets.precast.FC = {
    main=Kali.D, 
    sub="Genmei Shield", 
    range=Linos.FC,
    head=Vanya.Head.D, 
    neck="Voltsurge Torque",
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
    range=Linos.FC,
    head="Fili Calot +1",
    neck="Voltsurge Torque",
    ear1="Aoidos' Earring",
    ear2="Loquacious Earring",
    body="Inyanga Jubbah +2",
    hands="Leyline Gloves",
    ring1="Defending Ring",
    ring2="Kishar Ring",
    back=Intarabus.FC,
    waist="Witful Belt",
    legs="Ayanmo Cosciales +2",
    feet="Bihu Slippers +1"
}

sets.precast.FC['Honor March'] = {
    main=Kali.D,
    sub="Genmei Shield",
    range="Marsyas",
    head="Fili Calot +1",
    neck="Voltsurge Torque",
    ear1="Aoidos' Earring",
    ear2="Loquacious Earring",
    body="Inyanga Jubbah +2",
    hands="Leyline Gloves",
    ring1="Defending Ring",
    ring2="Kishar Ring",
    back=Intarabus.FC,
    waist="Witful Belt",
    legs="Ayanmo Cosciales +2",
    feet="Bihu Slippers +1"
}

-- set_combine(sets.precast.FC.BardSong, {range="Marsyas",})

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
sets.midcast.Minne  =   {}
sets.midcast.Carol  =   {}
sets.midcast.Paeon =    {}
sets.midcast.Mazurka =  {range="Marsyas"}


-- Lullaby Customizations
sets.midcast.Lullaby = {range="Marsyas"}
sets.midcast.Lullaby.Resistant = {range="Blurred Harp +1"}
sets.midcast['Horde Lullaby'] = {range="Marsyas"}
sets.midcast['Horde Lullaby'].Resistant = {range="Blurred Harp +1"}
sets.midcast['Horde Lullaby'].AoE = {range="Blurred Harp +1"}
sets.midcast['Horde Lullaby II'] = {range="Marsyas"}
sets.midcast['Horde Lullaby II'].Resistant = {range="Blurred Harp +1"}
sets.midcast['Horde Lullaby II'].AoE = {range="Blurred Harp +1"}

sets.midcast.SongEffect = {
    main=Kali.D,
    sub="Genmei Shield",
    range="Gjallarhorn",
    head="Fili Calot +1",
    neck="Moonbow Whistle +1",
    ear1="Etiolation Earring",
    ear2="Genmei Earring",
    body="Fili Hongreline +1",
    hands="Inyan. Dastanas +2",
    ring1="Stikini Ring",
    ring2="Stikini Ring",
    back=Intarabus.FC,
    waist="Flume Belt",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +2"
}

sets.midcast.SongDebuff = {
    main=Kali.D,
    sub="Genmei Shield",
    range="Gjallarhorn",
    head="Brioso Roundlet +2",
    neck="Moonbow Whistle +1",
    ear1="Lempo Earring",
    ear2="Hermetic Earring",
    body="Brioso Just. +1",
    hands="Brioso Cuffs +2",
    ring1="Stikini Ring",
    ring2="Stikini Ring",
    back=Intarabus.FC,
    waist="Luminary Sash",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +2"
}



sets.midcast['Foe Lullaby'] = {
    main=Kali.D,
    sub="Ammurapi Shield",
    range="Gjallarhorn",
    head="Brioso Roundlet +2",
    neck="Moonbow Whistle +1",
    ear1="Lempo Earring",
    ear2="Hermetic Earring",
    body="Ayanmo Corazza +1",
    hands="Brioso Cuffs +2",
    ring1="Stikini Ring",
    ring2="Stikini Ring",
    back=Intarabus.FC,
    waist="Luminary Sash",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +2"
}
sets.midcast['Foe Lullaby II'] = sets.midcast['Foe Lullaby']
sets.midcast['Horde Lullaby'] = {
    main=Kali.D,
    sub="Ammurapi Shield",
    range="Gjallarhorn",
    head="Brioso Roundlet +2",
    neck="Moonbow Whistle +1",
    ear1="Lempo Earring",
    ear2="Hermetic Earring",
    body="Brioso Just. +1", 
    hands="Brioso Cuffs +2",
    ring1="Stikini Ring",
    ring2="Stikini Ring",
    back=Intarabus.FC,
    waist="Luminary Sash",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +2"
}
sets.midcast['Horde Lullaby II'] = sets.midcast['Horde Lullaby']

-- Other general spells and classes.
sets.midcast.Cure = {
    main="Serenity",
    sub="Clerisy Strap",
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
    hands="Brioso Cuffs +2",
    ring1="Stikini Ring",
    ring2="Stikini Ring",
    back="Pahtli Cape",
    waist="Siegel Sash",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +2"
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
    hands="Brioso Cuffs +2",
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
    head="Brioso Roundlet +2",
    neck="Moonbow Whistle +1",
    ear1="Lempo Earring",
    ear2="Hermetic Earring",
    body="Brioso Just. +1",
    hands="Brioso Cuffs +2",
    ring1="Stikini Ring",
    ring2="Stikini Ring",
    back=Intarabus.FC,
    waist="Luminary Sash",
    legs="Brioso Cannions +1",
    feet="Brioso Slippers +2"
}

-- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)
sets.idle = {
    main=Kali.C,
    sub="Genmei Shield",
    range="Terpander",
    head="Inyanga Tiara +1",
    neck="Loricate Torque +1",
    ear1="Etiolation Earring",
    ear2="Genmei Earring",
    body="Inyanga Jubbah +2",
    hands="Inyan. Dastanas +2",
    ring1="Defending Ring",
    ring2="Inyanga Ring",
    back=Intarabus.Idle,
    waist="Flume Belt",
    legs="Assiduity Pants +1",
    feet="Fili Cothurnes +1"
}

-- "Aptitude Mantle"
-- Intarabus.TP

sets.idle.PDT = {
    main=Kali.C,
    sub="Genmei Shield",
    range="Terpander",
    head="Ayanmo Zucchetto +1",
    neck="Loricate Torque +1",
    ear1="Etiolation Earring",
    ear2="Odnowa Earring +1",
    body="Ayanmo Corazza +1",
    hands="Ayanmo Manopolas +1",
    ring1="Defending Ring",
    ring2="Vocane Ring",
    back=Intarabus.TP,
    waist="Flume Belt",
    legs="Ayanmo Cosciales +2",
    feet="Fili Cothurnes +1"
}
sets.idle.CP = {
    main=Kali.C,
    sub="Genmei Shield",
    range="Terpander",
    head="Inyanga Tiara +1",
    neck="Loricate Torque +1",
    ear1="Infused Earring",
    ear2="Genmei Earring",
    body="Inyanga Jubbah +2",
    hands="Inyan. Dastanas +2",
    ring1="Defending Ring",
    ring2="Inyanga Ring",
    back="Mecisto. Mantle",
    waist="Flume Belt",
    legs="Assiduity Pants +1",
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
    head="Ayanmo Zucchetto +1",
    neck="Sanctity Necklace",
    ear1="Cessance Earring",
    ear2="Telos Earring",
    body="Ayanmo Corazza +1",
    hands="Ayanmo Manopolas +1",
    ring1="Petrov Ring",
    ring2="Hetairoi Ring",
    back="Xucau Mantle",
    waist="Grunfeld Rope",
    legs="Ayanmo Cosciales +2",
    feet="Ayanmo Gambieras +1"
}

-- -- Sets with weapons defined.
-- sets.engaged.Dagger = {}

-- -- Set if dual-wielding
-- sets.engaged.DW = {}

-- Weaponskill sets
-- Default set for any weaponskill that isn't any more specifically defined
sets.precast.WS = {
    range=Linos.WSD,
    head="Aya. Zucchetto +1",
    neck="Fotia Gorget",
    ear1="Moonshade Earring",
    ear2="Ishvara Earring",
    body="Ayanmo Corazza +1",
    hands="Ayanmo Manopolas +1",
    ring1="Apate Ring",
    ring2="Hetairoi Ring",
    back=Intarabus.WSD,
    waist="Fotia Belt",
    legs="Aya. Cosciales +2",
    feet="Aya. Gambieras +1",
}


-- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
--sets.precast.WS['Rudra\'s Storm'] = set_combine(sets.precast.WS) 

--sets.precast.WS['Rudras Storm'] = sets.precast.WS['Rudra\'s Storm']

--sets.precast.WS['Mordant Rime'] = set_combine(sets.precast.WS)

--sets.precast.WS['Evisceration'] = set_combine(sets.precast.WS)

--sets.precast.WS['Exenterator'] = set_combine(sets.precast.WS, {ring2="Stormsoul Ring"})

--sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS, {ring2="Stormsoul Ring"})

-- sets.precast.WS['Requiescat'] = {
--     range=Linos.WSD,
--     head="Ayanmo Zucchetto +1",
--     neck="Fotia Gorget",
--     ear1="Moonshade Earring",
--     ear2="Brutal Earring",
--     body="Ayanmo Corazza +1",
--     hands="Ayanmo Manopolas +1",
--     ring1="Apate Ring",
--     ring2="Thundersoul Ring",
--     back="Atheling Mantle",
--     waist="Fotia Belt",
--     legs="Querkening Brais",
--     feet="Ayanmo Gambieras +1"
-- }

--sets.precast.WS['Savage Blade'] = {
--    range=Linos.WSD,
--    head="Ayanmo Zucchetto +1",
--    neck="Fotia Gorget",
--    ear1="Moonshade Earring",
--    ear2="Brutal Earring",
--    body="Bihu Justaucorps +1",
--    hands="Ayanmo Manopolas +1",
--    ring1="Apate Ring",
--    ring2="Thundersoul Ring",
--    back="Atheling Mantle",
--    waist="Fotia Belt",
--    legs="Querkening Brais",
--    feet="Ayanmo Gambieras +1"
--}