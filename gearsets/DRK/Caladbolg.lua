-------------------------------------------------------------------------------------------------------------------------------------------------------------------	
---------------------------------------------------------------- CALADBOLG SETS -----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------	

sets.Idle.Regen.Caladbolg = set_combine(
    sets.Idle.Regen,{
        main="Caladbolg"
    }
)
sets.Idle.Movement.Caladbolg = set_combine(
    sets.Idle.Movement,{
        main="Caladbolg"
    }
)
sets.Idle.Refresh.Caladbolg = {
  neck="Vim Torque +1",
  body="Lugra Cloak +1",
  ammo="Staunch Tathlum", -- 2 DT
  hands="Sakpata's gauntlets", -- 8 DT
  legs="Carmine cuisses +1",
  feet="Sakpata's Leggings", -- 6 DT
  waist="Flume Belt", -- 4 PDT
  left_ear="Infused Earring",
  right_ear="Odnowa Earring +1",
  left_ring="Karieyh Ring",
  right_ring="Defending Ring", -- 10 DT
  back=Ankou.ACC, -- 5DT
}
sets.Idle.Regain.Caladbolg = set_combine(
    sets.Idle.Regain,{
        main="Caladbolg"
    }
)
sets.PDT.Caladbolg = set_combine(
    sets.PDT,{
        main="Caladbolg",
        ammo="Ginsen",
        head="Sulevia's Mask +2",
        body="Valorous Mail",
        hands="Sulevia's Gauntlets +2",
        legs="Sulevia's Cuisses +2",
        feet="Sulevia's Leggings +2",
        neck="Loricate Torque +1",
        waist="Ioskeha Belt",
        left_ear="Brutal earring",
        right_ear="Cessance earring",
        left_ring="Sulevia's Ring",
        right_ring="Defending Ring",
        back=Ankou.ACC,
    }
)
-- Caladbolg(AM Down) TP Sets --
sets.TP.Caladbolg = {
    main="Caladbolg",
    sub="Utu Grip",
    ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body="Valorous Mail",
    hands="Sulevia's Gauntlets +2",
    legs="Ignominy Flanchard +3",
    feet="Flam. Gambieras +2",
    neck="Abyssal Beads +2",
    waist="Ioskeha Belt",
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Hetairoi Ring",
    right_ring="Petrov Ring",
    back=Ankou.ACC,
}		
    
sets.TP.Caladbolg.MidACC = set_combine(
    sets.TP.Caladbolg,{
        body="Emicho Haubert +1",
        hands="Emicho Gauntlets +1",
        right_ear="Cessance earring",
        --left_ring="Chirich Ring",
    }
) 
    
sets.TP.Caladbolg.HighACC = set_combine(
    sets.TP.Caladbolg.MidACC,{
        head="Ignominy Burgonet +3",
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
        right_ear="Cessance earring",
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
        feet="Flam. Gambieras +2",
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
    main="Caladbolg",
    sub="Utu Grip",
    ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body="Valorous Mail",
    hands="Sulevia's Gauntlets +2",
    legs="Ignominy Flanchard +3",
    feet="Flam. Gambieras +2",
    neck="Abyssal Beads +2",
    waist="Ioskeha Belt",
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Hetairoi Ring",
    right_ring="Petrov Ring",
    back=Ankou.ACC,
    }
)
    
sets.TP.Caladbolg.MidACC.AM = set_combine(
    sets.TP.Caladbolg.AM,{
        hands="Emicho Gauntlets +1",
        right_ear="Cessance earring",
        left_ring="Chirich Ring",
    }
) 
    
sets.TP.Caladbolg.HighACC.AM = set_combine(
    sets.TP.Caladbolg.MidACC.AM,{
        head="Ignominy Burgonet +3",
        neck="Lissome Necklace",
        body="Ignominy Cuirass +3",
        hands="Ignominy Gauntlets +3",
        legs="Ignominy Flanchard +3",
        left_ring="Regal Ring",
    }
)

sets.TP.Caladbolg.AM3 = set_combine(
    sets.TP.Caladbolg,{
        ammo="Ginsen",
        head="Flam. Zucchetto +2",
        body="Valorous Mail",
		hands="Sulevia's Gauntlets +2",
		legs="Ignominy Flanchard +3",
		feet="Flam. Gambieras +2",
        neck="Abyssal Beads +2",
        waist="Ioskeha belt",
        left_ear="Telos Earring",
        right_ear="Brutal earring",
        left_ring="Hetairoi Ring",
        right_ring="Petrov Ring",
        back=Ankou.ACC,
    }
)
sets.TP.Caladbolg.MidACC.AM3 = set_combine(
    sets.TP.Caladbolg.AM3,{
        hands="Emicho Gauntlets +1",
        right_ear="Cessance earring",
        left_ring="Chirich Ring",
    }
) 
    
