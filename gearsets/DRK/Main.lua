-- Basic Array Initialization --
sets.TP = {}
sets.JA = {}
sets.Precast = {}
sets.Midcast = {}

-- JA Sets --

sets.JA['Diabolic Eye']		= { hands="Fallen's finger gauntlets +1" }
sets.JA['Arcane Circle']	= { feet="Ignominy Sollerets +2" }
sets.JA['Nether Void']		= { legs="Heath. Flanchard +1" }
sets.JA['Souleater']		= { head="Ignominy Burgonet +3" }
sets.JA['Weapon Bash']		= { hands="Ignominy Gauntlets +3" }
sets.JA['Last Resort']		= { back="Ankou's Mantle",feet="Fallen's Sollerets" }
sets.JA['Dark Seal']		= { head="Fallen's Burgeonet +1" }
sets.JA['Blood Weapon']		= { body="Fallen's Cuirass +1" }

-- Augmented Gear --
Ankou = {}

Odyssean = {}
Odyssean.Head   =   {}
Odyssean.Body   =   {}
Odyssean.Hands  =   {}
Odyssean.Legs   =   {}
Odyssean.Feet   =   {}

Valorous = {}
Valorous.Head   =   {}
Valorous.Body   =   {}
Valorous.Hands  =   {}
Valorous.Legs   =   {}
Valorous.Feet   =   {}

