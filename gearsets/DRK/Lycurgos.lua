-------------------------------------------------------------------------------------------------------------------------------------------------------------------	
---------------------------------------------------------------- Lycurgos SETS -----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------	

sets.Idle.Regen.Lycurgos = set_combine(
    sets.Idle.Regen,{
        main="Lycurgos"
    }
)
sets.Idle.Movement.Lycurgos = set_combine(
    sets.Idle.Movement,{
        main="Lycurgos"
    }
)
sets.Idle.Refresh.Lycurgos = set_combine(
    sets.Idle.Refresh,{
        main="Lycurgos"
    }
)
sets.Idle.Regain.Lycurgos = set_combine(
    sets.Idle.Regain,{
        main="Lycurgos"
    }
)
sets.PDT.Lycurgos = set_combine(
    sets.PDT,{
        main="Lycurgos",
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
-- Lycurgos(AM Down) TP Sets --
sets.TP.Lycurgos = {
    main="Lycurgos",
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
    left_ring="warp Ring",
    right_ring="Petrov Ring",
    back=Ankou.ACC,
}		
    
sets.TP.Lycurgos.MidACC = set_combine(
    sets.TP.Lycurgos,{
        body="Emicho Haubert +1",
        hands="Emicho Gauntlets +1",
        right_ear="Cessance earring",
        --left_ring="Chirich Ring",
    }
) 
    
sets.TP.Lycurgos.HighACC = set_combine(
    sets.TP.Lycurgos.MidACC,{
        head="Ignominy Burgonet +3",
        neck="Lissome Necklace",
        body="Ignominy Cuirass +3",
        hands="Ignominy Gauntlets +3",
        legs="Ignominy Flanchard +3",
        left_ring="Regal Ring",
    }
)
    
-- Lycurgos(AM Down: High Haste) TP Sets --
sets.TP.Lycurgos.HighHaste = set_combine(
    sets.TP.Lycurgos,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Lycurgos.MidACC.HighHaste = set_combine(
    sets.TP.Lycurgos.MidACC,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Lycurgos.HighACC.HighHaste = set_combine(
    sets.TP.Lycurgos.HighACC,{
        ammo="Seething Bomblet +1",
        waist="Kentarch Belt +1",
    }
)
-- Lycurgos(AM Down: SAM Roll) TP Sets --
sets.TP.Lycurgos.STP = set_combine(
    sets.TP.Lycurgos,{
        right_ear="Cessance earring",
        right_ring="Warp Ring",
    }
)
sets.TP.Lycurgos.MidACC.STP = set_combine(
    sets.TP.Lycurgos.MidACC,{
        -- Stuff goes here --
    }
)
sets.TP.Lycurgos.HighACC.STP = set_combine(
    sets.TP.Lycurgos.HighACC,{
        ammo="Seething Bomblet +1",
        neck="Lissome Necklace",
        ear1="Mache Earring",
        feet="Flam. Gambieras +2",
    }
)

-- Lycurgos(AM Down: High Haste + SAM Roll) TP Sets --
sets.TP.Lycurgos.HighHaste.STP = set_combine(
    sets.TP.Lycurgos.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Lycurgos.MidACC.HighHaste.STP = set_combine(
    sets.TP.Lycurgos.MidACC.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Lycurgos.HighACC.HighHaste.STP = set_combine(
    sets.TP.Lycurgos.HighACC.STP,{
        waist="Windbuffet Belt +1",
    }
)

-- Lycurgos(AM Up) TP Sets --
sets.TP.Lycurgos.AM = set_combine(
    sets.TP.Lycurgos,{
    main="Lycurgos",
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
    
sets.TP.Lycurgos.MidACC.AM = set_combine(
    sets.TP.Lycurgos.AM,{
        hands="Emicho Gauntlets +1",
        right_ear="Cessance earring",
        left_ring="Chirich Ring",
    }
) 
    
sets.TP.Lycurgos.HighACC.AM = set_combine(
    sets.TP.Lycurgos.MidACC.AM,{
        head="Ignominy Burgonet +3",
        neck="Lissome Necklace",
        body="Ignominy Cuirass +3",
        hands="Ignominy Gauntlets +3",
        legs="Ignominy Flanchard +3",
        left_ring="Regal Ring",
    }
)

sets.TP.Lycurgos.AM3 = set_combine(
    sets.TP.Lycurgos,{
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
sets.TP.Lycurgos.MidACC.AM3 = set_combine(
    sets.TP.Lycurgos.AM3,{
        hands="Emicho Gauntlets +1",
        right_ear="Cessance earring",
        left_ring="Chirich Ring",
    }
) 
    
sets.TP.Lycurgos.HighACC.AM3 = set_combine(
    sets.TP.Lycurgos.MidACC.AM3,{
        head="Ignominy Burgonet +3",
        neck="Lissome Necklace",
        body="Ignominy Cuirass +3",
        hands="Ignominy Gauntlets +3",
        legs="Ignominy Flanchard +3",
        left_ring="Regal Ring",
    }
)

-- Lycurgos(AM Up: High Haste) TP Sets --
sets.TP.Lycurgos.AM.HighHaste = set_combine(
    sets.TP.Lycurgos.AM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Lycurgos.MidACC.AM.HighHaste = set_combine(
    sets.TP.Lycurgos.AM.MidACC,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Lycurgos.HighACC.AM.HighHaste = set_combine(
    sets.TP.Lycurgos.HighACC.AM,{
        ammo="Seething Bomblet +1",
        waist="Kentarch Belt +1",
    }
)

-- Lycurgos(AM Up: SAM Roll) TP Sets --
sets.TP.Lycurgos.AM.STP = set_combine(
    sets.TP.Lycurgos.STP,{
        right_ear="Cessance earring",
    }
)
sets.TP.Lycurgos.MidACC.AM.STP = set_combine(
    sets.TP.Lycurgos.MidACC.AM,{
        -- Stuff goes here --
    }
)
sets.TP.Lycurgos.HighACC.AM.STP = set_combine(
    sets.TP.Lycurgos.HighACC.AM,{
        ammo="Seething Bomblet +1",
        neck="Lissome Necklace",
        ear1="Mache Earring",
        feet="Flam. Gambieras +2",
    }
)

-- Lycurgos(AM Up: High Haste + SAM Roll) TP Sets --
sets.TP.Lycurgos.AM.HighHaste.STP = set_combine(
    sets.TP.Lycurgos.HighHaste.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Lycurgos.MidACC.AM.HighHaste.STP = set_combine(
    sets.TP.Lycurgos.MidACC.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Lycurgos.HighACC.AM.HighHaste.STP = set_combine(
    sets.TP.Lycurgos.HighACC.STP,{
        waist="Windbuffet Belt +1",
    }
)
    
-- Lycurgos /SAM TP Sets -------------------------------------------------------------------

-- Lycurgos(AM Down) TP Sets --  /SAM
--[ACC: 1150 STP: 61]--
sets.TP.Lycurgos.SAM = {
    main="Lycurgos",
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
    right_ring="Niqmaddu Ring",
    back=Ankou.ACC,
} 
    
--[ACC: 1184 STP: 63]--	
sets.TP.Lycurgos.SAM.MidACC = set_combine(
    sets.TP.Lycurgos.SAM,{
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
sets.TP.Lycurgos.SAM.HighACC = set_combine(
    sets.TP.Lycurgos.SAM.MidACC,{
        head="Ignominy Burgonet +3",
        neck="Abyssal Beads +2",
        body="Ignominy Cuirass +3",
        hands="Ignominy Gauntlets +3",
        legs="Ignominy Flanchard +3",
        left_ring="Regal Ring",
		right_ring="Flamma Ring",
    }
)

sets.TP.Lycurgos.SAM.AM = set_combine(
    sets.TP.Lycurgos.SAM,{
        -- Stuff goes here --
    }
)
    
sets.TP.Lycurgos.SAM.MidACC.AM = set_combine(
    sets.TP.Lycurgos.SAM.AM,{
        hands="Emicho Gauntlets +1",
        right_ear="Cessance earring",
        left_ring="Chirich Ring",
    }
) 
    
sets.TP.Lycurgos.SAM.HighACC.AM = set_combine(
    sets.TP.Lycurgos.SAM.MidACC.AM,{
        head="Ignominy Burgonet +3",
        neck="Lissome Necklace",
        body="Ignominy Cuirass +3",
        hands="Ignominy Gauntlets +3",
        legs="Ignominy Flanchard +3",
        left_ring="Regal Ring",
    }
)

-- Lycurgos(AM3 Up) /SAM TP Sets --
sets.TP.Lycurgos.SAM.AM3 = set_combine(
    sets.TP.Lycurgos.SAM,{
        -- Stuff goes here --
    }
)
sets.TP.Lycurgos.SAM.MidACC.AM3 = set_combine(
    sets.TP.Lycurgos.SAM.AM3,{
        ammo="Seething Bomblet +1",
        body="Emicho Haubert +1",
        hands="Emicho Gauntlets +1",
        right_ear="Cessance earring",
        -- left_ring="Chirich Ring",
        left_ring="Regal Ring",
    }
)
sets.TP.Lycurgos.SAM.HighACC.AM3 = set_combine(
    sets.TP.Lycurgos.SAM.MidACC.AM3,{
        head="Ignominy Burgonet +3",
        body="Ignominy Cuirass +3",
        hands="Ignominy Gauntlets +3",
        legs="Ignominy Flanchard +3",
        left_ring="Regal Ring",
    }
)

-- Lycurgos(AM Down: High Haste) TP Sets -- /SAM
sets.TP.Lycurgos.SAM.HighHaste = set_combine(
    sets.TP.Lycurgos.SAM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Lycurgos.SAM.MidACC.HighHaste = set_combine(
    sets.TP.Lycurgos.SAM.MidACC,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Lycurgos.SAM.HighACC.HighHaste = set_combine(
    sets.TP.Lycurgos.SAM.HighACC,{
        ammo="Seething Bomblet +1",
        waist="Kentarch Belt +1",
    }
)

-- Lycurgos(AM3 Up: High Haste) /SAM TP Sets --
sets.TP.Lycurgos.SAM.AM3.HighHaste = set_combine(
    sets.TP.Lycurgos.SAM.AM3,{
        -- Stuff goes here --
    }
)
sets.TP.Lycurgos.SAM.MidACC.AM3.HighHaste = set_combine(
    sets.TP.Lycurgos.SAM.AM3.HighHaste,{
        -- Stuff goes here --
    }
)
sets.TP.Lycurgos.SAM.HighACC.AM3.HighHaste = set_combine(
    sets.TP.Lycurgos.SAM.MidACC.AM3.HighHaste,{
        -- Stuff goes here --
    }
)


-- Lycurgos(AM Down: SAM Roll) TP Sets -- /SAM
sets.TP.Lycurgos.SAM.STP = set_combine(
    sets.TP.Lycurgos.SAM,{
        right_ear="Cessance earring",
    }
)
sets.TP.Lycurgos.SAM.MidACC.STP = set_combine(
    sets.TP.Lycurgos.SAM.MidACC,{
        -- Stuff goes here --
    }
)
sets.TP.Lycurgos.SAM.HighACC.STP = set_combine(
    sets.TP.Lycurgos.SAM.HighACC,{
        ammo="Seething Bomblet +1",
        -- neck="Lissome Necklace",
        ear1="Mache Earring",
        feet="Flam. Gambieras +2",
    }
)

-- Lycurgos(AM Down: High Haste + SAM Roll) TP Sets -- /SAM
sets.TP.Lycurgos.SAM.HighHaste.STP = set_combine(
    sets.TP.Lycurgos.SAM.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Lycurgos.SAM.MidACC.HighHaste.STP = set_combine(
    sets.TP.Lycurgos.SAM.MidACC.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Lycurgos.SAM.HighACC.HighHaste.STP = set_combine(
    sets.TP.Lycurgos.SAM.HighACC.STP,{
        waist="Windbuffet Belt +1",
    }
)

-- Lycurgos(AM3 Up: High Haste + SAM Roll) /SAM TP Sets --
sets.TP.Lycurgos.SAM.AM3.HighHaste.STP = set_combine(
    sets.TP.Lycurgos.SAM.HighHaste,{
        -- Stuff goes here --
    }
)
sets.TP.Lycurgos.SAM.MidACC.AM3.HighHaste.STP = set_combine(
    sets.TP.Lycurgos.SAM.MidACC.HighHaste,{
        -- Stuff goes here --
    }
)
sets.TP.Lycurgos.SAM.HighACC.AM3.HighHaste.STP = set_combine(
    sets.TP.Lycurgos.SAM.HighACC.HighHaste,{
        -- Stuff goes here --
    }
)

-- Lycurgos(AM Up) TP Sets -- /SAM
--[ACC: 1150 STP: 61]--
sets.TP.Lycurgos.SAM.AM = set_combine(
    sets.TP.Lycurgos.SAM,{
        -- Stuff goes here --
    }
)
    
--[ACC: 1184 STP: 63]--		
sets.TP.Lycurgos.SAM.MidACC.AM = set_combine(
    sets.TP.Lycurgos.SAM.AM,{
        body="Emicho Haubert +1",
        hands="Emicho Gauntlets +1",
        right_ear="Cessance earring",
        left_ring="Chirich Ring",
    }
) 

--[ACC: 1264 STP: 27]--		
sets.TP.Lycurgos.SAM.HighACC.AM = set_combine(
    sets.TP.Lycurgos.SAM.MidACC.AM,{
        head="Ignominy Burgonet +3",
        neck="Lissome Necklace",
        body="Ignominy Cuirass +3",
        hands="Ignominy Gauntlets +3",
        legs="Ignominy Flanchard +3",
        left_ring="Regal Ring",
    }
)

-- Lycurgos(AM Up: High Haste) TP Sets -- /SAM
sets.TP.Lycurgos.SAM.AM.HighHaste = set_combine(
    sets.TP.Lycurgos.SAM.AM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Lycurgos.SAM.MidACC.AM.HighHaste = set_combine(
    sets.TP.Lycurgos.SAM.MidACC.AM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Lycurgos.SAM.HighACC.AM.HighHaste = set_combine(
    sets.TP.Lycurgos.SAM.HighACC.AM,{
        ammo="Seething Bomblet +1",
        waist="Kentarch Belt +1",
    }
)
-- Lycurgos(AM Up: High Haste) TP Sets -- /SAM
sets.TP.Lycurgos.SAM.AM3.HighHaste = set_combine(
    sets.TP.Lycurgos.SAM.AM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Lycurgos.SAM.MidACC.AM3.HighHaste = set_combine(
    sets.TP.Lycurgos.SAM.MidACC.AM,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Lycurgos.SAM.HighACC.AM3.HighHaste = set_combine(
    sets.TP.Lycurgos.SAM.HighACC.AM,{
        ammo="Seething Bomblet +1",
        waist="Kentarch Belt +1",
    }
)

-- Lycurgos(AM Up: SAM Roll) TP Sets -- /SAM
sets.TP.Lycurgos.SAM.AM.STP = set_combine(
    sets.TP.Lycurgos.SAM.STP,{
        right_ear="Cessance earring",
    }
)
sets.TP.Lycurgos.SAM.MidACC.AM.STP = set_combine(
    sets.TP.Lycurgos.SAM.MidACC.AM,{
        -- Stuff goes here --
    }
)
sets.TP.Lycurgos.SAM.HighACC.AM.STP = set_combine(
    sets.TP.Lycurgos.SAM.HighACC.AM,{
        ammo="Seething Bomblet +1",
        neck="Lissome Necklace",
        ear1="Mache Earring",
        feet="Flam. Gambieras +2",
    }
)

-- Lycurgos(AM Up: High Haste + SAM Roll) TP Sets --
sets.TP.Lycurgos.SAM.AM.HighHaste.STP = set_combine(
    sets.TP.Lycurgos.SAM.HighHaste.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Lycurgos.SAM.MidACC.AM.HighHaste.STP = set_combine(
    sets.TP.Lycurgos.SAM.MidACC.STP,{
        waist="Windbuffet Belt +1",
    }
)
sets.TP.Lycurgos.SAM.HighACC.AM.HighHaste.STP = set_combine(
    sets.TP.Lycurgos.SAM.HighACC.STP,{
        waist="Windbuffet Belt +1",
    }
)

--- Hybrid Sets---
sets.TP.Lycurgos.Hybrid = {
    main="Lycurgos", 
    ammo="Seething Bomblet +1",
}
sets.TP.Lycurgos.Hybrid.MidACC = set_combine(
    sets.TP.Lycurgos.Hybrid,{
        -- Stuff goes here --
    }
)
sets.TP.Lycurgos.Hybrid.HighACC = set_combine(
    sets.TP.Lycurgos.Hybrid.MidACC,{
        -- Stuff goes here --
    }
)

-- Hybrid /SAM Hybrid Sets
sets.TP.Lycurgos.Hybrid.SAM = {
    main="Lycurgos", 
    ammo="Seething Bomblet +1",
}
sets.TP.Lycurgos.Hybrid.SAM.MidACC = set_combine(
    sets.TP.Lycurgos.Hybrid.SAM,{
        -- Stuff goes here --
    }
)
sets.TP.Lycurgos.Hybrid.SAM.HighACC = set_combine(
    sets.TP.Lycurgos.Hybrid.SAM.MidACC,{
        -- Stuff goes here --
    }
)