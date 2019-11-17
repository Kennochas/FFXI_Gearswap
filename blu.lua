function get_sets()

    TP_Index = 1
    Idle_Index = 1
	
	send_command('bind f9 gs c toggle Idle set')
	send_command('bind f10 gs c toggle TP set')

	function file_unload()
	send_command('unbind ^f9')
	send_command('unbind ^f10')
	send_command('unbind ^f12')

	send_command('unbind !f9')
	send_command('unbind !f10')
	send_command('unbind !f12')

	send_command('unbind f9')
	send_command('unbind f10')
	send_command('unbind f12')
	end	  
			
    sets.JA = {}
	      
    sets.JA.ChainAffinity = {feet="Assim. charuqs +1"}
    sets.JA.BurstAffinity = {feet="Mavi Basmak +2"}
    sets.JA.Efflux = {legs="Mavi tayt +2"}
    sets.JA.AzureLore = {hands="Luh. bazubands +1"}
    sets.JA.Diffusion = {feet="Luhlaza Charuqs +1"}
    sets.JA.Waltz = {
		head="Jhakri Coronal +1",
		body="Jhakri Robe +1",
		hands="Wayfarer Cuffs",
		ring1="Airy Ring",
		ring2="Asklepian Ring",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1"
	}
	sets.JA.step = {ear1="Steelflash Earring"}
    
    -- WEAPONSKILL Sets --
	sets.WS = {}
    
    sets.WS['Requiescat'] = {
		ammo="Ginsen",
		head="Jhakri Coronal +1",
		neck="Fotia Gorget",
		ear1="Brutal Earring",
		ear2="Moonshade Earring",
		body="Jhakri Robe +1",
		hands="Jhakri Cuffs +1",
		ring1="Rufescent Ring",
		ring2="Petrov Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+19','Accuracy+10 Attack+10','DEX+5','Crit.hit rate+10',}},
		waist="Fotia Belt",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1"
	}

    sets.WS['Sanguine Blade'] = {
		ammo="Pemphredo tathlum",
		head="Jhakri Coronal +1",
		neck="Sanctity Necklace",
		ear1="Moldavite Earring",
		ear2="Regal earring",
		body="Jhakri Robe +1",
		hands="Jhakri Cuffs +1",
		ring1="Persis Ring",
		ring2="Vertigo Ring",
		back="Cornflower Cape",
		waist="Eschan Stone",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1"
	}							

   sets.WS['Chant du Cygne'] = {
		ammo="Jukukik Feather",
		head="Adhemar Bonnet +1",
		body="Adhemar Jacket +1",
		hands="Adhemar Wrist. +1",
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet="Thereoid greaves",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Moonshade Earring",
		right_ear="Brutal Earring",
		left_ring="Epona's Ring",
		right_ring="Hetairoi Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+19','Accuracy+10 Attack+10','DEX+5','Crit.hit rate+10',}},
	}
							
    sets.WS['Expiacion']  = {
		ammo="Falcon Eye",
		head="Adhemar Bonnet +1",
		body="Adhemar Jacket +1",
		hands="Adhemar Wristbands -1",
		legs={ name="Adhemar Kecks", augments={'DEX+10','AGI+10','Accuracy+15',}},
		feet={ name="Adhemar Gamashes", augments={'DEX+10','AGI+10','Accuracy+15',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
		left_ring="Epona's Ring",
		right_ring="Ilabrat Ring",
		back="Grounded Mantle",
	}
							
	sets.WS['Savage Blade']  = {
		ammo="Falcon Eye",
		head={ name="Herculean Helm", augments={'Rng.Atk.+10','Weapon skill damage +5%','AGI+3','Accuracy+9','Attack+3',}},
		body= "Assim. Jubbah +3",
		hands= "Jhakri Cuffs +1",
		legs="Samnuha tights",
		feet="Jhakri Pigaches +1",
		neck="Fotia Gorget",
		waist="Grunfeld rope",
		left_ear="Ishvara Earring",
		right_ear="Moonshade Earring",
		left_ring="Regal Ring",
		right_ring="Rufescent Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}

	--Precast Sets--
    sets.precast = {}
	sets.precast.FC = {}
	
    sets.precast.FC.Standard = {
		-- main={ name="Vampirism", augments={'STR+9','INT+8','"Occult Acumen"+9','DMG:+13',}},
		-- sub={ name="Vampirism", augments={'STR+3',}},
		ammo="Impatiens",
		head="Carmine Mask", -- 12
		--body={ name="Samnuha Coat", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+5','"Dual Wield"+5',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, -- 8
		legs="Aya. Cosciales +2", -- 6
		-- feet={ name="Carmine Greaves", augments={'HP+60','MP+60','Phys. dmg. taken -3',}},
		neck="Orunmila's Torque", -- 5
		waist="Witful Belt", -- 3
		left_ear="Loquac. Earring", -- 2
		right_ear="Etiolation Earring", -- 1
		left_ring="Prolix Ring", -- 2
		right_ring="Kishar Ring", -- 4
		back={ name="Rosmerta's Cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Damage taken-5%',}}, -- 10
	}
														
    sets.precast.FC.Blue = {
		-- main={ name="Vampirism", augments={'STR+9','INT+8','"Occult Acumen"+9','DMG:+13',}},
		-- sub={ name="Vampirism", augments={'STR+3',}},
		ammo="Impatiens",
		head="Carmine Mask", -- 12
		--body={ name="Samnuha Coat", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+5','"Dual Wield"+5',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, -- 8
		legs="Aya. Cosciales +2", -- 6
		-- feet={ name="Carmine Greaves", augments={'HP+60','MP+60','Phys. dmg. taken -3',}},
		neck="Orunmila's Torque", -- 5
		waist="Witful Belt", -- 3
		left_ear="Loquac. Earring", -- 2
		right_ear="Etiolation Earring", -- 1
		left_ring="Prolix Ring", -- 2
		right_ring="Kishar Ring", -- 4
		back={ name="Rosmerta's Cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Damage taken-5%',}}, -- 10
	}

	--Blue Magic Sets--
	sets.BlueMagic = {}
       
	sets.BlueMagic.STR = {
		main={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
		sub={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +1",
		body="Jhakri Robe +1",
		hands="Jhakri Cuffs +1",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1",
		neck="Baetyl Pendant",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hermetic earring",
		left_ring="Acumen Ring",
		right_ring="Jhakri Ring",
		back="Cornflower Cape",
	}
												
	sets.BlueMagic.STRDEX = {
		main={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
		sub={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +1",
		body="Jhakri Robe +1",
		hands="Jhakri Cuffs +1",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1",
		neck="Baetyl Pendant",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hermetic earring",
		left_ring="Acumen Ring",
		right_ring="Jhakri Ring",
		back="Cornflower Cape",
	}
													
	sets.BlueMagic.STRVIT = {
		main={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
		sub={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +1",
		body="Jhakri Robe +1",
		hands="Jhakri Cuffs +1",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1",
		neck="Baetyl Pendant",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hermetic earring",
		left_ring="Acumen Ring",
		right_ring="Jhakri Ring",
		back="Cornflower Cape",
	}
														
	sets.BlueMagic.STRMND = {
		main={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
		sub={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +1",
		body="Jhakri Robe +1",
		hands="Jhakri Cuffs +1",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1",
		neck="Baetyl Pendant",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hermetic earring",
		left_ring="Acumen Ring",
		right_ring="Jhakri Ring",
		back="Cornflower Cape",
	}
															
	sets.BlueMagic.AGI = {
		main={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
		sub={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +1",
		body="Jhakri Robe +1",
		hands="Jhakri Cuffs +1",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1",
		neck="Baetyl Pendant",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hermetic earring",
		left_ring="Acumen Ring",
		right_ring="Jhakri Ring",
		back="Cornflower Cape",
	}
												
	sets.BlueMagic.INT = {
		main={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
		sub={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +1",
		body="Jhakri Robe +1",
		hands="Jhakri Cuffs +1",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1",
		neck="Baetyl Pendant",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hermetic earring",
		left_ring="Acumen Ring",
		right_ring="Jhakri Ring",
		back="Cornflower Cape",
	}
                                                 
	sets.BlueMagic.Cures = {
		main={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
		sub={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +1",
		body="Jhakri Robe +1",
		hands="Jhakri Cuffs +1",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1",
		neck="Baetyl Pendant",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hermetic earring",
		left_ring="Acumen Ring",
		right_ring="Jhakri Ring",
		back="Cornflower Cape",
	}
													
	sets.BlueMagic.SelfCures = {
		main={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
		sub={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +1",
		body="Jhakri Robe +1",
		hands="Jhakri Cuffs +1",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1",
		neck="Baetyl Pendant",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hermetic earring",
		left_ring="Acumen Ring",
		right_ring="Jhakri Ring",
		back="Cornflower Cape",
	}
													
	sets.BlueMagic.Stun = {
		main={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
		sub={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +1",
		body="Jhakri Robe +1",
		hands="Jhakri Cuffs +1",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1",
		neck="Baetyl Pendant",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hermetic earring",
		left_ring="Acumen Ring",
		right_ring="Jhakri Ring",
		back="Cornflower Cape",
	}
												
	sets.BlueMagic.HeavyStrike = {
		head="Whirlpool mask",
		neck="Ire torque +1",
		ear1="Flame pearl",
		ear2="Heartseeker earring",
		body="Assim. jubbah +1",
		hands="Umuthi gloves",
		ring1="Pyrosoul ring",
		ring2="Rajas ring",
		back="Cornflower cape",
		waist="Dynamic belt +1",
		legs="Adhemar Kecks",
		feet="Assim. charuqs +1"
	}                                                       
	sets.BlueMagic.ChargedWhisker = {
		head="Uk'uxkaj cap",
		neck="Eddy necklace",
		ear1="Regal earring",
		ear2="Friomisi earring",
		body="Jhakri Robe +1",
		hands="Umuthi gloves",
		ring1="Acumen ring",
		ring2="Rajas ring",
		back="Cornflower cape",
		waist="Pipilaka belt",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1"
	}
	
	sets.BlueMagic.WhiteWind = {
		head="Luh. Keffiyeh +1",
		neck="Cuamiz collar",
		ear1="Upsurge Earring",
		ear2="Cassie earring",
		body="Aetosaur jerkin",
		hands="Weath. cuffs +1",
		ring1="Bomb queen ring",
		ring2="Meridian ring",
		back="Oretania's cape",
		waist="Gold mog. belt",
		legs="Desultor tassets",
		feet="Llwyd's clogs"
	}
																		
	sets.BlueMagic.MagicAccuracy = {
		head="Assim. keffiyeh",
		neck="Eddy necklace",
		ear1="Psystorm earring",
		ear2="Lifestorm earring",
		body="Assim. jubbah +1",
		hands="Jhakri Cuffs +1",
		ring1="Mediator's ring",
		ring2="Sangoma ring",
		back="Cornflower cape",
		waist="Ovate rope",
		legs="Mavi tayt +2",
		feet="Luhlaza charuqs +1"
	}
													
	sets.BlueMagic.SkillRecast = {
		head="Luh. Keffiyeh +1",
		neck="Jeweled collar",
		ear1="Loquac. earring",
		body="Assim. jubbah +1",
		hands="Mv. Bazubands +2",
		ring1="Prolix ring",
		back="Swith cape",
		waist="Twilight belt",
		legs="Mavi tayt +2",
		feet="Luhlaza charuqs +1"
	}

	--Utility Sets--
	sets.Utility = {}
	sets.Utility.Stoneskin = {
		head="Haruspex hat",
		neck="Stone Gorget",
		ear1="Loquac. earring",
		ear2="Earthcry earring",
		body="Assim. jubbah +1",
		hands="Stone Mufflers",
		ring1="Prolix ring",
		back="Swith cape",
		waist="Siegel sash",
		legs="Haven hose",
		feet="Iuitl gaiters"
	}
														
	sets.Utility.Phalanx = {
		head="Haruspex hat",
		neck="Colossus's torque",
		ear1="Loquac. earring",
		ear2="Augment. earring",
		body="Assim. jubbah +1",
		hands="Ayao's gages",
		ring1="Prolix ring",
		back="Swith cape",
		waist="Pythia sash +1",
		legs="Portent pants",
		feet="Iuitl gaiters"
	}
	
	TP_Set_Names = {"Standard", "Hybrid"}
    sets.TP = {}
	
	sets.TP['Standard'] = {
		main="Tanmogayi",
		sub="Kaja Sword",
		ammo="Ginsen",
		head="Adhemar Bonnet +1",
		body="Adhemar Jacket +1",
		hands="Adhemar Wrist. +1",
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet="Herculean Boots",
		neck="Lissome Necklace",
		waist="Windbuffet Belt +1",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Epona's Ring",
		right_ring="Petrov Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}

    sets.TP['Low Acc'] = {
		ammo="Ginsen",
		head="Adhemar Bonnet +1",
		body="Adhemar Jacket +1",
		hands="Adhemar Wrist. +1",
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet="Herculean Boots",
		neck="Lissome Necklace",
		waist="Windbuffet Belt +1",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Epona's Ring",
		right_ring="Petrov Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}
        
    sets.TP['High Acc'] = {
		ammo="Ginsen",
		head="Adhemar Bonnet +1",
		body="Adhemar Jacket +1",
		hands="Adhemar Wrist. +1",
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet="Herculean Boots",
		neck="Lissome Necklace",
		waist="Windbuffet Belt +1",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Epona's Ring",
		right_ring="Petrov Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}
        
    sets.TP['Hybrid'] = {
		ammo="Staunch Tathlum",
		head="Aya. Zucchetto +2",
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands="Assimilator's bazubands +3",
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Reiki Yotai",
		left_ear="Suppanomimi",
		right_ear="Cessance Earring",
		left_ring="Defending Ring",
		right_ring="Epona's Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}
    
    Idle_Set_Names = {'Normal','DT'}
    sets.Idle = {}
    sets.Idle.Normal = {
		head="Jhakri Coronal +1",
		body="Jhakri Robe +1",
		hands="Jhakri Cuffs +1",
		legs="Carmine Cuisses +1",
		feet="Jhakri Pigaches +1",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Regal earring",
		left_ring="Acumen Ring",
		right_ring="Shiva Ring",
		back="Cornflower Cape",
	}
                
    sets.Idle.DT = {
		sub="Genmei Shield",
		ammo="Staunch Tathlum",
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs="Carmine Cuisses +1",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Flume belt",
		left_ear="Genmei Earring",
		right_ear="Etiolation Earring",
		left_ring="Ayanmo Ring",
		right_ring="Defending Ring",
		back={ name="Rosmerta's Cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Damage taken-5%',}},
	}
end

function precast(spell)
    if sets.JA[spell.english] then 
        equip(sets.JA[spell.english])
    elseif spell.action_type == 'Magic' then 
        equip(sets.precast.FC.Standard)
        if spell.skill == 'Blue Magic' then 
            equip(sets.precast.FC.Blue)
        end
    elseif spell.type == "WeaponSkill" then 
        if sets.WS[spell.english] then 
            equip(sets.WS[spell.english]) 
        end
    elseif string.find(spell.english,'Waltz') then 
        equip(sets.JA.Waltz)
    elseif string.find(spell.english,'Step') then 
        equip(sets.JA.Step)
    end
end

-- BLUE MAGIC MIDCAST --
function midcast(spell,act)
        if spell.english == 'Vertical Cleave' 
		or spell.english == 'Death Scissors' 
		or spell.english == 'Empty Thrash' 
		or spell.english == 'Dimensional Death' 
		or spell.english == 'Quadrastrike' 
		or spell.english == 'Bloodrake' 
		then equip(sets.BlueMagic.STR)
                
				if buffactive['Chain Affinity'] 
				then equip(sets.JA.ChainAffinity)
                end
                if buffactive['Efflux'] 
				then equip(sets.JA.Efflux)
                end
        end
               
        if spell.english == 'Disseverment' 
		or spell.english == 'Hysteric Barrage' 
		or spell.english == 'Frenetic Rip' 
		or spell.english == 'Seedspray' 
		or spell.english == 'Vanity Dive' 
		or spell.english == 'Goblin Rush' 
		or spell.english == 'Paralyzing Triad' 
		or spell.english == 'Thrashing Assault' 
		then equip(sets.BlueMagic.STRDEX)
		
                if buffactive['Chain Affinity'] then
                        equip(sets.JA.ChainAffinity)
                end
                if buffactive['Efflux'] then
                        equip(sets.JA.Efflux)
                end
        end
       
        if spell.english == 'Quad. Continuum' 
		or spell.english == 'Delta Thrust' 
		or spell.english == 'Cannonball' 
		or spell.english == 'Glutinous Dart' 
		then equip(sets.BlueMagic.STRVIT)
		
                if buffactive['Chain Affinity'] then
                        equip(sets.JA.ChainAffinity)
                end
                if buffactive['Efflux'] then
                        equip(sets.JA.Efflux)
                end
        end
       
        if spell.english == 'Whirl of Rage' 
		then equip(sets.BlueMagic.STRMND)
		
                if buffactive['Chain Affinity'] then
                        equip(sets.JA.ChainAffinity)
                end
                if buffactive['Efflux'] then
                        equip(sets.JA.Efflux)
                end
        end
       
        if spell.english == 'Benthic Typhoon' 
		or spell.english == 'Final Sting' 
		or spell.english == 'Spiral Spin' 
		then equip(sets.BlueMagic.AGI)
                if buffactive['Chain Affinity'] then
                        equip(sets.JA.ChainAffinity)
                end
                if buffactive['Efflux'] then
                        equip(sets.JA.Efflux)
                end
        end

        if spell.english == 'Gates of Hades' 
		or spell.english == 'Leafstorm' 
		or spell.english == 'Firespit' 
		or spell.english == 'Acrid Stream' 
		or spell.english == 'Regurgitation' 
		or spell.english == 'Corrosive Ooze' 
		or spell.english == 'Thermal Pulse' 
		or spell.english == 'Magic Hammer' 
		or spell.english == 'Evryone. Grudge' 
		or spell.english == 'Water Bomb' 
		or spell.english == 'Dark Orb' 
		or spell.english == 'Thunderbolt' 
		or spell.english == 'Tem. Upheaval' 
		or spell.english == 'Embalming Earth' 
		or spell.english == 'Foul Waters' 
		or spell.english == 'Rending Deluge' 
		or spell.english == 'Droning Whirlwind' 
		or spell.english == 'Subduction'
		or spell.english == 'Anvil Lightning' 
		or spell.english == 'Blinding Fulgor' 
		or spell.english == 'Entomb'
		or spell.english == 'Palling Salvo'
		or spell.english == 'Scouring Spate'
        or spell.english == 'Searing Tempest' 
		or spell.english == 'Silent Storm'
		or spell.english == 'Diffusion Ray' 
		or spell.english == 'Spectral Floe'
		or spell.english == 'Tenebral Crush'
		or spell.english == 'Dream Flower'
		then equip(sets.BlueMagic.INT)
                if buffactive['Burst Affinity'] 
				then equip(sets.JA.BurstAffinity)
                end
        end

        if spell.english == 'Magic Fruit' 
		or spell.english == 'Plenilune Embrace' 
		or spell.english == 'Wild Carrot' 
		or spell.english == 'Pollen' 
		or spell.english == 'Cure III' 
		or spell.english == 'Cure IV' 
		then equip(sets.BlueMagic.Cures)
                        if spell.target.name == player.name 
						and string.find(spell.english, 'Magic Fruit') 
						or string.find(spell.english, 'Plenilune Embrace') 
						or string.find(spell.english, 'Wild Carrot') 
						or string.find(spell.english, 'Cure III') 
						or string.find(spell.english, 'Cure IV') 
						then equip(sets.BlueMagic.SelfCures)
                        end
        end
       
        if spell.english == 'White Wind' then
                equip(sets.BlueMagic.WhiteWind)
        end

        if spell.english == 'Head Butt' 
		or spell.english == 'Sudden Lunge' 
		or spell.english == 'Blitzstrahl' 
		then equip(sets.BlueMagic.Stun)
        end
       
        if spell.english == 'Heavy Strike' 
		then equip(sets.BlueMagic.HeavyStrike)
        end
       
        if spell.english == 'Charged Whisker' then
                equip(sets.BlueMagic.ChargedWhisker)
                if buffactive['Burst Affinity'] then
                        equip(sets.JA.BurstAffinity)
                end
        end
       
        if spell.english == 'Frightful Roar' 
		or spell.english == 'Infrasonics' 
		or spell.english == 'Barbed Crescent' 
		or spell.english == 'Tourbillion' 
		or spell.english == 'Cimicine Discharge' 
		or spell.english == 'Sub-zero smash' 
		or spell.english == 'Filamented Hold' 
		or spell.english == 'Mind Blast' 
		or spell.english == 'Sandspin' 
		or spell.english == 'Hecatomb Wave' 
		or spell.english == 'Cold Wave' 
		or spell.english == 'Terror Touch' 
		then equip(sets.BlueMagic.MagicAccuracy)
        end
       
        if spell.english == 'MP Drainkiss' 
		or spell.english == 'Digest' 
		or spell.english == 'Blood Saber' 
		or spell.english == 'Blood Drain' 
		or spell.english == 'Osmosis' 
		or spell.english == 'Occultation' 
		or spell.english == 'Magic Barrier' 
		or spell.english == 'Diamondhide' 
		or spell.english == 'Metallic Body' 
		or spell.english == 'Retinal Glare' 
		then equip(sets.BlueMagic.SkillRecast)
                if buffactive['Diffusion'] 
				then equip(sets.JA.Diffusion)
                end
        end
       
        if spell.english == 'Cocoon' 
		or spell.english == 'Harden Shell' 
		or spell.english == 'Animating Wail' 
		or spell.english == 'Battery Charge' 
		or spell.english == 'Nat. Meditation' 
		or spell.english == 'Carcharian Verve' 
		or spell.english == 'O. Counterstance' 
		or spell.english == 'Barrier Tusk' 
		or spell.english == 'Saline Coat' 
		or spell.english == 'Regeneration' 
		or spell.english == 'Erratic Flutter' 
		or spell.english == 'Mighty Guard' 
		then
                if buffactive['Diffusion'] then equip(sets.JA.Diffusion)
                end
        end
end

function aftercast(spell)
    if player.status=='Engaged' then
        equip(sets.TP[TP_Set_Names[TP_Index]])
    else
        equip(sets.Idle[Idle_Set_Names[Idle_Index]])
    end
end

function status_change(new,old)
    if T{'Idle','Resting'}:contains(new) then
        equip(sets.Idle[Idle_Set_Names[Idle_Index]])
    elseif new == 'Engaged' then
        equip(sets.TP[TP_Set_Names[TP_Index]])
    end
end

function self_command(command)
    if command == 'toggle TP set' then
        TP_Index = TP_Index +1
        if TP_Index > #TP_Set_Names then TP_Index = 1 end
        send_command('@input /echo ----- TP Set changed to '..TP_Set_Names[TP_Index]..' -----')
        equip(sets.TP[TP_Set_Names[TP_Index]])
    elseif command == 'toggle Idle set' then
        Idle_Index = Idle_Index +1
        if Idle_Index > #Idle_Set_Names then Idle_Index = 1 end
        send_command('@input /echo ----- Idle Set changed to '..Idle_Set_Names[Idle_Index]..' -----')
        equip(sets.Idle[Idle_Set_Names[Idle_Index]])
    end
end

function set_macros(sheet,book)
    if book then 
        send_command('@input /macro book '..tostring(book)..';wait .1;input /macro set '..tostring(sheet))
        return
    end
    send_command('@input /macro set '..tostring(sheet))

end
set_macros(1,11) -- Sheet, Book