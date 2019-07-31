-- JA Sets --
sets.JA = {}
sets.JA['Diabolic Eye']		= {hands="Fallen's finger gauntlets +1"}
sets.JA['Arcane Circle']	= {feet="Ignominy Sollerets +3"}
sets.JA['Nether Void']		= {legs="Heath. Flanchard +1"}
sets.JA['Souleater']		= {head="Ignominy Burgonet +2"}
sets.JA['Weapon Bash']		= {hands="Ignominy Gauntlets +3"}
sets.JA['Last Resort']		= {back="Ankou's Mantle",feet="Fallen's Sollerets"}
sets.JA['Dark Seal']		= {head="Fallen's Burgeonet +1"}
sets.JA['Blood Weapon']		= {body="Fallen's Cuirass +1"}

-- Augmented Gear -- 

Ankou={}
Ankou.WSDSTR=	{ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
Ankou.DA=		{ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}}
Ankou.WSDVIT=	{ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}}
Ankou.ACC=		{ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}}
Ankou.FC=		{ name="Ankou's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}}
Ankou.STP=		{ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}}
Ankou.INTDA=	{ name="Ankou's Mantle", augments={'INT+20','Accuracy+20 Attack+20','INT+10','"Dbl.Atk."+10',}}
Ankou.MEVA= 	{ name="Ankou's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}}

Odyssean={}
Odyssean.Head={}
Odyssean.Body={}
Odyssean.Hands={}
Odyssean.Legs={}
Odyssean.Feet={}

Valorous={}
Valorous.Head={}
Valorous.Body={}
Valorous.Hands={}
Valorous.Legs={}
Valorous.Feet={}

Odyssean.Head.WSD   = { name="Odyssean Helm", augments={'"Mag.Atk.Bns."+13','Weapon skill damage +4%','VIT+10','Accuracy+6',}}
Odyssean.Body.FC    = { name="Odyss. Chestplate", augments={'"Fast Cast"+5','VIT+3','Accuracy+4','Attack+13',}}
Odyssean.Hands.WSD  = { name="Odyssean Gauntlets", augments={'Accuracy+10','Weapon skill damage +4%','VIT+5','Attack+2',}}
Odyssean.Legs.DA    = { name="Odyssean Cuisses", augments={'Accuracy+28','"Dbl.Atk."+3',}}
Odyssean.Feet.WSD   = { name="Odyssean Greaves", augments={'Attack+20','Weapon skill damage +1%','VIT+15',}}
Odyssean.Feet.FC    = { name="Odyssean Greaves", augments={'Attack+20','Weapon skill damage +1%','VIT+15',}}

sets.Idle = {
    sub="Utu Grip",
    ammo="Ginsen",
    head="",
    body="Lugra cloak +1",
    hands="Sulevia's Gauntlets +2",
    legs="Carmine cuisses +1",
    feet="Sulev. Leggings +2",
    neck="Loricate Torque +1",
    waist="Ioskeha Belt",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Sulevia's Ring",
    right_ring="Defending Ring",
    back=Ankou.ACC,
}

-- Regen Set --
sets.Idle.Regen = set_combine(
    sets.Idle,{
        neck="Sanctity Necklace",
        ring2="Chirich Ring",
    }
)
sets.Idle.Regen.Liberator = set_combine(
    sets.Idle.Regen,{
        main="Liberator"
    }
)
sets.Idle.Regen.Ragnarok = set_combine(
    sets.Idle.Regen,{
        main="Ragnarok"
    }
)
sets.Idle.Regen.Caladbolg = set_combine(
    sets.Idle.Regen,{
        main="Caladbolg"
    }
)
sets.Idle.Regen.Apocalypse = set_combine(
    sets.Idle.Regen,{
        main="Apocalypse"
    }
)
sets.Idle.Regen.Anguta = set_combine(
    sets.Idle.Regen,{
        main="Anguta"
    }
)

-- Movement Sets --
sets.Idle.Movement = set_combine(
    sets.Idle,{
        legs="Carmine Cuisses +1"
    }
)
sets.Idle.Movement.Liberator = set_combine(
    sets.Idle.Movement,{
        main="Liberator"
    }
)
sets.Idle.Movement.Ragnarok = set_combine(
    sets.Idle.Movement,{
        main="Ragnarok"
    }
)
sets.Idle.Movement.Caladbolg = set_combine(
    sets.Idle.Movement,{
        main="Caladbolg"
    }
)
sets.Idle.Movement.Apocalypse = set_combine(
    sets.Idle.Movement,{
        main="Apocalypse"
    }
)
sets.Idle.Movement.Anguta = set_combine(
    sets.Idle.Movement,{
        main="Anguta"
    }
)

-- Refresh Sets --
sets.Idle.Refresh = set_combine(
    sets.Idle,{
        neck="Vim Torque +1",
        body="Lugra Cloak +1"
    }
)
sets.Idle.Refresh.Liberator = set_combine(
    sets.Idle.Refresh,{
        main="Liberator"
    }
)
sets.Idle.Refresh.Ragnarok = set_combine(
    sets.Idle.Refresh,{
        main="Ragnarok"
    }
)
sets.Idle.Refresh.Caladbolg = set_combine(
    sets.Idle.Refresh,{
        main="Caladbolg"
    }
)
sets.Idle.Refresh.Apocalypse = set_combine(
    sets.Idle.Refresh,{
        main="Apocalypse"
    }
)
sets.Idle.Refresh.Anguta = set_combine(
    sets.Idle.Refresh,{
        main="Anguta"
    }
)

-- Regain Sets --
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
        right_ear="Telos Earring",
        left_ear="Enervating Earring",
        left_ring="Chirich Ring",
        right_ring="Petrov Ring",
        back=Ankou.STP,
    }
)
sets.Idle.Regain.Liberator = set_combine(
    sets.Idle.Regain,{
        main="Liberator"
    }
)
sets.Idle.Regain.Ragnarok = set_combine(
    sets.Idle.Regain,{
        main="Ragnarok"
    }
)
sets.Idle.Regain.Caladbolg = set_combine(
    sets.Idle.Regain,{
        main="Caladbolg"
    }
)
sets.Idle.Regain.Apocalypse = set_combine(
    sets.Idle.Regain,{
        main="Apocalypse"
    }
)
sets.Idle.Regain.Anguta = set_combine(
    sets.Idle.Regain,{
        main="Anguta"
    }
)

sets.Twilight = set_combine(
    sets.Idle.Regen,{
        head="Twilight Helm",
        body="Twilight Mail"
    }
)

sets.Precast = {}

-- Fastcast Set --
sets.Precast.FastCast = {
    -- ammo="Seeth. Bomblet +1",
    head="Carmine Mask",
    body=Odyssean.Body.FC,
    -- hands={ name="Fall. Fin. Gaunt. +1", augments={'Enhances "Diabolic Eye" effect',}},
    legs="Eschite Cuisses",
    feet=Odyssean.Feet.FC,
    -- neck="Incanter's Torque",
    -- waist="Ioskeha Belt",
    -- left_ear="Abyssal Earring",
    right_ear="Loquacious Earring",
    left_ring="Kishar Ring",
    -- right_ring="Evanescence Ring",
    back=Ankou.FC,
}

-- Precast Dark Magic --
sets.Precast['Dark Magic'] = set_combine(
    sets.Precast.FastCast,{
        -- Stuff goes here --
    }
)

-- Midcast Base Set --
sets.Midcast = {}

-- Magic Haste Set --
sets.Midcast.Haste = set_combine(
    sets.PDT,{
        -- Stuff goes here --
    }
)

