-------------------------------------------------------------------------------------------------------------------------------------------------------------------	
---------------------------------------------------------------- APOCALYPSE SETS ----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------	

sets.Idle.Regen.Apocalypse = set_combine(
    sets.Idle.Regen,{
        main="Apocalypse"
    }
)
sets.Idle.Movement.Apocalypse = set_combine(
    sets.Idle.Movement,{
        main="Apocalypse"
    }
)
sets.Idle.Refresh.Apocalypse = set_combine(
    sets.Idle.Refresh,{
        main="Apocalypse"
    }
)
sets.Idle.Regain.Apocalypse = set_combine(
    sets.Idle.Regain,{
        main="Apocalypse"
    }
)
sets.PDT.Apocalypse = set_combine(
    sets.PDT,{
        main="Apocalypse",
        sub="Utu Grip",
        ammo="Staunch Tathlum",
        feet="Flam. Gambieras +2",
    }
)
-- Apocalypse(AM Down) TP Sets --
sets.TP.Apocalypse = {
    main="Apocalypse",
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
    
sets.TP.Apocalypse.MidACC = set_combine(
    sets.TP.Apocalypse,{
        ammo="Seething Bomblet +1",
        hands="Emicho Gauntlets +1",
    }
)
    
sets.TP.Apocalypse.HighACC = set_combine(
    sets.TP.Apocalypse.MidACC,{
        ammo="Ginsen",
        head="Ignominy Burgonet +3",
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
    
sets.TP.Apocalypse.SAM.MidACC = set_combine(
    sets.TP.Apocalypse.SAM,{
        ammo="Seething Bomblet +1",
        body="Emicho Haubert +1",
        hands="Emicho Gauntlets +1",
        left_ring="Regal Ring",
    }
)
    
sets.TP.Apocalypse.SAM.HighACC = set_combine(
    sets.TP.Apocalypse.SAM.MidACC,{
        ammo="Ginsen",
        head="Ignominy Burgonet +3",
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

--- Hybrid Sets---
sets.TP.Apocalypse.Hybrid = {
  main="Apocalypse", 
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
sets.TP.Apocalypse.Hybrid.MidACC = set_combine(
    sets.TP.Apocalypse.Hybrid,{
        -- Stuff goes here --
    }
)
sets.TP.Apocalypse.Hybrid.HighACC = set_combine(
    sets.TP.Apocalypse.Hybrid.MidACC,{
        -- Stuff goes here --
    }
)

-- Hybrid /SAM Hybrid Sets
sets.TP.Apocalypse.Hybrid.SAM = {
    main="Apocalypse", 
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
sets.TP.Apocalypse.Hybrid.SAM.MidACC = set_combine(
    sets.TP.Apocalypse.Hybrid.SAM,{
        -- Stuff goes here --
    }
)
sets.TP.Apocalypse.Hybrid.SAM.HighACC = set_combine(
    sets.TP.Apocalypse.Hybrid.SAM.MidACC,{
        -- Stuff goes here --
    }
)