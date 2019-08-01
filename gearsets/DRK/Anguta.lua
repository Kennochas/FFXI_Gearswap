-------------------------------------------------------------------------------------------------------------------------------------------------------------------	
---------------------------------------------------------------- ANGUTA SETS --------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------		

sets.Idle.Regen.Anguta = set_combine(
    sets.Idle.Regen,{
        main="Anguta"
    }
)
sets.Idle.Movement.Anguta = set_combine(
    sets.Idle.Movement,{
        main="Anguta"
    }
)
sets.Idle.Refresh.Anguta = set_combine(
    sets.Idle.Refresh,{
        main="Anguta"
    }
)
sets.Idle.Regain.Anguta = set_combine(
    sets.Idle.Regain,{
        main="Anguta"
    }
)
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

--- Hybrid Sets---
sets.TP.Anguta.Hybrid = {
    main="Anguta", 
    ammo="Seething Bomblet +1",
}
sets.TP.Anguta.Hybrid.MidACC = set_combine(
    sets.TP.Anguta.Hybrid,{
        -- Stuff goes here --
    }
)
sets.TP.Anguta.Hybrid.HighACC = set_combine(
    sets.TP.Anguta.Hybrid.MidACC,{
        -- Stuff goes here --
    }
)

-- Hybrid /SAM Hybrid Sets
sets.TP.Anguta.Hybrid.SAM = {
    main="Anguta", 
    ammo="Seething Bomblet +1",
}
sets.TP.Anguta.Hybrid.SAM.MidACC = set_combine(
    sets.TP.Anguta.Hybrid.SAM,{
        -- Stuff goes here --
    }
)
sets.TP.Anguta.Hybrid.SAM.HighACC = set_combine(
    sets.TP.Anguta.Hybrid.SAM.MidACC,{
        -- Stuff goes here --
    }
)