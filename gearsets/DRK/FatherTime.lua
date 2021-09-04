-------------------------------------------------------------------------------------------------------------------------------------------------------------------	
---------------------------------------------------------------- FatherTime SETS ----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------	

sets.Idle.Regen.FatherTime = set_combine(
    sets.Idle.Regen,{
        main="Father Time"
    }
)
sets.Idle.Movement.FatherTime = set_combine(
    sets.Idle.Movement,{
        main="Father Time"
    }
)
sets.Idle.Refresh.FatherTime = set_combine(
    sets.Idle.Refresh,{
        main="Father Time"
    }
)
sets.Idle.Regain.FatherTime = set_combine(
    sets.Idle.Regain,{
        main="Father Time"
    }
)
sets.PDT.FatherTime = set_combine(
    sets.PDT,{
        main="Father Time",
        sub="Utu Grip",
        ammo="Staunch Tathlum",
        feet="Flam. Gambieras +2",
    }
)
-- FatherTime(AM Down) TP Sets --
sets.TP.FatherTime = {
    main="Father Time",
    ammo="Focal Orb",
    head="Flam. Zucchetto +2",
    hands="Sulevia's Gauntlets +2",
    legs="Ignominy Flanchard +3",
    feet="Flam. Gambieras +2",
    neck="Abyssal Beads +2",
    body="Valorous Mail",
    waist="Ioskeha belt",
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Hetairoi Ring",
    right_ring="Petrov Ring",
    back=Ankou.ACC,
} 
    
sets.TP.FatherTime.MidACC = set_combine(
    sets.TP.FatherTime,{
        ammo="Seething Bomblet +1",
        hands="Emicho Gauntlets +1",
    }
)
    
sets.TP.FatherTime.HighACC = set_combine(
    sets.TP.FatherTime.MidACC,{
        ammo="Ginsen",
        head="Ignominy Burgonet +3",
        body="Ignominy Cuirass +3",
        legs="Ignominy Flanchard +3",
        left_ring="Regal Ring",
        --feet=ValoFeet.STPACC,
    }
)