-- Dark Magic Set --
sets.Midcast['Dark Magic'] = {
    ammo="Pemphredo Tathlum",
    head="Ignominy Burgonet +2",
    body="Carmine Scale Mail",
    hands="Fallen's finger gauntlets +1",
    legs="Eschite cuisses",
    feet="Ignominy Sollerets +3",
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
    head="Ignominy Burgonet +2",
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
        feet="Ignominy Sollerets +3",
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
        feet="Ignominy Sollerets +3",
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
    head="Ignominy Burgonet +2",
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
    feet="Ignominy Sollerets +3",
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
    feet="Ignominy Sollerets +3",
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
    left_ear="Hermetic Earring",
    right_ear="Hirudinea Earring",
    head="Pixie Hairpin +1",
    body="Carmine Scale Mail",
    hands="Fallen's finger gauntlets +1",
    left_ring="Archon Ring",
    right_ring="Evanescence Ring",
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
    -- main="Misanthropy",
    main="Dacnomania",
}

-- TP Base Set --
sets.TP = {}
-------------------------------------------------------------------------------------------------------------------------------------------------------------------	
---------------------------------------------------------------- LIBERATOR SETS -----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------	

-- Liberator(AM3 Down) TP Sets --
sets.TP.Liberator = {
    main="Liberator",
}
sets.TP.Liberator.MidACC = set_combine(
    sets.TP.Liberator,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.HighACC = set_combine(
    sets.TP.Liberator.MidACC,{
        -- Stuff goes here --
    }
)

-- Liberator(AM3 Up) TP Sets --
sets.TP.Liberator.AM3 = set_combine(
    sets.TP.Liberator,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.MidACC.AM3 = set_combine(
    sets.TP.Liberator.AM3,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.HighACC.AM3 = set_combine(
    sets.TP.Liberator.MidACC.AM3,{
        -- Stuff goes here --
    }
)

-- Liberator(AM3 Down: High Haste) TP Sets --
sets.TP.Liberator.HighHaste = set_combine(
    sets.TP.Liberator,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.MidACC.HighHaste = set_combine(
    sets.TP.Liberator.HighHaste,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.HighACC.HighHaste = set_combine(
    sets.TP.Liberator.MidACC.HighHaste,{
        -- Stuff goes here --
    }
)

-- Liberator(AM3 Up: High Haste) TP Sets --
sets.TP.Liberator.AM3.HighHaste = set_combine(
    sets.TP.Liberator.AM3,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.MidACC.AM3.HighHaste = set_combine(
    sets.TP.Liberator.AM3.HighHaste,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.HighACC.AM3.HighHaste = set_combine(
    sets.TP.Liberator.MidACC.AM3.HighHaste,{
        -- Stuff goes here --
    }
)

-- Liberator(AM3 Down: SAM Roll) TP Sets --
sets.TP.Liberator.STP = set_combine(
    sets.TP.Liberator,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.MidACC.STP = set_combine(
    sets.TP.Liberator.MidACC,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.HighACC.STP = set_combine(
    sets.TP.Liberator.HighACC,{
        -- Stuff goes here --
    }
)

-- Liberator(AM3 Up: SAM Roll) TP Sets --
sets.TP.Liberator.AM3.STP = set_combine(
    sets.TP.Liberator.AM3,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.MidACC.AM3.STP = set_combine(
    sets.TP.Liberator.MidACC.AM3,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.HighACC.AM3.STP = set_combine(
    sets.TP.Liberator.HighACC.AM3,{
        -- Stuff goes here --
    }
)

-- Liberator(AM3 Down: High Haste + SAM Roll) TP Sets --
sets.TP.Liberator.HighHaste.STP = set_combine(
    sets.TP.Liberator.HighHaste,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.MidACC.HighHaste.STP = set_combine(
    sets.TP.Liberator.MidACC.HighHaste,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.HighACC.HighHaste.STP = set_combine(
    sets.TP.Liberator.HighACC.HighHaste,{
        -- Stuff goes here --
    }
)

-- Liberator(AM3 Up: High Haste + SAM Roll) TP Sets --
sets.TP.Liberator.AM3.HighHaste.STP = set_combine(
    sets.TP.Liberator.HighHaste,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.MidACC.AM3.HighHaste.STP = set_combine(
    sets.TP.Liberator.MidACC.HighHaste,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.HighACC.AM3.HighHaste.STP = set_combine(
    sets.TP.Liberator.HighACC.HighHaste,{
        -- Stuff goes here --
    }
)

---------------------------------- /sam sets --------------------------------------

-- Liberator(AM3 Down) /SAM TP Sets --
sets.TP.Liberator.SAM = {
    main="Liberator",
}
sets.TP.Liberator.SAM.MidACC = set_combine(
    sets.TP.Liberator.SAM,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.SAM.HighACC = set_combine(
    sets.TP.Liberator.SAM.MidACC,{
        -- Stuff goes here --
    }
)

-- Liberator(AM3 Up) /SAM TP Sets --
sets.TP.Liberator.SAM.AM3 = set_combine(
    sets.TP.Liberator.SAM,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.SAM.MidACC.AM3 = set_combine(
    sets.TP.Liberator.SAM.AM3,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.SAM.HighACC.AM3 = set_combine(
    sets.TP.Liberator.SAM.MidACC.AM3,{
        -- Stuff goes here --
    }
)

-- Liberator(AM3 Down: High Haste) /SAM TP Sets --
sets.TP.Liberator.SAM.HighHaste = set_combine(
    sets.TP.Liberator.SAM,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.SAM.MidACC.HighHaste = set_combine(
    sets.TP.Liberator.SAM.HighHaste,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.SAM.HighACC.HighHaste = set_combine(
    sets.TP.Liberator.SAM.MidACC.HighHaste,{
        -- Stuff goes here --
    }
)

-- Liberator(AM3 Up: High Haste) /SAM TP Sets --
sets.TP.Liberator.SAM.AM3.HighHaste = set_combine(
    sets.TP.Liberator.SAM.AM3,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.SAM.MidACC.AM3.HighHaste = set_combine(
    sets.TP.Liberator.SAM.AM3.HighHaste,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.SAM.HighACC.AM3.HighHaste = set_combine(
    sets.TP.Liberator.SAM.MidACC.AM3.HighHaste,{
        -- Stuff goes here --
    }
)

-- Liberator(AM3 Down: SAM Roll) /SAM TP Sets --
sets.TP.Liberator.SAM.STP = set_combine(
    sets.TP.Liberator.SAM,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.SAM.MidACC.STP = set_combine(
    sets.TP.Liberator.SAM.MidACC,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.SAM.HighACC.STP = set_combine(
    sets.TP.Liberator.SAM.HighACC,{
        -- Stuff goes here --
    }
)

-- Liberator(AM3 Up: SAM Roll) /SAM TP Sets --
sets.TP.Liberator.SAM.AM3.STP = set_combine(
    sets.TP.Liberator.SAM.AM3,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.SAM.MidACC.AM3.STP = set_combine(
    sets.TP.Liberator.SAM.MidACC.AM3,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.SAM.HighACC.AM3.STP = set_combine(
    sets.TP.Liberator.SAM.HighACC.AM3,{
        -- Stuff goes here --
    }
)

-- Liberator(AM3 Down: High Haste + SAM Roll) /SAM TP Sets --
sets.TP.Liberator.SAM.HighHaste.STP = set_combine(
    sets.TP.Liberator.SAM.HighHaste,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.SAM.MidACC.HighHaste.STP = set_combine(
    sets.TP.Liberator.SAM.MidACC.HighHaste,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.SAM.HighACC.HighHaste.STP = set_combine(
    sets.TP.Liberator.SAM.HighACC.HighHaste,{
        -- Stuff goes here --
    }
)

-- Liberator(AM3 Up: High Haste + SAM Roll) /SAM TP Sets --
sets.TP.Liberator.SAM.AM3.HighHaste.STP = set_combine(
    sets.TP.Liberator.SAM.HighHaste,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.SAM.MidACC.AM3.HighHaste.STP = set_combine(
    sets.TP.Liberator.SAM.MidACC.HighHaste,{
        -- Stuff goes here --
    }
)
sets.TP.Liberator.SAM.HighACC.AM3.HighHaste.STP = set_combine(
    sets.TP.Liberator.SAM.HighACC.HighHaste,{
        -- Stuff goes here --
    }
)

-------------------------------------------------------------------------------------------------------------------------------------------------------------------	
---------------------------------------------------------------- RAGNAROK SETS -----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------	

-- Ragnarok TP Sets --
sets.TP.Ragnarok = {
    -- Stuff goes here --
} 
    
sets.TP.Ragnarok.MidACC = set_combine(
    sets.TP.Ragnarok,{
        -- Stuff goes here --
    }
) 
    
sets.TP.Ragnarok.HighACC = set_combine(
    sets.TP.Ragnarok.MidACC,{
        -- Stuff goes here --
    }
)
    
-- Ragnarok(High Haste) TP Sets --
sets.TP.Ragnarok.HighHaste = set_combine(
    sets.TP.Ragnarok,{
        -- Stuff goes here --
    }
)
sets.TP.Ragnarok.MidACC.HighHaste = set_combine(
    sets.TP.Ragnarok.HighHaste,{
        -- Stuff goes here --
    }
)
sets.TP.Ragnarok.HighACC.HighHaste = set_combine(
    sets.TP.Ragnarok.MidACC.HighHaste,{
        -- Stuff goes here --
    }
)

-- Ragnarok(SAM Roll) TP Sets --
sets.TP.Ragnarok.STP = set_combine(
    sets.TP.Ragnarok,{
        -- Stuff goes here --
    }
)
sets.TP.Ragnarok.MidACC.STP = set_combine(
    sets.TP.Ragnarok.STP,{
        -- Stuff goes here --
    }
)
sets.TP.Ragnarok.HighACC.STP = set_combine(
    sets.TP.Ragnarok.MidACC.STP,{
        -- Stuff goes here --
    }
)
                        
-- Ragnarok(High Haste + SAM Roll) TP Sets --
sets.TP.Ragnarok.HighHaste.STP = set_combine(
    sets.TP.Ragnarok.STP,{
        -- Stuff goes here --
    }
)
sets.TP.Ragnarok.MidACC.HighHaste.STP = set_combine(
    sets.TP.Ragnarok.MidACC.STP,{
        -- Stuff goes here --
    }
)
sets.TP.Ragnarok.HighACC.HighHaste.STP = set_combine(
    sets.TP.Ragnarok.HighACC.STP,{
        -- Stuff goes here --
    }
)

------------------- /sam sets -----------------------------

-- Ragnarok /SAM TP Sets --
sets.TP.Ragnarok.SAM = {
    -- Stuff goes here --
}

sets.TP.Ragnarok.SAM.MidACC = set_combine(
    sets.TP.Ragnarok.SAM,{
        -- Stuff goes here --
    }
) 

sets.TP.Ragnarok.SAM.HighACC = set_combine(
    sets.TP.Ragnarok.SAM.MidACC,{
        -- Stuff goes here --
    }
)

-- Ragnarok(High Haste) /SAM TP Sets --
sets.TP.Ragnarok.SAM.HighHaste = set_combine(
    sets.TP.Ragnarok.SAM,{
        -- Stuff goes here --
    }
)
sets.TP.Ragnarok.SAM.MidACC.HighHaste = set_combine(
    sets.TP.Ragnarok.SAM.MidACC,{
        -- Stuff goes here --
    }
)
sets.TP.Ragnarok.SAM.HighACC.HighHaste = set_combine(
    sets.TP.Ragnarok.SAM.HighACC,{
        -- Stuff goes here --
    }
)

-- Ragnarok(SAM Roll) /SAM TP Sets --
sets.TP.Ragnarok.SAM.STP = set_combine(
    sets.TP.Ragnarok.SAM,{
        -- Stuff goes here --
    }
)
sets.TP.Ragnarok.SAM.MidACC.STP = set_combine(
    sets.TP.Ragnarok.SAM.MidACC,{
        -- Stuff goes here --
    }
)
sets.TP.Ragnarok.SAM.HighACC.STP = set_combine(
    sets.TP.Ragnarok.SAM.HighACC,{
        -- Stuff goes here --
    }
)

-- Ragnarok(High Haste + SAM Roll) /SAM TP Sets --
sets.TP.Ragnarok.SAM.HighHaste.STP = set_combine(
    sets.TP.Ragnarok.SAM.STP,{
        -- Stuff goes here --
    }
)
sets.TP.Ragnarok.SAM.MidACC.HighHaste.STP = set_combine(
    sets.TP.Ragnarok.SAM.MidACC.STP,{
        -- Stuff goes here --
    }
)
sets.TP.Ragnarok.SAM.HighACC.HighHaste.STP = set_combine(
    sets.TP.Ragnarok.SAM.HighACC.STP,{
        -- Stuff goes here --
    }
)

-------------------------------------------------------------------------------------------------------------------------------------------------------------------	
---------------------------------------------------------------- APOCALYPSE SETS -----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------	

-- Apocalypse(AM Down) TP Sets --
sets.TP.Apocalypse = {
    main="Apocalypse",
    ammo="Ginsen",
    head="Flam. Zucchetto +2",
    hands="Sulevia's Gauntlets +2",
    legs="Ignominy Flanchard +3", 
    feet="Flamme Gambieras +2",
    neck="Lissome Necklace",
    --body=ValoBody.DA,
    waist="Ioskeha belt",
    right_ear="Telos Earring",
    left_ear="Cessance earring",
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back=Ankou.ACC,
} 
    
sets.TP.Apocalypse.MidACC = set_combine(
    sets.TP.Apocalypse,{
        ammo="Seething Bomblet +1",
        hands="Emicho Gauntlets +1",
    }
)
    
sets.TP.Apocalypse.HighACC = set_combine(
    sets.TP.Apocalypse.MidACC,{
        ammo="Ginsen",
        head="Ignominy Burgonet +2",
        body="Ignominy Cuirass +3",
        legs="Ignominy Flanchard +3",
        left_ring="Regal Ring",
        --feet=ValoFeet.STPACC,
    }
)

-- Apocalypse(AM Down: High Haste) TP Sets --
sets.TP.Apocalypse.HighHaste = set_combine(
    sets.TP.Apocalypse,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Apocalypse.MidACC.HighHaste = set_combine(
    sets.TP.Apocalypse.MidACC,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Apocalypse.HighACC.HighHaste = set_combine(
    sets.TP.Apocalypse.HighACC,{
        waist="Windbuffet Belt +1",
    }
)

-- Apocalypse(AM Down: SAM Roll) TP Sets --
sets.TP.Apocalypse.STP = set_combine(
    sets.TP.Apocalypse,{
        neck="Ganesha's Mala",
        left_ear="Brutal earring",
    }
)
sets.TP.Apocalypse.MidACC.STP = set_combine(
    sets.TP.Apocalypse.MidACC,{
        neck="Ganesha's Mala",
        left_ring="Regal Ring",
    }
)
sets.TP.Apocalypse.HighACC.STP = set_combine(
    sets.TP.Apocalypse.HighACC,{
        ammo="Seething Bomblet +1",
    }
)

-- Apocalypse(AM Down: High Haste + SAM Roll) TP Sets --
sets.TP.Apocalypse.HighHaste.STP = set_combine(
    sets.TP.Apocalypse.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Apocalypse.MidACC.HighHaste.STP = set_combine(
    sets.TP.Apocalypse.MidACC.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Apocalypse.HighACC.HighHaste.STP = set_combine(
    sets.TP.Apocalypse.HighACC.STP,{
        waist="Windbuffet Belt +1",
    }
)

-- Apocalypse(AM Up) TP Sets --
sets.TP.Apocalypse.AM = set_combine(
    sets.TP.Apocalypse,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Apocalypse.MidACC.AM = set_combine(
    sets.TP.Apocalypse.MidACC,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Apocalypse.HighACC.AM = set_combine(
    sets.TP.Apocalypse.HighACC,{
        waist="Windbuffet Belt +1",
    }
)

-- Apocalypse(AM Up: High Haste) TP Sets --
sets.TP.Apocalypse.AM.HighHaste = set_combine(
    sets.TP.Apocalypse.AM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Apocalypse.MidACC.AM.HighHaste = set_combine(
    sets.TP.Apocalypse.MidACC.AM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Apocalypse.HighACC.AM.HighHaste = set_combine(
    sets.TP.Apocalypse.HighACC.AM,{
        waist="Windbuffet Belt +1",
    }
)

-- Apocalypse(AM Up: SAM Roll) TP Sets --
sets.TP.Apocalypse.AM.STP = set_combine(
    sets.TP.Apocalypse.AM,{
        neck="Ganesha's Mala",
        left_ear="Brutal earring",
    }
)
sets.TP.Apocalypse.MidACC.AM.STP = set_combine(
    sets.TP.Apocalypse.MidACC.AM,{
        neck="Ganesha's Mala",
        left_ring="Regal Ring",
    }
)
sets.TP.Apocalypse.HighACC.AM.STP = set_combine(
    sets.TP.Apocalypse.HighACC.AM,{
        ammo="Seething Bomblet +1",
    }
)

-- Apocalypse(AM Up: High Haste + SAM Roll) TP Sets --
sets.TP.Apocalypse.AM.HighHaste.STP = set_combine(
    sets.TP.Apocalypse.AM.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Apocalypse.MidACC.AM.HighHaste.STP = set_combine(
    sets.TP.Apocalypse.MidACC.AM.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Apocalypse.HighACC.AM.HighHaste.STP = set_combine(
    sets.TP.Apocalypse.HighACC.AM.STP,{
        waist="Windbuffet Belt +1",
    }
)

------------ /sam sets --------------------------------

-- Apocalypse(AM Down) /SAM TP Sets --
sets.TP.Apocalypse.SAM = {
    main="Apocalypse",
    ammo="Ginsen",
    head="Flam. Zucchetto +2",
    hands="Sulevia's Gauntlets +2",
    legs=Odyssean.Legs.DA,
    feet="Flam. Gambieras +2",
    neck="Lissome Necklace",
    body="Valorous Mail",
    waist="Ioskeha belt",
    right_ear="Telos Earring",
    left_ear="Cessance earring",
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back=Ankou.ACC,
} 
    
sets.TP.Apocalypse.SAM.MidACC = set_combine(
    sets.TP.Apocalypse.SAM,{
        ammo="Seething Bomblet +1",
        hands="Emicho Gauntlets +1",
    }
)
    
sets.TP.Apocalypse.SAM.HighACC = set_combine(
    sets.TP.Apocalypse.SAM.MidACC,{
        ammo="Ginsen",
        head="Ignominy Burgonet +2",
        body="Ignominy Cuirass +3",
        legs="Ignominy Flanchard +3",
        left_ring="Regal Ring",
        --feet=ValoFeet.STPACC,
    }
)

-- Apocalypse(AM Down: High Haste) /SAM TP Sets --
sets.TP.Apocalypse.SAM.HighHaste = set_combine(
    sets.TP.Apocalypse.SAM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Apocalypse.SAM.MidACC.HighHaste = set_combine(
    sets.TP.Apocalypse.SAM.MidACC,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Apocalypse.SAM.HighACC.HighHaste = set_combine(
    sets.TP.Apocalypse.SAM.HighACC,{
        waist="Windbuffet Belt +1",
    }
)

-- Apocalypse(AM Down: SAM Roll) /SAM TP Sets --
sets.TP.Apocalypse.SAM.STP = set_combine(
    sets.TP.Apocalypse.SAM,{
        neck="Ganesha's Mala",
        left_ear="Brutal earring",
    }
)
sets.TP.Apocalypse.SAM.MidACC.STP = set_combine(
    sets.TP.Apocalypse.SAM.MidACC,{
        neck="Ganesha's Mala",
        left_ring="Regal Ring",
    }
)
sets.TP.Apocalypse.SAM.HighACC.STP = set_combine(
    sets.TP.Apocalypse.SAM.HighACC,{
        ammo="Seething Bomblet +1",
    }
)

-- Apocalypse(AM Down: High Haste + SAM Roll) /SAM TP Sets --
sets.TP.Apocalypse.SAM.HighHaste.STP = set_combine(
    sets.TP.Apocalypse.SAM.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Apocalypse.SAM.MidACC.HighHaste.STP = set_combine(
    sets.TP.Apocalypse.SAM.MidACC.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Apocalypse.SAM.HighACC.HighHaste.STP = set_combine(
    sets.TP.Apocalypse.SAM.HighACC.STP,{
        waist="Windbuffet Belt +1",
    }
)

-- Apocalypse(AM Up) /SAM TP Sets --
sets.TP.Apocalypse.SAM.AM = set_combine(
    sets.TP.Apocalypse.SAM,{
        -- Stuff goes here --
    }
)
sets.TP.Apocalypse.SAM.MidACC.AM = set_combine(
    sets.TP.Apocalypse.SAM.AM,{
        -- Stuff goes here --
    }
)
sets.TP.Apocalypse.SAM.HighACC.AM = set_combine(
    sets.TP.Apocalypse.SAM.MidACC.AM,{
        -- Stuff goes here --
    }
)

-- Apocalypse(AM Up: High Haste) /SAM TP Sets --
sets.TP.Apocalypse.SAM.AM.HighHaste = set_combine(
    sets.TP.Apocalypse.SAM.AM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Apocalypse.SAM.MidACC.AM.HighHaste = set_combine(
    sets.TP.Apocalypse.SAM.MidACC.AM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Apocalypse.SAM.HighACC.AM.HighHaste = set_combine(
    sets.TP.Apocalypse.SAM.HighACC.AM,{
        waist="Windbuffet Belt +1",
    }
)

-- Apocalypse(AM Up: SAM Roll) /SAM TP Sets --
sets.TP.Apocalypse.SAM.AM.STP = set_combine(
    sets.TP.Apocalypse.SAM.AM,{
        neck="Ganesha's Mala",
        left_ear="Brutal earring",
    }
)
sets.TP.Apocalypse.SAM.MidACC.AM.STP = set_combine(
    sets.TP.Apocalypse.SAM.MidACC.AM,{
        neck="Ganesha's Mala",
        left_ring="Regal Ring",
    }
)
sets.TP.Apocalypse.SAM.HighACC.AM.STP = set_combine(
    sets.TP.Apocalypse.SAM.HighACC.AM,{
        ammo="Seething Bomblet +1",
    }
)

-- Apocalypse(AM Up: High Haste + SAM Roll) /SAM TP Sets --
sets.TP.Apocalypse.SAM.AM.HighHaste.STP = set_combine(
    sets.TP.Apocalypse.SAM.AM.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Apocalypse.SAM.MidACC.AM.HighHaste.STP = set_combine(
    sets.TP.Apocalypse.SAM.MidACC.AM.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Apocalypse.SAM.HighACC.AM.HighHaste.STP = set_combine(
    sets.TP.Apocalypse.SAM.HighACC.AM.STP,{
        waist="Windbuffet Belt +1",
    }
)

-------------------------------------------------------------------------------------------------------------------------------------------------------------------	
---------------------------------------------------------------- CALADBOLG SETS -----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------	

-- Caladbolg(AM Down) TP Sets --
sets.TP.Caladbolg = {
    ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body="Valorous Mail",
    hands="Flam. Manopolas +2",
    legs="Flamma Dirs +2",
    feet="Flam. Gambieras +2",
    neck="Abyssal Beads +1",
    waist="Ioskeha Belt",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Flamma Ring",
    right_ring="Petrov Ring",
    back=Ankou.ACC,
}		
    
sets.TP.Caladbolg.MidACC = set_combine(
    sets.TP.Caladbolg,{
        body="Emicho Haubert +1",
        hands="Emicho Gauntlets +1",
        left_ear="Cessance earring",
        --left_ring="Chirich Ring",
    }
) 
    
sets.TP.Caladbolg.HighACC = set_combine(
    sets.TP.Caladbolg.MidACC,{
        head="Ignominy Burgonet +2",
        neck="Lissome Necklace",
        body="Ignominy Cuirass +3",
        hands="Ignominy Gauntlets +3",
        legs="Ignominy Flanchard +3",
        left_ring="Regal Ring",
    }
)
    
-- Caladbolg(AM Down: High Haste) TP Sets --
sets.TP.Caladbolg.HighHaste = set_combine(
    sets.TP.Caladbolg,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Caladbolg.MidACC.HighHaste = set_combine(
    sets.TP.Caladbolg.MidACC,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Caladbolg.HighACC.HighHaste = set_combine(
    sets.TP.Caladbolg.HighACC,{
        ammo="Seething Bomblet +1",
        waist="Kentarch Belt +1",
    }
)
-- Caladbolg(AM Down: SAM Roll) TP Sets --
sets.TP.Caladbolg.STP = set_combine(
    sets.TP.Caladbolg,{
        left_ear="Cessance earring",
        right_ring="Warp Ring",
    }
)
sets.TP.Caladbolg.MidACC.STP = set_combine(
    sets.TP.Caladbolg.MidACC,{
        -- Stuff goes here --
    }
)
sets.TP.Caladbolg.HighACC.STP = set_combine(
    sets.TP.Caladbolg.HighACC,{
        ammo="Seething Bomblet +1",
        neck="Lissome Necklace",
        ear1="Mache Earring",
        feet="Flamme Gambieras +2",
    }
)

-- Caladbolg(AM Down: High Haste + SAM Roll) TP Sets --
sets.TP.Caladbolg.HighHaste.STP = set_combine(
    sets.TP.Caladbolg.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Caladbolg.MidACC.HighHaste.STP = set_combine(
    sets.TP.Caladbolg.MidACC.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Caladbolg.HighACC.HighHaste.STP = set_combine(
    sets.TP.Caladbolg.HighACC.STP,{
        waist="Windbuffet Belt +1",
    }
)

-- Caladbolg(AM Up) TP Sets --
sets.TP.Caladbolg.AM = set_combine(
    sets.TP.Caladbolg,{
        ammo="Ginsen",
        head="Flam. Zucchetto +2",
        hands="Argosy Mufflers",
		legs="Flamma Dirs +2",
		feet="Flam. Gambieras +2",
        neck="Abyssal Beads +1",
        body="Valorous Mail",
        waist="Ioskeha belt",
        right_ear="Telos Earring",
        left_ear="Brutal earring",
        left_ring="Niqmaddu Ring",
        right_ring="Petrov Ring",
        back=Ankou.ACC,
    }
)
    
sets.TP.Caladbolg.MidACC.AM = set_combine(
    sets.TP.Caladbolg.AM,{
        hands="Emicho Gauntlets +1",
        left_ear="Cessance earring",
        left_ring="Chirich Ring",
    }
) 
    
sets.TP.Caladbolg.HighACC.AM = set_combine(
    sets.TP.Caladbolg.MidACC.AM,{
        head="Ignominy Burgonet +2",
        neck="Lissome Necklace",
        body="Ignominy Cuirass +3",
        hands="Ignominy Gauntlets +3",
        legs="Ignominy Flanchard +3",
        left_ring="Regal Ring",
    }
)

-- Caladbolg(AM Up: High Haste) TP Sets --
sets.TP.Caladbolg.AM.HighHaste = set_combine(
    sets.TP.Caladbolg.AM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Caladbolg.MidACC.AM.HighHaste = set_combine(
    sets.TP.Caladbolg.AM.MidACC,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Caladbolg.HighACC.AM.HighHaste = set_combine(
    sets.TP.Caladbolg.HighACC.AM,{
        ammo="Seething Bomblet +1",
        waist="Kentarch Belt +1",
    }
)

-- Caladbolg(AM Up: SAM Roll) TP Sets --
sets.TP.Caladbolg.AM.STP = set_combine(
    sets.TP.Caladbolg.STP,{
        left_ear="Cessance earring",
    }
)
sets.TP.Caladbolg.MidACC.AM.STP = set_combine(
    sets.TP.Caladbolg.MidACC.AM,{
        -- Stuff goes here --
    }
)
sets.TP.Caladbolg.HighACC.AM.STP = set_combine(
    sets.TP.Caladbolg.HighACC.AM,{
        ammo="Seething Bomblet +1",
        neck="Lissome Necklace",
        ear1="Mache Earring",
        feet="Flamme Gambieras +2",
    }
)

-- Caladbolg(AM Up: High Haste + SAM Roll) TP Sets --
sets.TP.Caladbolg.AM.HighHaste.STP = set_combine(
    sets.TP.Caladbolg.HighHaste.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Caladbolg.MidACC.AM.HighHaste.STP = set_combine(
    sets.TP.Caladbolg.MidACC.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Caladbolg.HighACC.AM.HighHaste.STP = set_combine(
    sets.TP.Caladbolg.HighACC.STP,{
        waist="Windbuffet Belt +1",
    }
)
    
-- Caladbolg /SAM TP Sets -------------------------------------------------------------------

-- Caladbolg(AM Down) TP Sets --  /SAM
--[ACC: 1150 STP: 61]--
sets.TP.Caladbolg.SAM = {
    main="Caladbolg",
    sub="Utu Grip",
    ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body="Valorous Mail",
    hands="Flam. Manopolas +2",
    legs=Odyssean.Legs.DA,
    feet="Flam. Gambieras +2",
    neck="Abyssal Beads +1",
    waist="Ioskeha Belt",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Flamma Ring",
    right_ring="Petrov Ring",
    back=Ankou.ACC,
} 
    
--[ACC: 1184 STP: 63]--	
sets.TP.Caladbolg.SAM.MidACC = set_combine(
    sets.TP.Caladbolg.SAM,{
        ammo="Seething Bomblet +1",
        body="Emicho Haubert +1",
        hands="Emicho Gauntlets +1",
        left_ear="Cessance earring",
        left_ring="Chirich Ring",
    }
) 
    
--[ACC: 1264 STP: 27]--		
sets.TP.Caladbolg.SAM.HighACC = set_combine(
    sets.TP.Caladbolg.SAM.MidACC,{
        head="Ignominy Burgonet +2",
        neck="Lissome Necklace",
        body="Ignominy Cuirass +3",
        hands="Ignominy Gauntlets +3",
        legs="Ignominy Flanchard +3",
        left_ring="Regal Ring",
    }
)

-- Caladbolg(AM3 Up) /SAM TP Sets --
sets.TP.Caladbolg.SAM.AM3 = set_combine(
    sets.TP.Caladbolg.SAM,{
        ammo="Ginsen",
        head="Flam. Zucchetto +2",
        body="Valorous Mail",
		hands="Flam. Manopolas +2",
		legs=Odyssean.Legs.DA,
		feet="Flam. Gambieras +2",
        neck="Abyssal Beads +1",
        waist="Ioskeha belt",
        right_ear="Telos Earring",
        left_ear="Brutal earring",
        left_ring="Niqmaddu Ring",
        right_ring="Petrov Ring",
        back=Ankou.ACC,
    }
)
sets.TP.Caladbolg.SAM.MidACC.AM3 = set_combine(
    sets.TP.Caladbolg.SAM.AM3,{
        body="Emicho Haubert +1",
        hands="Emicho Gauntlets +1",
        left_ear="Cessance earring",
        -- left_ring="Chirich Ring",
    }
)
sets.TP.Caladbolg.SAM.HighACC.AM3 = set_combine(
    sets.TP.Caladbolg.SAM.MidACC.AM3,{
        head="Ignominy Burgonet +2",
        neck="Lissome Necklace",
        body="Ignominy Cuirass +3",
        hands="Ignominy Gauntlets +3",
        legs="Ignominy Flanchard +3",
        left_ring="Regal Ring",
    }
)

-- Caladbolg(AM Down: High Haste) TP Sets -- /SAM
sets.TP.Caladbolg.SAM.HighHaste = set_combine(
    sets.TP.Caladbolg.SAM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Caladbolg.SAM.MidACC.HighHaste = set_combine(
    sets.TP.Caladbolg.SAM.MidACC,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Caladbolg.SAM.HighACC.HighHaste = set_combine(
    sets.TP.Caladbolg.SAM.HighACC,{
        ammo="Seething Bomblet +1",
        waist="Kentarch Belt +1",
    }
)

-- Caladbolg(AM3 Up: High Haste) /SAM TP Sets --
sets.TP.Caladbolg.SAM.AM3.HighHaste = set_combine(
    sets.TP.Caladbolg.SAM.AM3,{
        -- Stuff goes here --
    }
)
sets.TP.Caladbolg.SAM.MidACC.AM3.HighHaste = set_combine(
    sets.TP.Caladbolg.SAM.AM3.HighHaste,{
        -- Stuff goes here --
    }
)
sets.TP.Caladbolg.SAM.HighACC.AM3.HighHaste = set_combine(
    sets.TP.Caladbolg.SAM.MidACC.AM3.HighHaste,{
        -- Stuff goes here --
    }
)


-- Caladbolg(AM Down: SAM Roll) TP Sets -- /SAM
sets.TP.Caladbolg.SAM.STP = set_combine(
    sets.TP.Caladbolg.SAM,{
        left_ear="Cessance earring",
    }
)
sets.TP.Caladbolg.SAM.MidACC.STP = set_combine(
    sets.TP.Caladbolg.SAM.MidACC,{
        -- Stuff goes here --
    }
)
sets.TP.Caladbolg.SAM.HighACC.STP = set_combine(
    sets.TP.Caladbolg.SAM.HighACC,{
        ammo="Seething Bomblet +1",
        neck="Lissome Necklace",
        ear1="Mache Earring",
        feet="Flamme Gambieras +2",
    }
)

-- Caladbolg(AM Down: High Haste + SAM Roll) TP Sets -- /SAM
sets.TP.Caladbolg.SAM.HighHaste.STP = set_combine(
    sets.TP.Caladbolg.SAM.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Caladbolg.SAM.MidACC.HighHaste.STP = set_combine(
    sets.TP.Caladbolg.SAM.MidACC.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Caladbolg.SAM.HighACC.HighHaste.STP = set_combine(
    sets.TP.Caladbolg.SAM.HighACC.STP,{
        waist="Windbuffet Belt +1",
    }
)

-- Caladbolg(AM3 Up: High Haste + SAM Roll) /SAM TP Sets --
sets.TP.Caladbolg.SAM.AM3.HighHaste.STP = set_combine(
    sets.TP.Caladbolg.SAM.HighHaste,{
        -- Stuff goes here --
    }
)
sets.TP.Caladbolg.SAM.MidACC.AM3.HighHaste.STP = set_combine(
    sets.TP.Caladbolg.SAM.MidACC.HighHaste,{
        -- Stuff goes here --
    }
)
sets.TP.Caladbolg.SAM.HighACC.AM3.HighHaste.STP = set_combine(
    sets.TP.Caladbolg.SAM.HighACC.HighHaste,{
        -- Stuff goes here --
    }
)

-- Caladbolg(AM Up) TP Sets -- /SAM
--[ACC: 1150 STP: 61]--
sets.TP.Caladbolg.SAM.AM = set_combine(
    sets.TP.Caladbolg.SAM,{
        ammo="Ginsen",
		head="Flam. Zucchetto +2",
		hands="Flam. Manopolas +2",
		legs=Odyssean.Legs.DA,
		feet="Flam. Gambieras +2",
        neck="Ainia Collar",
        body="Valorous Mail",
        waist="Ioskeha belt",
        right_ear="Telos Earring",
        left_ear="Brutal earring",
        left_ring="Niqmaddu Ring",
        right_ring="Petrov Ring",
        back=Ankou.ACC,
    }
)
    
--[ACC: 1184 STP: 63]--		
sets.TP.Caladbolg.SAM.MidACC.AM = set_combine(
    sets.TP.Caladbolg.SAM.AM,{
        hands="Emicho Gauntlets +1",
        left_ear="Cessance earring",
        left_ring="Chirich Ring",
    }
) 

--[ACC: 1264 STP: 27]--		
sets.TP.Caladbolg.SAM.HighACC.AM = set_combine(
    sets.TP.Caladbolg.SAM.MidACC.AM,{
        head="Ignominy Burgonet +2",
        neck="Lissome Necklace",
        body="Ignominy Cuirass +3",
        hands="Ignominy Gauntlets +3",
        legs="Ignominy Flanchard +3",
        left_ring="Regal Ring",
    }
)

-- Caladbolg(AM Up: High Haste) TP Sets -- /SAM
sets.TP.Caladbolg.SAM.AM.HighHaste = set_combine(
    sets.TP.Caladbolg.SAM.AM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Caladbolg.SAM.MidACC.AM.HighHaste = set_combine(
    sets.TP.Caladbolg.SAM.MidACC.AM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Caladbolg.SAM.HighACC.AM.HighHaste = set_combine(
    sets.TP.Caladbolg.SAM.HighACC.AM,{
        ammo="Seething Bomblet +1",
        waist="Kentarch Belt +1",
    }
)

-- Caladbolg(AM Up: SAM Roll) TP Sets -- /SAM
sets.TP.Caladbolg.SAM.AM.STP = set_combine(
    sets.TP.Caladbolg.SAM.STP,{
        left_ear="Cessance earring",
    }
)
sets.TP.Caladbolg.SAM.MidACC.AM.STP = set_combine(
    sets.TP.Caladbolg.SAM.MidACC.AM,{
        -- Stuff goes here --
    }
)
sets.TP.Caladbolg.SAM.HighACC.AM.STP = set_combine(
    sets.TP.Caladbolg.SAM.HighACC.AM,{
        ammo="Seething Bomblet +1",
        neck="Lissome Necklace",
        ear1="Mache Earring",
        feet="Flamme Gambieras +2",
    }
)

-- Caladbolg(AM Up: High Haste + SAM Roll) TP Sets --
sets.TP.Caladbolg.SAM.AM.HighHaste.STP = set_combine(
    sets.TP.Caladbolg.SAM.HighHaste.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Caladbolg.SAM.MidACC.AM.HighHaste.STP = set_combine(
    sets.TP.Caladbolg.SAM.MidACC.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Caladbolg.SAM.HighACC.AM.HighHaste.STP = set_combine(
    sets.TP.Caladbolg.SAM.HighACC.STP,{
        waist="Windbuffet Belt +1",
    }
)

-------------------------------------------------------------------------------------------------------------------------------------------------------------------	
---------------------------------------------------------------- ANGUTA SETS --------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------		

-- Anguta TP Sets --
sets.TP.Anguta = {
    main="Anguta",
}
sets.TP.Anguta.MidACC = set_combine(
    sets.TP.Anguta,{
        -- Stuff goes here --
    }
)
sets.TP.Anguta.HighACC = set_combine(
    sets.TP.Anguta.MidACC,{
        -- Stuff goes here --
    }
)

-- Anguta(High Haste) TP Sets --
sets.TP.Anguta.HighHaste = set_combine(
    sets.TP.Anguta,{
        -- Stuff goes here --
    }
)
sets.TP.Anguta.MidACC.HighHaste = set_combine(
    sets.TP.Anguta.MidACC,{
        -- Stuff goes here --
    }
)
sets.TP.Anguta.HighACC.HighHaste = set_combine(
    sets.TP.Anguta.HighACC,{
        -- Stuff goes here --
    }
)

-- Anguta(SAM Roll) TP Sets --
sets.TP.Anguta.STP = set_combine(
    sets.TP.Anguta,{
        -- Stuff goes here --
    }
)
sets.TP.Anguta.MidACC.STP = set_combine(
    sets.TP.Anguta.MidACC,{
        -- Stuff goes here --
    }
)
sets.TP.Anguta.HighACC.STP = set_combine(
    sets.TP.Anguta.HighACC,{
        -- Stuff goes here --
    }
)

-- Anguta(High Haste + SAM Roll) TP Sets --
sets.TP.Anguta.HighHaste.STP = set_combine(
    sets.TP.Anguta.STP,{
        -- Stuff goes here --
    }
)
sets.TP.Anguta.MidACC.HighHaste.STP = set_combine(
    sets.TP.Anguta.MidACC.STP,{
        -- Stuff goes here --
    }
)
sets.TP.Anguta.HighACC.HighHaste.STP = set_combine(
    sets.TP.Anguta.HighACC.STP,{
        -- Stuff goes here --
    }
)

----------------- /sam sets -----------------------------

-- Anguta /SAM TP Sets --
sets.TP.Anguta.SAM = {
    main="Anguta",
    ammo="Ginsen",
    head="Flam. Zucchetto +2",
    hands="Flam. Manopolas +2",
    legs="Flamma Dirs +2",
    feet="Flam. Gambieras +2",
    neck="Abyssal Beads +1",
    body="Valorous Mail",
    waist="Ioskeha belt",
    right_ear="Telos Earring",
    left_ear="Brutal earring",
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back=Ankou.ACC,
}
sets.TP.Anguta.SAM.MidACC = set_combine(
    sets.TP.Anguta.SAM,{
        neck="Lissome Necklace",
        --hands=ValoHands.STP,
        left_ear="Cessance earring",
        left_ring="Chirich Ring",
    }
)
sets.TP.Anguta.SAM.HighACC = set_combine(
    sets.TP.Anguta.SAM.MidACC,{
        head="Ignominy Burgonet +2",
        body="Ignominy Cuirass +3",
        hands="Ignominy Gauntlets +3",
        legs="Ignominy Flanchard +3",
        left_ring="Regal Ring",
        feet="Flamme Gambieras +2",
    }
)

-- Anguta(High Haste) /SAM TP Sets --
sets.TP.Anguta.SAM.HighHaste = set_combine(
    sets.TP.Anguta.SAM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Anguta.SAM.MidACC.HighHaste = set_combine(
    sets.TP.Anguta.SAM.MidACC,{
        -- Stuff goes here --
    }
)
sets.TP.Anguta.SAM.HighACC.HighHaste = set_combine(
    sets.TP.Anguta.SAM.HighACC,{
        -- Stuff goes here --
    }
)

-- Anguta(SAM Roll) /SAM TP Sets --
sets.TP.Anguta.SAM.STP = set_combine(
    sets.TP.Anguta.SAM,{
        ammo="Ginsen",
        head="Flam. Zucchetto +2",
        neck="Ganesha's Mala",
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        body="Valorous Mail",
        --hands=OdysHands.QA,
        left_ring="Niqmaddu Ring",
        right_ring="Petrov Ring",
        back=Ankou.ACC,
        waist="Ioskeha Belt",
        --legs=OdysLegs.QA,
        --feet=ValoFeet.STPACC,
    }
)
sets.TP.Anguta.SAM.MidACC.STP = set_combine(
    sets.TP.Anguta.SAM.MidACC,{
        head="Argosy Celata",
        hands="Emicho Gauntlets +1",
        --legs=OdysLegs.STP,
        neck="Ainia Collar",
        --body=ValoBody.DA,
        right_ear="Telos Earring",
    }
)
sets.TP.Anguta.SAM.HighACC.STP = set_combine(
    sets.TP.Anguta.SAM.HighACC,{
        head="Argosy Celata",
        hands="Ignominy Gauntlets +3",
        legs="Ignominy Flanchard +3",
        left_ring="Regal Ring",
        neck="Lissome Necklace",
        --feet=ValoFeet.STPACC,
    }
)

-- Anguta(High Haste + SAM Roll) /SAM TP Sets --
sets.TP.Anguta.SAM.HighHaste.STP = set_combine(
    sets.TP.Anguta.SAM.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Anguta.SAM.MidACC.HighHaste.STP = set_combine(
    sets.TP.Anguta.SAM.MidACC.STP,{
        -- Stuff goes here --
    }
)
sets.TP.Anguta.SAM.HighACC.HighHaste.STP = set_combine(
    sets.TP.Anguta.SAM.HighACC.STP,{
        -- Stuff goes here --
    }
)

----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------

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
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Sulevia's Ring",
    right_ring="Defending Ring",
    back=Ankou.ACC,
}
sets.PDT.Liberator = set_combine(
    sets.PDT,{
        main="Liberator",
        sub="Utu Grip",
    }
)
sets.PDT.Ragnarok = set_combine(
    sets.PDT,{
       main="Ragnarok",
       sub="Utu Grip",
    }
)
sets.PDT.Caladbolg = set_combine(
    sets.PDT,{
        main="Caladbolg",
        sub="Utu Grip",
    }
)
sets.PDT.Apocalypse = set_combine(
    sets.PDT,{
        main="Apocalypse",
        sub="Utu Grip",
    }
)
sets.PDT.Anguta = set_combine(
    sets.PDT,{
        main="Anguta",
        sub="Utu Grip",
    }
)
    
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

-- Hybrid Set --
sets.TP.Hybrid = set_combine(
    sets.PDT,{
        ammo="Staunch Tathlum",
        head="Sulevia's Mask +2",
        --body=ValoBody.DA,
        hands="Sulevia's Gauntlets +2",
        legs="Sulevia's Cuisses +2",
        --feet=ValoFeet.STPACC,
        neck="Loricate Torque +1",
        waist="Tempus Fugit",
        right_ear="Telos Earring",
        left_ear="Odnowa earring +1",
        left_ring="Defending Ring",
        right_ring="Moonbeam Ring",
        back=Ankou.DA,
    }
)
    
sets.TP.Hybrid.Liberator = set_combine(
    sets.TP.Hybrid,{
        main="Liberator",
        ammo="Seething Bomblet +1",
    }
)
sets.TP.Hybrid.Ragnarok = set_combine(
    sets.TP.Hybrid,{
        main="Ragnarok", 
        ammo="Seething Bomblet +1",
    }
)
sets.TP.Hybrid.Caladbolg = set_combine(
    sets.TP.Hybrid,{
        main="Caladbolg", 
        ammo="Seething Bomblet +1",
    }
)
sets.TP.Hybrid.Apocalypse = set_combine(
    sets.TP.Hybrid,{
        main="Apocalypse", 
        ammo="Seething Bomblet +1",
    }
)
sets.TP.Hybrid.Anguta = set_combine(
    sets.TP.Hybrid,{
        main="Anguta", 
        ammo="Seething Bomblet +1",
    }
)
    
sets.TP.Hybrid.MidACC = set_combine(
    sets.TP.Hybrid,{
        left_ear="Cessance Earring",
        body="Sulevia's Platemail +2",
        hands="Ignominy Gauntlets +3",
        legs="Ignominy Flanchard +3",
    }
)
    
sets.TP.Hybrid.HighACC = set_combine(
    sets.TP.Hybrid.MidACC,{
        ammo="Seething Bomblet +1",
        head="Ignominy Burgonet +2",
        feet="Sulevia's Leggings +2"
    }
)

-- WS Base Set --
sets.WS = {
    ammo="Seething Bomblet +1",
    head="Argosy Celata",
    body="Ignominy Cuirass +3",
    hands="Argosy Mufflers",
    legs="Ignominy Flanchard +3",
    feet="Argosy Sollerets +1",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Moonshade earring",
    right_ear="Telos earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back=Ankou.WSDSTR,
}

-- Resolution Sets --
sets.WS.Resolution = {		
    ammo="Knobkierrie",
    head="Argosy Celata",
    body="Ignominy Cuirass +3",
    hands="Argosy Mufflers",
    legs="Ratri Cuisses",
    feet="Ig. Flanchard +3",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Moonshade Earring",
    right_ear="Ishvara Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu ring",
    back=Ankou.DA
}

sets.WS.Resolution.MidACC = set_combine(
    sets.WS.Resolution,{
        hands="Ignominy Gauntlets +3",
        back=Ankou.DA
    }
)
    
sets.WS.Resolution.HighACC = set_combine(
    sets.WS.Resolution.MidACC,{
        -- Stuff goes here --
    }
)

-- Torcleaver Sets --
-- Description:	Deals triple damage. Damage varies with TP.
-- Stat Modifier:	80% VIT fTP:	4.75	7.5	10
sets.WS.Torcleaver = {
    ammo="Knobkierrie",
    head=Odyssean.Head.WSD,
    body="Ignominy Cuirass +3",
    hands=Odyssean.Hands.WSD,
    legs="Ratri Cuisses",
    feet="Sulev. Leggings +2",
    neck="Abyssal Beads +1",
    waist="Fotia Belt",
    left_ear="Moonshade Earring",
    right_ear="Ishvara Earring",
    left_ring="Flamma Ring",
    right_ring="Petrov Ring",
    back=Ankou.WSDVIT
}
    
sets.WS.Torcleaver.MidACC = set_combine(
    sets.WS.Torcleaver,{
        ammo="Knobkierrie",
        head="Ignominy Burgonet +2",
        --hands=OdysHands.WSDVITACC,
        right_ear="Telos Earring",
    }
)
    
sets.WS.Torcleaver.HighACC = set_combine(
    sets.WS.Torcleaver.MidACC,{
        -- Stuff goes here --
    }
)

-- Scourge Sets --
--Relic Aftermath: +5% Critical Hit Rate 15 acc
--Stat Modifier:	40% STR / 40% VIT	fTP:	3.0
sets.WS.Scourge = {
    ammo="Knobkierrie",
    --head=OdysHead.WSD,
    body="Ignominy Cuirass +3",
    --hands=OdysHands.WSDVIT,
    --legs=OdysLegs.WSD,
    feet="Sulevia's Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal earring",
    right_ear="Ishvara Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back=Ankou.WSDSTR,
}
    
sets.WS.Scourge.MidACC = set_combine(
    sets.WS.Scourge,{
        --hands=OdysHands.WSDVITACC,
        --legs=OdysLegs.WSD,
        left_ear="Cessance earring",
        right_ear="Telos Earring",
    }
)
    
sets.WS.Scourge.HighACC = set_combine(
    sets.WS.Scourge.MidACC,{
        -- Stuff goes here --
    }
)	

sets.WS.Shockwave = {
    ammo="Pemphredo Tathlum",
    head="Carmine Mask",
    body="Carmine Scale Mail",
    hands="Leyline Gloves",
    legs="Eschite cuisses",
    feet="Ignominy Sollerets +3",
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Hermetic Earring",
    right_ear="Telos Earring",
    left_ring="Regal Ring",
    right_ring="Stikini Ring",
    back=Ankou.INTDA,
}	

-- Catastrophe Sets --
--Stat Modifier:	40% STR / 40% INT	fTP:	2.75
--Relic Aftermath: 10% Equipment Haste (+102/1024) AG 10% Ability
sets.WS.Catastrophe = {
    ammo="Knobkierrie",
    head="Ratri Sallet",
    body="Ignominy Cuirass +3",
    hands="Ratri Gadlings",
    legs="Ratri Cuisses",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal Earring",
    right_ear="Ishvara Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu ring",
    back=Ankou.WSDSTR
}
    
sets.WS.Catastrophe.MidACC = set_combine(
    sets.WS.Catastrophe,{
        right_ear="Telos Earring",
    }
)
    
sets.WS.Catastrophe.HighACC = set_combine(
    sets.WS.Catastrophe.MidACC,{
        -- Stuff goes here --
    }
)

-- Entropy Sets --
--Delivers a fourfold attack. Converts some of the damage into MP. Damage varies with TP.
--Stat Modifier:	73~85% INT fTP:	0.75	1.25	2.0
sets.WS.Entropy = {
    ammo="Pemphredo Tathlum",
    head="Ignominy Burgonet +2",
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
    
sets.WS.Entropy.MidACC = set_combine(
    sets.WS.Entropy,{
        right_ear="Telos earring",
    }
)
    
sets.WS.Entropy.HighACC = set_combine(
    sets.WS.Entropy.MidACC,{
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
    right_ear="Ishvara earring",
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
        head="Ignominy Burgonet +2",
        right_ear="Telos earring",
    }
)							

-- Insurgency Sets --
--Delivers a fourfold attack. Damage varies with TP.
--Stat Modifier:	20% STR / 20% INT fTP:	0.5	3.25	6.0
sets.WS.Insurgency = {
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
    
sets.WS.Insurgency.MidACC = set_combine(
    sets.WS.Insurgency,{
        hands="Ignominy Gauntlets +3",
        feet="Ratri Sollerets",
    }
)
    
sets.WS.Insurgency.HighACC = set_combine(
    sets.WS.Insurgency.MidACC,{
        head="Ignominy Burgonet +2",
        right_ear="Telos earring",
    }
)

-- Quietus Sets --
--Delivers a triple damage attack that ignores target's defense. Amount ignored varies with TP.
--Stat Modifier:	60% STR / 60% MND Defense ignored:	10%	30%	50% fTP:	3.0
sets.WS.Quietus = {
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

sets.WS.Quietus.MidACC = set_combine(
    sets.WS.Quietus, {
        right_ear="Telos Earring",
    }
)
    
sets.WS.Quietus.HighACC = set_combine(
    sets.WS.Quietus.MidACC, {
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