sets.TP.Caladbolg.HighACC.AM3 = set_combine(
    sets.TP.Caladbolg.MidACC.AM3,{
        head="Ignominy Burgonet +3",
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
        right_ear="Cessance earring",
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
        feet="Flam. Gambieras +2",
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
    hands="Flamma Manopolas +2",
    legs="Ignominy Flanchard +3",
    feet="Flam. Gambieras +2",
    neck="Abyssal Beads +2",
    waist="Ioskeha Belt",
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Petrov Ring",
    right_ring="Niqmaddu Ring",
    back=Ankou.ACC,
} 
    
--[ACC: 1184 STP: 63]--	
sets.TP.Caladbolg.SAM.MidACC = set_combine(
    sets.TP.Caladbolg.SAM,{
        ammo="Seething Bomblet +1",
        body="Emicho Haubert +1",
        hands="Emicho Gauntlets +1",
        left_ear="Telos Earring",
        right_ear="Cessance earring",
        -- left_ring="Chirich Ring",
        left_ring="Regal Ring",
    }
) 
    
--[ACC: 1264 STP: 27]--		
sets.TP.Caladbolg.SAM.HighACC = set_combine(
    sets.TP.Caladbolg.SAM.MidACC,{
        head="Ignominy Burgonet +3",
        neck="Abyssal Beads +2",
        body="Ignominy Cuirass +3",
        hands="Ignominy Gauntlets +3",
        legs="Ignominy Flanchard +3",
        left_ring="Regal Ring",
		right_ring="Flamma Ring",
    }
)

sets.TP.Caladbolg.SAM.AM = set_combine(
    sets.TP.Caladbolg.SAM,{
        -- Stuff goes here --
    }
)
    
sets.TP.Caladbolg.SAM.MidACC.AM = set_combine(
    sets.TP.Caladbolg.SAM.AM,{
        hands="Emicho Gauntlets +1",
        right_ear="Cessance earring",
        left_ring="Chirich Ring",
    }
) 
    
sets.TP.Caladbolg.SAM.HighACC.AM = set_combine(
    sets.TP.Caladbolg.SAM.MidACC.AM,{
        head="Ignominy Burgonet +3",
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
        -- Stuff goes here --
    }
)
sets.TP.Caladbolg.SAM.MidACC.AM3 = set_combine(
    sets.TP.Caladbolg.SAM.AM3,{
        ammo="Seething Bomblet +1",
        body="Emicho Haubert +1",
        hands="Emicho Gauntlets +1",
        right_ear="Cessance earring",
        -- left_ring="Chirich Ring",
        left_ring="Regal Ring",
    }
)
sets.TP.Caladbolg.SAM.HighACC.AM3 = set_combine(
    sets.TP.Caladbolg.SAM.MidACC.AM3,{
        head="Ignominy Burgonet +3",
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
        right_ear="Cessance earring",
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
        -- neck="Lissome Necklace",
        ear1="Mache Earring",
        feet="Flam. Gambieras +2",
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
        -- Stuff goes here --
    }
)
    
--[ACC: 1184 STP: 63]--		
sets.TP.Caladbolg.SAM.MidACC.AM = set_combine(
    sets.TP.Caladbolg.SAM.AM,{
        body="Emicho Haubert +1",
        hands="Emicho Gauntlets +1",
        right_ear="Cessance earring",
        left_ring="Chirich Ring",
    }
) 

--[ACC: 1264 STP: 27]--		
sets.TP.Caladbolg.SAM.HighACC.AM = set_combine(
    sets.TP.Caladbolg.SAM.MidACC.AM,{
        head="Ignominy Burgonet +3",
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
-- Caladbolg(AM Up: High Haste) TP Sets -- /SAM
sets.TP.Caladbolg.SAM.AM3.HighHaste = set_combine(
    sets.TP.Caladbolg.SAM.AM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Caladbolg.SAM.MidACC.AM3.HighHaste = set_combine(
    sets.TP.Caladbolg.SAM.MidACC.AM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Caladbolg.SAM.HighACC.AM3.HighHaste = set_combine(
    sets.TP.Caladbolg.SAM.HighACC.AM,{
        ammo="Seething Bomblet +1",
        waist="Kentarch Belt +1",
    }
)

-- Caladbolg(AM Up: SAM Roll) TP Sets -- /SAM
sets.TP.Caladbolg.SAM.AM.STP = set_combine(
    sets.TP.Caladbolg.SAM.STP,{
        right_ear="Cessance earring",
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
        feet="Flam. Gambieras +2",
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

--- Hybrid Sets---
sets.TP.Caladbolg.Hybrid = {
    main="Caladbolg", 
    ammo="Seething Bomblet +1",
    left_ring="Warp Ring",
}
sets.TP.Caladbolg.Hybrid.MidACC = set_combine(
    sets.TP.Caladbolg.Hybrid,{
        -- Stuff goes here --
    }
)
sets.TP.Caladbolg.Hybrid.HighACC = set_combine(
    sets.TP.Caladbolg.Hybrid.MidACC,{
        -- Stuff goes here --
    }
)

-- Hybrid /SAM Hybrid Sets
sets.TP.Caladbolg.Hybrid.SAM = {
    main="Caladbolg",
    sub="Utu Grip",
    ammo="Ginsen",
    head="Sakpata's Helm",
    body="Sakpata's Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Ignominy Flanchard +3",
    feet="Sakpata's Leggings",
    neck="Abyssal Beads +2",
    waist="Ioskeha Belt",
    left_ear="Dedition Earring",
    right_ear="Cessance Earring",
    left_ring="Petrov Ring",
    right_ring="Niqmaddu Ring",
    back=Ankou.STP,
}
sets.TP.Caladbolg.Hybrid.SAM.MidACC = set_combine(
    sets.TP.Caladbolg.Hybrid.SAM,{
        -- Stuff goes here --
    }
)
sets.TP.Caladbolg.Hybrid.SAM.HighACC = set_combine(
    sets.TP.Caladbolg.Hybrid.SAM.MidACC,{
        -- Stuff goes here --
    }
)