Ankou.WSDSTR    =   { name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}} -- Have
Ankou.DA        =	{ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}} -- Have
Ankou.WSDVIT    =	{ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}} -- Have
Ankou.ACC       =	{ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}} -- Have
Ankou.FC        =	{ name="Ankou's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}} -- Have
Ankou.STP       =	{ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}}
Ankou.INTDA     =	{ name="Ankou's Mantle", augments={'INT+20','Accuracy+20 Attack+20','INT+10','"Dbl.Atk."+10',}}
Ankou.MEVA      =  	{ name="Ankou's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}} -- Have

Odyssean.Head.WSD   = { name="Odyssean Helm", augments={'"Mag.Atk.Bns."+13','Weapon skill damage +4%','VIT+10','Accuracy+6',}}
Odyssean.Body.FC    = { name="Odyss. Chestplate", augments={'"Fast Cast"+5','VIT+3','Accuracy+4','Attack+13',}}
Odyssean.Hands.WSD  = { name="Odyssean Gauntlets", augments={'Accuracy+10','Weapon skill damage +4%','VIT+5','Attack+2',}}
Odyssean.Legs.DA    = { name="Odyssean Cuisses", augments={'Accuracy+28','"Dbl.Atk."+3',}}
Odyssean.Feet.WSD   = { name="Odyssean Greaves", augments={'Attack+20','Weapon skill damage +1%','VIT+15',}}
Odyssean.Feet.FC    = { name="Odyssean Greaves", augments={'Attack+20','Weapon skill damage +1%','VIT+15',}}

sets.Idle = {
    sub="Utu Grip",
    ammo="Staunch Tathlum",
    body="Lugra cloak +1",
    hands="Sulevia's Gauntlets +2",
    legs="Carmine cuisses +1",
    feet="Sulev. Leggings +2",
    neck="Loricate Torque +1",
    waist="Flume Belt",
	left_ear="Telos Earring",
    right_ear="Genmei Earring",
    left_ring="Sulevia's Ring",
    right_ring="Defending Ring",
    back=Ankou.ACC,
}

-- Regen Set Base--
sets.Idle.Regen = set_combine(
    sets.Idle,{
        neck="Sanctity Necklace",
        ring2="Chirich Ring",
    }
)

-- Movement Set Base--
sets.Idle.Movement = set_combine(
    sets.Idle,{
        legs="Carmine Cuisses +1"
    }
)

-- Refresh Set Base --
sets.Idle.Refresh = set_combine(
    sets.Idle,{
        neck="Vim Torque +1",
        body="Lugra Cloak +1"
    }
)

-- Regain Set Base --
sets.Idle.Regain = set_combine(
    sets.Idle,{
        head="Ratri Sallet",
        ammo="Ginsen",
        --hands=ValoHands.STP,
        --legs=OdysLegs.STP, 
        --feet=ValoFeet.STPACC,
        neck="Ainia Collar",
        body="Sulevia's Platemail +2",
        waist="Kentarch Belt +1",
        left_ear="Telos Earring",
        right_ear="Enervating Earring",
        left_ring="Chirich Ring",
        right_ring="Petrov Ring",
        back=Ankou.STP,
    }
)

-- Twilight Reraise Set -- 
sets.Twilight = set_combine(
    sets.Idle.Regen,{
        head="Twilight Helm",
        body="Twilight Mail"
    }
)

-- PDT/MDT Sets --
sets.PDT = {
    ammo="Ginsen",
    head="Sulevia's Mask +2",
    body="Valorous Mail",
    hands="Sulevia's Gauntlets +2",
    legs="Sulevia's Cuisses +2",
    feet="Sulevia's Leggings +2",
    neck="Loricate Torque +1",
    waist="Ioskeha Belt",
	left_ear="Telos Earring",
    right_ear="Cessance Earring",
    left_ring="Sulevia's Ring",
    right_ring="Defending Ring",
    back=Ankou.ACC,
}

-- Fastcast Set --
sets.Precast.FastCast = {
    head="Carmine Mask",
    neck="Orunmila's Torque",
    body=Odyssean.Body.FC,
    hands="Leyline Gloves",
    legs="Eschite Cuisses",
    feet=Odyssean.Feet.FC,
    left_ear="Malignance Earring",
    right_ear="Loquacious Earring",
    left_ring="Kishar Ring",
    right_ring="Prolix Ring",
    back=Ankou.FC,
}

-- Precast Dark Magic --
sets.Precast['Dark Magic'] = set_combine(
    sets.Precast.FastCast,{
        -- Stuff goes here --
    }
)

-- Magic Haste Set --
sets.Midcast.Haste = set_combine(
    sets.PDT,{
        -- Stuff goes here --
    }
)

-- Dark Magic Set --
sets.Midcast['Dark Magic'] = {
    ammo="Pemphredo Tathlum",
    head="Ignominy Burgonet +3",
    body="Carmine Scale Mail",
    hands="Fallen's finger gauntlets +1",
    legs="Eschite cuisses",
    feet="Ignominy Sollerets +2",
    neck="Erra Pendant",
    waist="Casso sash",
    left_ear="Hermetic Earring",
    right_ear="Dark Earring",
    left_ring="Stikini Ring",
    right_ring="Evanescence Ring",
    back="Niht Mantle",
}
-- Absorb Set --
sets.Midcast.Absorb = {
    ammo="Pemphredo Tathlum",
    head="Ignominy Burgonet +3",
    body="Carmine Scale Mail",
    legs="Eschite cuisses",
    feet="Ratri Sollerets",
    neck="Erra Pendant",
    waist="Casso Sash",
    left_ear="Hermetic Earring",
    right_ear="Dark Earring",
    right_ring="Kishar Ring",
    hands="Pavor Gauntlets",
    left_ring="Evanescence Ring",
    back="Chuparrosa Mantle",
}
sets.Midcast.Absorb.Resist = set_combine(
    sets.Midcast.Absorb,{
        head="Carmine Mask", 
        hands="Leyline Gloves",
        left_ring="Regal Ring",
        right_ring="Stikini Ring",
        waist="Eschan Stone", 
        feet="Ignominy Sollerets +2",
        back=Ankou.FC
    }
)
sets.Midcast.Absorb.Duration = set_combine(
    sets.Midcast.Absorb,{
        hands="Onyx Gadlings", 
        legs="Black Cuisses",
    }
)
-- Absorb-TP Set --
sets.Midcast['Absorb-TP'] = set_combine(
    sets.Midcast.Absorb,{
        hands="Heathen's Gauntlets +1",
    }
)
-- Stun Sets --
sets.Midcast.Stun = set_combine(
    sets.Midcast['Dark Magic'],{
        head="Carmine Mask",
        hands="Leyline Gloves",
        left_ring="Regal Ring",
        waist="Eschan Stone",
        legs="Eschite cuisses",
        feet="Ignominy Sollerets +2",
        back=Ankou.FC,
    }
)
sets.Midcast.Stun.Resist = set_combine(
    sets.Midcast.Stun,{
        -- Stuff goes here --
    }
)
sets.Midcast.Stun.Duration = set_combine(
    sets.Midcast.Stun,{
        left_ring="Stikini Ring",
        feet="Ratri Sollerets",
    }
)

-- Endark Set --
sets.Midcast['Endark II'] = {
    head="Ignominy Burgonet +3",
    body="Carmine Scale Mail",
    -- hands="Fallen's finger gauntlets +1",
    legs="Eschite cuisses",
    feet="Ratri Sollerets",
    neck="Erra Pendant",
    -- waist="Casso sash",
    left_ear="Dark Earring",
    right_ear="Loquacious Earring",
    left_ring="Stikini Ring",
    right_ring="Evanescence Ring", 
    --back="Niht Mantle",
}

-- Enfeebling Magic Set --
sets.Midcast['Enfeebling Magic'] = {
    ammo="Pemphredo Tathlum",
    head="Carmine Mask",
    body="Ignominy Cuirass +3",
    hands="Leyline Gloves",
    legs="Eschite cuisses",
    feet="Ignominy Sollerets +2",
    neck="Sanctity necklace",
    waist="Eschan Stone",
    left_ear="Loquacious Earring",
    right_ear="Hermetic Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back=Ankou.FC,
}

-- Elemental Magic Set --
sets.Midcast['Elemental Magic'] = {
    ammo="Pemphredo Tathlum",
    head="Carmine Mask",
    body="Carmine Scale Mail",
    hands="Leyline gloves",
    legs="Eschite Cuisses",
    feet="Ignominy Sollerets +2",
    neck="Sanctity necklace",
    waist="Eschan Stone",
    left_ear="Hecate's Earring",
    right_ear="Friomisi Earring",
    left_ring="Stikini Ring",
    right_ring="Shiva Ring",
    back=Ankou.FC,
}

-- Dread Spikes Set --
sets.Midcast['Dread Spikes'] = {
    ammo="Egoist's Tathlum",
    head="Ratri Sallet",
    body="Heathen's Cuirass +1",
    hands="Ratri Gadlings",
    legs="Ratri Cuisses",
    feet="Ratri Sollerets",
    neck="Sanctity necklace",
    waist="Eschan Stone",
    left_ear="Odnowa Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Meridian Ring",
    right_ring="Moonbeam Ring",
    back="Moonbeam Cape",
}
    
sets.Midcast.Drain = {
    ammo="Pemphredo Tathlum",
    neck="Erra Pendant",
    head="Fallen's Burgeonet +1",
    body="Carmine Scale Mail",
    hands="Flam. Manopolas +2",
    left_ring="Archon Ring",
    right_ring="Evanescence Ring",
    left_ear="Hermetic Earring",
    right_ear="Hirudinea Earring",
    back="Niht Mantle",
    waist="Austerity belt +1",
    legs="Eschite cuisses",
    feet="Ratri Sollerets",
} 

sets.Midcast.Aspir = set_combine(
    sets.Midcast.Drain, {
        -- Stuff goes here --
    }
)

sets.MAXDrain = {
    main="Misanthropy",
}

sets.MDT = set_combine(
    sets.PDT,{
        back="Moonbeam Cape", 
        waist="Tempus Fugit", 
        right_ring="Shadow Ring",
    }
)
                        
sets.Scarlet = set_combine(
    sets.PDT,{
        -- Stuff goes here --
    }
)

-- WS Base Set --
sets.WS = {
    ammo="Seething Bomblet +1",
    head="Argosy Celata",
    body="Ignominy Cuirass +3",
    hands="Argosy Mufflers",
    legs="Ignominy Flanchard +3",
    feet="Ratri Sollerets",
    neck="Fotia Gorget",
    waist="Fotia Belt",
	left_ear="Telos earring",
    right_ear="Moonshade earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back=Ankou.WSDSTR,
}

-- Resolution Sets --
sets.WS['Resolution'] = {		
    ammo="Seething Bomblet +1",
    head="Argosy Celata",
    body="Ignominy Cuirass +3",
    hands="Argosy Mufflers",
    legs="Ignominy Flanchard +3",
    feet="Flam. Gambieras +2",
    neck="Abyssal Beads +1",
    waist="Fotia Belt",
    left_ear="Moonshade Earring",
    right_ear="Brutal Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu ring",
    back=Ankou.DA
}

sets.WS['Resolution'].MidACC = set_combine(
    sets.WS['Resolution'],{
        hands="Ignominy Gauntlets +3",
        back=Ankou.DA
    }
)
    
sets.WS['Resolution'].HighACC = set_combine(
    sets.WS['Resolution'].MidACC,{
        -- Stuff goes here --
    }
)

-- Torcleaver Sets --
-- Description:	Deals triple damage. Damage varies with TP.
-- Stat Modifier:	80% VIT fTP:	4.75	7.5	10
sets.WS['Torcleaver'] = {
    ammo="Knobkierrie",
    head=Odyssean.Head.WSD,
    body="Ignominy Cuirass +3",
    hands=Odyssean.Hands.WSD,
    legs="Ratri Cuisses",
    feet="Sulev. Leggings +2",
    neck="Abyssal Beads +1",
    waist="Fotia Belt",
    left_ear="Moonshade Earring",
    right_ear="Thrud Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back=Ankou.WSDVIT
}
    
sets.WS['Torcleaver'].MidACC = set_combine(
    sets.WS['Torcleaver'],{
        ammo="Knobkierrie",
        head="Ignominy Burgonet +3",
        --hands=OdysHands.WSDVITACC,
        left_ear="Telos Earring",
    }
)
    
sets.WS['Torcleaver'].HighACC = set_combine(
    sets.WS['Torcleaver'].MidACC,{
        -- Stuff goes here --
    }
)

-- Scourge Sets --
--Relic Aftermath: +5% Critical Hit Rate 15 acc
--Stat Modifier:	40% STR / 40% VIT	fTP:	3.0
sets.WS['Scourge'] = {
    ammo="Knobkierrie",
    --head=OdysHead.WSD,
    body="Ignominy Cuirass +3",
    --hands=OdysHands.WSDVIT,
    --legs=OdysLegs.WSD,
    feet="Sulevia's Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal earring",
    right_ear="Thrud Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back=Ankou.WSDSTR,
}
    
sets.WS['Scourge'].MidACC = set_combine(
    sets.WS['Scourge'],{
        --hands=OdysHands.WSDVITACC,
        --legs=OdysLegs.WSD,
		left_ear="Telos Earring",
        right_ear="Cessance earring",

    }
)
    
sets.WS['Scourge'].HighACC = set_combine(
    sets.WS['Scourge'].MidACC,{
        -- Stuff goes here --
    }
)	

sets.WS['Shockwave'] = {
    ammo="Pemphredo Tathlum",
    head="Carmine Mask",
    body="Carmine Scale Mail",
    hands="Leyline Gloves",
    legs="Eschite cuisses",
    feet="Ignominy Sollerets +3",
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Telos Earring",
	right_ear="Hermetic Earring",
    left_ring="Regal Ring",
    right_ring="Stikini Ring",
    back=Ankou.INTDA,
}	

-- Catastrophe Sets --
--Stat Modifier:	40% STR / 40% INT	fTP:	2.75
--Relic Aftermath: 10% Equipment Haste (+102/1024) AG 10% Ability
sets.WS['Catastrophe'] = {
    ammo="Knobkierrie",
    head="Ratri Sallet",
    body="Ignominy Cuirass +3",
    hands="Ratri Gadlings",
    legs="Ratri Cuisses",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal Earring",
    right_ear="Thrud Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu ring",
    back=Ankou.WSDSTR
}
    
sets.WS['Catastrophe'].MidACC = set_combine(
    sets.WS['Catastrophe'],{
        left_ear="Telos Earring",
    }
)
    
sets.WS['Catastrophe'].HighACC = set_combine(
    sets.WS['Catastrophe'].MidACC,{
        -- Stuff goes here --
    }
)

sets.WS['Catastrophe'].PDT = {
    ammo="Knobkierrie",
    head="Sulevia's Mask +2",
    body="Ignominy Cuirass +3",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Flume Belt",
    left_ear="Brutal Earring",
    right_ear="Thrud Earring",
    left_ring="Sulevia's Ring",
    right_ring="Defending Ring",
    back=Ankou.WSDSTR
}
    
sets.WS['Catastrophe'].MidACC.PDT = set_combine(
    sets.WS['Catastrophe'].PDT,{
        -- Stuff goes here --
    }
)
    
sets.WS['Catastrophe'].HighACC.PDT = set_combine(
    sets.WS['Catastrophe'].MidACC.PDT,{
        -- Stuff goes here --
    }
)

-- Entropy Sets --
--Delivers a fourfold attack. Converts some of the damage into MP. Damage varies with TP.
--Stat Modifier:	73~85% INT fTP:	0.75	1.25	2.0
sets.WS['Entropy'] = {
    ammo="Pemphredo Tathlum",
    head="Ignominy Burgonet +3",
    --body=ValoBody.DA,
    hands="Ignominy Gauntlets +3",
    legs="Ignominy Flanchard +3",
    --feet=ValoFeet.INT,
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Moonshade earring",
    right_ear="Brutal Earring",
    left_ring="Shiva Ring",
    right_ring="Shiva Ring",
    back=Ankou.INTDA,
}
    
sets.WS['Entropy'].MidACC = set_combine(
    sets.WS['Entropy'],{
        left_ear="Telos earring",
    }
)
    
sets.WS['Entropy'].HighACC = set_combine(
    sets.WS['Entropy'].MidACC,{
        ammo="Seething Bomblet +1",
        body="Ignominy Cuirass +3",
    }
)
                        
-- CrossReaper Sets --
--Delivers a two-hit attack. Damage varies with TP.
--Stat Modifier:	60% STR / 60% MND fTP:	2.0	4.0	7.0
sets.WS['Cross Reaper'] = {
    ammo="Knobkierrie",
    head="Ratri Sallet",
    body="Ignominy Cuirass +3",
    hands="Ratri Gadlings",
    legs="Ratri Cuisses",
    feet="Ratri Sollerets",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Moonshade earring",
    right_ear="Thrud earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back=Ankou.WSDSTR,
}
    
sets.WS['Cross Reaper'].MidACC = set_combine(
    sets.WS['Cross Reaper'],{
        legs="Ignominy Flanchard +3",
        hands="Ignominy Gauntlets +3",
    }
)
    
sets.WS['Cross Reaper'].HighACC = set_combine(
    sets.WS['Cross Reaper'].MidACC,{
        head="Ignominy Burgonet +3",
        left_ear="Telos earring",
    }
)							

-- Insurgency Sets --
--Delivers a fourfold attack. Damage varies with TP.
--Stat Modifier:	20% STR / 20% INT fTP:	0.5	3.25	6.0
sets.WS['Insurgency'] = {
    ammo="Seething Bomblet +1",
    head="Ratri Sallet",
    body="Ignominy Cuirass +3",
    hands="Argosy Mufflers",
    legs="Ignominy Flanchard +3",
    feet="Argosy Sollerets",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Moonshade earring",
    right_ear="Brutal earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back=Ankou.DA,
}
    
sets.WS['Insurgency'].MidACC = set_combine(
    sets.WS['Insurgency'],{
        hands="Ignominy Gauntlets +3",
        feet="Ratri Sollerets",
    }
)
    
sets.WS['Insurgency'].HighACC = set_combine(
    sets.WS['Insurgency'].MidACC,{
        head="Ignominy Burgonet +3",
        left_ear="Telos earring",
    }
)

-- Quietus Sets --
--Delivers a triple damage attack that ignores target's defense. Amount ignored varies with TP.
--Stat Modifier:	60% STR / 60% MND Defense ignored:	10%	30%	50% fTP:	3.0
sets.WS['Quietus'] = {
    ammo="Knobkierrie",
    head="Ratri Sallet",
    body="Ignominy Cuirass +3",
    hands="Ratri Gadlings",
    legs="Ratri Cuisses",
    feet="Ratri Sollerets",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Moonshade earring",
    right_ear="Ishvara earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back=Ankou.WSDSTR,
}

sets.WS['Quietus'].MidACC = set_combine(
    sets.WS['Quietus'], {
        left_ear="Telos Earring",
    }
)
    
sets.WS['Quietus'].HighACC = set_combine(
    sets.WS['Quietus'].MidACC, {
        -- Stuff goes here --
    }
)

-----------------------------------------------------------------------------------------------------------------
-- works in motes based, not sure how to get it to work here
sets.Item = {HolyWater}
sets.Item['Holy Water'] = {
    ring1="Blenmot's Ring", 
    ring2="Blenmot's Ring",
}

--react sets
sets.Meva = {
    ammo="Staunch Tathlum",
    head="Ratri Sallet",
    neck="Warder's Charm",
    left_ear="Hearty Earring",
    right_ear="Eabani Earring",
    left_ring="Defending Ring",
    right_ring="Shadow Ring",
    legs="Ratri Cuisses",
    feet="Ratri Sollerets",
    hands="Ratri Gadlings",
    waist="Asklepian Belt",
    back=Ankou.MEVA,
}
sets.CurePotencyRecieved = {
    waist="Gishdubar sash", 
    neck="Phalaina Locket", 
    ring1="Kunaji Ring", 
    hands="Buremte Gloves",
}
sets.PhalanxRecieved = {
    --legs=OdysLegs.ENM, 
    --hands=OdysHands.PHALANX,
}
sets.RefreshRecieved = {
    waist="Gishdubar sash",
}
sets.CursnaRecieved = {
    waist="Gishdubar sash", 
    legs="Shabti Cuisses +1", 
    ring1="Eshmun's Ring", 
    ring2="Eshmun's Ring"
}
sets.ResistStun = set_combine(
    sets.Meva, {
        right_ear="Arete del Luna", 
        left_ear="Hearty Earring", 
        body="Onca Suit", 
    }
)
sets.ProShellRecieved = {
    ear1="Brachyura Earring",
}
sets.ResistTerror = set_combine(
    sets.Meva,{
        feet="Founder's Greaves",
    }
)