-- FatherTime(AM Down: High Haste) TP Sets --
sets.TP.FatherTime.HighHaste = set_combine(
    sets.TP.FatherTime,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.FatherTime.MidACC.HighHaste = set_combine(
    sets.TP.FatherTime.MidACC,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.FatherTime.HighACC.HighHaste = set_combine(
    sets.TP.FatherTime.HighACC,{
        waist="Windbuffet Belt +1",
    }
)

-- FatherTime(AM Down: SAM Roll) TP Sets --
sets.TP.FatherTime.STP = set_combine(
    sets.TP.FatherTime,{
        neck="Ganesha's Mala",
        left_ear="Brutal earring",
    }
)
sets.TP.FatherTime.MidACC.STP = set_combine(
    sets.TP.FatherTime.MidACC,{
        neck="Ganesha's Mala",
        left_ring="Regal Ring",
    }
)
sets.TP.FatherTime.HighACC.STP = set_combine(
    sets.TP.FatherTime.HighACC,{
        ammo="Seething Bomblet +1",
    }
)

-- FatherTime(AM Down: High Haste + SAM Roll) TP Sets --
sets.TP.FatherTime.HighHaste.STP = set_combine(
    sets.TP.FatherTime.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.FatherTime.MidACC.HighHaste.STP = set_combine(
    sets.TP.FatherTime.MidACC.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.FatherTime.HighACC.HighHaste.STP = set_combine(
    sets.TP.FatherTime.HighACC.STP,{
        waist="Windbuffet Belt +1",
    }
)

-- FatherTime(AM Up) TP Sets --
sets.TP.FatherTime.AM = set_combine(
    sets.TP.FatherTime,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.FatherTime.MidACC.AM = set_combine(
    sets.TP.FatherTime.MidACC,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.FatherTime.HighACC.AM = set_combine(
    sets.TP.FatherTime.HighACC,{
        waist="Windbuffet Belt +1",
    }
)

-- FatherTime(AM Up: High Haste) TP Sets --
sets.TP.FatherTime.AM.HighHaste = set_combine(
    sets.TP.FatherTime.AM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.FatherTime.MidACC.AM.HighHaste = set_combine(
    sets.TP.FatherTime.MidACC.AM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.FatherTime.HighACC.AM.HighHaste = set_combine(
    sets.TP.FatherTime.HighACC.AM,{
        waist="Windbuffet Belt +1",
    }
)

-- FatherTime(AM Up: SAM Roll) TP Sets --
sets.TP.FatherTime.AM.STP = set_combine(
    sets.TP.FatherTime.AM,{
        neck="Ganesha's Mala",
        left_ear="Brutal earring",
    }
)
sets.TP.FatherTime.MidACC.AM.STP = set_combine(
    sets.TP.FatherTime.MidACC.AM,{
        neck="Ganesha's Mala",
        left_ring="Regal Ring",
    }
)
sets.TP.FatherTime.HighACC.AM.STP = set_combine(
    sets.TP.FatherTime.HighACC.AM,{
        ammo="Seething Bomblet +1",
    }
)

-- FatherTime(AM Up: High Haste + SAM Roll) TP Sets --
sets.TP.FatherTime.AM.HighHaste.STP = set_combine(
    sets.TP.FatherTime.AM.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.FatherTime.MidACC.AM.HighHaste.STP = set_combine(
    sets.TP.FatherTime.MidACC.AM.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.FatherTime.HighACC.AM.HighHaste.STP = set_combine(
    sets.TP.FatherTime.HighACC.AM.STP,{
        waist="Windbuffet Belt +1",
    }
)

------------ /sam sets --------------------------------

-- FatherTime(AM Down) /SAM TP Sets --
sets.TP.FatherTime.SAM = {
    main="Father Time",
    ammo="Ginsen",
    head="Flam. Zucchetto +2",
    hands="Sulevia's Gauntlets +2",
    legs="Ignominy Flanchard +3",
    feet="Flam. Gambieras +2",
    neck="Abyssal Beads +2",
    body="Valorous Mail",
    waist="Ioskeha belt",
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Petrov Ring",
    right_ring="Niqmaddu Ring",
    back=Ankou.ACC,
} 
    
sets.TP.FatherTime.SAM.MidACC = set_combine(
    sets.TP.FatherTime.SAM,{
        ammo="Seething Bomblet +1",
        body="Emicho Haubert +1",
        hands="Emicho Gauntlets +1",
        left_ring="Regal Ring",
    }
)
    
sets.TP.FatherTime.SAM.HighACC = set_combine(
    sets.TP.FatherTime.SAM.MidACC,{
        ammo="Ginsen",
        head="Ignominy Burgonet +3",
        body="Ignominy Cuirass +3",
        legs="Ignominy Flanchard +3",
        left_ring="Regal Ring",
        --feet=ValoFeet.STPACC,
    }
)

-- FatherTime(AM Down: High Haste) /SAM TP Sets --
sets.TP.FatherTime.SAM.HighHaste = set_combine(
    sets.TP.FatherTime.SAM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.FatherTime.SAM.MidACC.HighHaste = set_combine(
    sets.TP.FatherTime.SAM.MidACC,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.FatherTime.SAM.HighACC.HighHaste = set_combine(
    sets.TP.FatherTime.SAM.HighACC,{
        waist="Windbuffet Belt +1",
    }
)

-- FatherTime(AM Down: SAM Roll) /SAM TP Sets --
sets.TP.FatherTime.SAM.STP = set_combine(
    sets.TP.FatherTime.SAM,{
        neck="Ganesha's Mala",
        left_ear="Brutal earring",
    }
)
sets.TP.FatherTime.SAM.MidACC.STP = set_combine(
    sets.TP.FatherTime.SAM.MidACC,{
        neck="Ganesha's Mala",
        left_ring="Regal Ring",
    }
)
sets.TP.FatherTime.SAM.HighACC.STP = set_combine(
    sets.TP.FatherTime.SAM.HighACC,{
        ammo="Seething Bomblet +1",
    }
)

-- FatherTime(AM Down: High Haste + SAM Roll) /SAM TP Sets --
sets.TP.FatherTime.SAM.HighHaste.STP = set_combine(
    sets.TP.FatherTime.SAM.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.FatherTime.SAM.MidACC.HighHaste.STP = set_combine(
    sets.TP.FatherTime.SAM.MidACC.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.FatherTime.SAM.HighACC.HighHaste.STP = set_combine(
    sets.TP.FatherTime.SAM.HighACC.STP,{
        waist="Windbuffet Belt +1",
    }
)

-- FatherTime(AM Up) /SAM TP Sets --
sets.TP.FatherTime.SAM.AM = set_combine(
    sets.TP.FatherTime.SAM,{
        -- Stuff goes here --
    }
)
sets.TP.FatherTime.SAM.MidACC.AM = set_combine(
    sets.TP.FatherTime.SAM.AM,{
        -- Stuff goes here --
    }
)
sets.TP.FatherTime.SAM.HighACC.AM = set_combine(
    sets.TP.FatherTime.SAM.MidACC.AM,{
        -- Stuff goes here --
    }
)

-- FatherTime(AM Up: High Haste) /SAM TP Sets --
sets.TP.FatherTime.SAM.AM.HighHaste = set_combine(
    sets.TP.FatherTime.SAM.AM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.FatherTime.SAM.MidACC.AM.HighHaste = set_combine(
    sets.TP.FatherTime.SAM.MidACC.AM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.FatherTime.SAM.HighACC.AM.HighHaste = set_combine(
    sets.TP.FatherTime.SAM.HighACC.AM,{
        waist="Windbuffet Belt +1",
    }
)

-- FatherTime(AM Up: SAM Roll) /SAM TP Sets --
sets.TP.FatherTime.SAM.AM.STP = set_combine(
    sets.TP.FatherTime.SAM.AM,{
        neck="Ganesha's Mala",
        left_ear="Brutal earring",
    }
)
sets.TP.FatherTime.SAM.MidACC.AM.STP = set_combine(
    sets.TP.FatherTime.SAM.MidACC.AM,{
        neck="Ganesha's Mala",
        left_ring="Regal Ring",
    }
)
sets.TP.FatherTime.SAM.HighACC.AM.STP = set_combine(
    sets.TP.FatherTime.SAM.HighACC.AM,{
        ammo="Seething Bomblet +1",
    }
)

-- FatherTime(AM Up: High Haste + SAM Roll) /SAM TP Sets --
sets.TP.FatherTime.SAM.AM.HighHaste.STP = set_combine(
    sets.TP.FatherTime.SAM.AM.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.FatherTime.SAM.MidACC.AM.HighHaste.STP = set_combine(
    sets.TP.FatherTime.SAM.MidACC.AM.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.FatherTime.SAM.HighACC.AM.HighHaste.STP = set_combine(
    sets.TP.FatherTime.SAM.HighACC.AM.STP,{
        waist="Windbuffet Belt +1",
    }
)

--- Hybrid Sets---
sets.TP.FatherTime.Hybrid = {
  main="Father Time", 
  sub="Utu Grip",
  ammo="Ginsen",
  head="Sakpata's Helm",
  body="Sakpata's Breastplate",
  hands="Sakpata's Gauntlets",
  legs="Ig. Flanchard +3",
  feet="Sakpata's Leggings",
  neck="Abyssal Beads +2",
  waist="Ioskeha Belt",
  left_ear="Dedition Earring",
  right_ear="Cessance Earring",
  left_ring="Petrov Ring",
  right_ring="Niqmaddu Ring",
  back=Ankou.STP,
}
sets.TP.FatherTime.Hybrid.MidACC = set_combine(
    sets.TP.FatherTime.Hybrid,{
        -- Stuff goes here --
    }
)
sets.TP.FatherTime.Hybrid.HighACC = set_combine(
    sets.TP.FatherTime.Hybrid.MidACC,{
        -- Stuff goes here --
    }
)

-- Hybrid /SAM Hybrid Sets
sets.TP.FatherTime.Hybrid.SAM = {
    main="Father Time", 
    sub="Utu Grip",
    ammo="Ginsen",
    head="Sakpata's Helm",
    body="Sakpata's Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Ig. Flanchard +3",
    feet="Sakpata's Leggings",
    neck="Abyssal Beads +2",
    waist="Ioskeha Belt",
    left_ear="Dedition Earring",
    right_ear="Cessance Earring",
    left_ring="Petrov Ring",
    right_ring="Niqmaddu Ring",
    back=Ankou.STP,
}
sets.TP.FatherTime.Hybrid.SAM.MidACC = set_combine(
    sets.TP.FatherTime.Hybrid.SAM,{
        -- Stuff goes here --
    }
)
sets.TP.FatherTime.Hybrid.SAM.HighACC = set_combine(
    sets.TP.FatherTime.Hybrid.SAM.MidACC,{
        -- Stuff goes here --
    }
)