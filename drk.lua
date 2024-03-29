include('organizer-lib')

windower.send_command('bind f5 gs c WeaponToggle')
windower.send_command('bind f6 gs c HybridToggle')
windower.send_command('bind f7 gs c MDTToggle')
windower.send_command('bind f9 gs c PDTToggle')
windower.send_command('bind f10 gs c AccuracyToggle')
windower.send_command('bind f11 gs c MaccToggle')
windower.send_command('bind f12 gs c IdleToggle')
-- windower.send_command('bind f12 gs c TwilightToggle')

--[[
Things I need to add/ could use help adding are....

1.) line ~1280 : how to get holy waters to equip rings
2.) Add a rule that when doomed - will auto matically use holy waters w/ rings

]]--

function file_unload()
	send_command('unbind f5')
	send_command('unbind f6')
end

function select_default_macro_book()
	-- Samurai subjob macro books
	if player.sub_job == 'SAM' then
		if WeaponArray[WeaponIndex] == 'Caladbolg' then
			set_macro_page(3, 7)
		elseif WeaponArray[WeaponIndex] == 'Apocalypse' then
			set_macro_page(4, 7)
		elseif WeaponArray[WeaponIndex] == 'Anguta' then
			set_macro_page(4, 7)
		elseif WeaponArray[WeaponIndex] == 'Liberator' then
			set_macro_page(4, 7)
		elseif WeaponArray[WeaponIndex] == 'Ragnarok' then
			set_macro_page(3, 7)
		elseif WeaponArray[WeaponIndex] == 'Lycurgos' then
			set_macro_page(5, 7)
    elseif WeaponArray[WeaponIndex] == 'FatherTime' then
			set_macro_page(6, 7)
		end
	-- Warrior subjob macro books
	elseif player.sub_job == 'WAR' then
		if WeaponArray[WeaponIndex] == 'Caladbolg' then
			set_macro_page(1,7)
		elseif WeaponArray[WeaponIndex] == 'Apocalypse' then
			set_macro_page(2,7)
		elseif WeaponArray[WeaponIndex] == 'Anguta' then
			set_macro_page(2,7)
		elseif WeaponArray[WeaponIndex] == 'Liberator' then
			set_macro_page(2,7)
		elseif WeaponArray[WeaponIndex] == 'Ragnarok' then
			set_macro_page(1,7)
    elseif WeaponArray[WeaponIndex] == 'FatherTime' then
			set_macro_page(1,7)
		end
	end
end

function get_sets()
	-- Debug Variable that is used to print out gear when in debugmode
	GearDebug = true

	-- Include the gearsets from another file. There is just so much we use two files.

	-- This is the main lua, with sets not specific to any weapons.
	include('gearsets/DRK/Main.lua')
	
	-- Weapon Specific Gearsets
	include('gearsets/DRK/Anguta.lua')
	include('gearsets/DRK/Apocalypse.lua')
  include('gearsets/DRK/FatherTime.lua')
	include('gearsets/DRK/Caladbolg.lua')
	-- include('gearsets/DRK/Liberator.lua')
	-- include('gearsets/DRK/Ragnarok.lua')
	include('gearsets/DRK/Lycurgos.lua')

	-- 3 Levels Of Accuracy Sets For TP/WS/Hybrid/Stun. First Set Is LowACC. 
	--Add More ACC Sets If Needed Then Create Your New ACC Below. 
	AccIndex = 1
	AccArray = {"LowACC","MidACC","HighACC"} 
	MaccIndex = 1
	MaccArray = {"Potency","Resist","Duration"} 

	--Can Delete Any Weapons/Sets That You Don't Need Or Replace/Add The New Weapons That You Want To Use. --
	WeaponIndex = 1
	WeaponArray = {"Caladbolg","Apocalypse","Anguta", "FatherTime", "Lycurgos"} --,"Liberator","Ragnarok",
	IdleIndex = 1
	IdleArray = {"Movement","Regen","Refresh","Regain"} -- Default Idle Set Is Movement --
	DarkSealIndex = 0 --Index for Dark Seal headpiece Potency(0) vs Duration(1)
	Armor = 'None'
	Twilight = 'None'
	Samurai_Roll = 'Off' -- Set Default SAM Roll ON or OFF Here --
	target_distance = 6 -- Set Default Distance Here --
	select_default_macro_book() -- Change Default Macro Book At The End --

	no_swap_gear = S{"Warp Ring", "Dim. Ring (Dem)", "Dim. Ring (Holla)", "Dim. Ring (Mea)",
					"Trizek Ring", "Echad Ring", "Facility Ring", "Capacity Ring",
					"Era. Bul. Pouch", "Dev. Bul. Pouch", "Chr. Bul. Pouch", "Quelling B. Quiver",
					"Yoichi's Quiver", "Artemis's Quiver", "Chrono Quiver"}
end

function pretarget(spell,action)
	-- Auto Use Echo Drops If You Are Silenced --
	if spell.action_type == 'Magic' and buffactive.silence then
		cancel_spell()
		send_command('input /item "Echo Drops" <me>')
	-- Change Berserk To Aggressor If Berserk Is On --
	elseif spell.english == "Berserk" and buffactive.Berserk then
		cancel_spell()
		send_command('Aggressor')
	-- Change Seigan To Third Eye If Seigan Is On --
	elseif spell.english == "Seigan" and buffactive.Seigan then
		cancel_spell()
		send_command('ThirdEye')
	-- Cancel Meditate If TP Is Above 2900 --
	elseif spell.english == "Meditate" and player.tp > 2900 then
		cancel_spell()
		add_to_chat(123, spell.name .. ' Canceled: ['..player.tp..' TP]')
	-- Cancel WS If You Are Out Of Range --
	elseif spell.type == "WeaponSkill" and spell.target.distance > target_distance and player.status == 'Engaged' then
		cancel_spell()
		add_to_chat(123, spell.name..' Canceled: [Out of Range]')
		return
	end
end

function precast(spell,action)
	if spell.type == "WeaponSkill" then
		equipSet = sets.WS
		setname = "sets.WS"
		if equipSet[spell.english] then
			equipSet = equipSet[spell.english]
			setname = setname .. '.' .. spell.english
		end
		if equipSet[AccArray[AccIndex]] then
			equipSet = equipSet[AccArray[AccIndex]]
			setname = setname .. '.' .. AccArray[AccIndex]
		end
		if Armor == 'PDT' then
			equipSet = equipSet['PDT']
			setname = setname .. '.PDT'
		end
		-- Equip Ygnas's Resolve +1 During Reive --
		if buffactive['Reive Mark'] then
			equipSet = set_combine(equipSet,{neck="Ygnas's Resolve +1"})
		end
		if (spell.english == "Entropy" or spell.english == "Resolution" or spell.english == "Insurgency") and (player.tp > 2990 or buffactive.Sekkanoki) then
			if world.time <= (7*60) or world.time >= (17*60) then 
				equipSet = set_combine(equipSet,{ear1="Lugra Earring +1"})
			else
				equipSet = set_combine(equipSet,{ear1="Ishvara Earring"})
			end
		end
	-- Equip gear, specific to job abilities
	elseif spell.type == "JobAbility" then
		equipSet = sets.JA
		setname = "sets.JA"
		if equipSet[spell.english] then
			equipSet = equipSet[spell.english]
			setname = setname .. '.' .. spell.english
		end
	-- Cancel Magic or Ninjutsu If You Are Silenced or Out of Range --
	elseif spell.action_type == 'Magic' then
		if buffactive.silence or spell.target.distance > 16+target_distance then
			cancel_spell()
			add_to_chat(123, spell.name..' Canceled: [Silenced or Out of Casting Range]')
			return
		else
			if spell.english == 'Utsusemi: Ni' then
				if buffactive['Copy Image (3)'] then
					cancel_spell()
					add_to_chat(123, spell.name .. ' Canceled: [3 Images]')
					return
				else
					equipSet = sets.Precast.FastCast
					setname = "sets.Precast.FastCast"
				end
			elseif sets.Precast[spell.skill] then
				equipSet = sets.Precast[spell.skill]
				setname = "sets.Precast." .. spell.skill
			else
				equipSet = sets.Precast.FastCast
				setname = "sets.Precast.FastCast"
			end
		end
	end
	if Twilight == 'Twilight' then
		equipSet = sets.Twilight
		setname = "sets.Twilight"
	end
	equipgearset()
end

function midcast(spell,action)
	equipSet = {}
	setname = ""
	if spell.action_type == 'Magic' then
		equipSet = sets.Midcast
		setname = 'sets.Midcast'
		if spell.english:startswith('Absorb') and spell.english ~= "Absorb-TP" then
			equipSet = sets.Midcast.Absorb
			setname = setname .. '.Absorb' 
			if equipSet[MaccArray[MaccIndex]] then
				equipSet = equipSet[MaccArray[MaccIndex]]
				setname = setname .. '.' .. MaccArray[MaccIndex]
			end
		-- Equip Hachirin-no-Obi On Darksday or Dark Weather --
		elseif spell.english:startswith('Drain') or spell.english:startswith('Aspir') or spell.english:startswith('Bio') then
			if world.day == "Darksday" or world.weather_element == "Dark" then
				equipSet = set_combine(equipSet,{waist="Hachirin-no-Obi"})
			end
			equipSet = sets.Midcast.Drain
			setname = setname .. '.Drain' 
		elseif spell.english == "Stoneskin" then
			if buffactive.Stoneskin then
				send_command('@wait 1.7;cancel stoneskin')
			end
			equipSet = equipSet.Stoneskin
			setname = setname .. '.Stoneskin' 
		elseif spell.english == "Sneak" then
			if spell.target.name == player.name and buffactive['Sneak'] then
				send_command('cancel sneak')
			end
			equipSet = equipSet.Haste
			setname = setname .. '.Haste'
		elseif spell.english:startswith('Utsusemi') then
			if spell.english == 'Utsusemi: Ichi' and (buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)']) then
				send_command('@wait 1.7;cancel Copy Image*')
			end
			equipSet = equipSet.Haste
			setname = setname .. '.Haste'
		elseif spell.english == 'Monomi: Ichi' then
			if buffactive['Sneak'] then
				send_command('@wait 1.7;cancel sneak')
			end
			equipSet = equipSet.Haste
			setname = setname .. '.Haste'
		else
			if equipSet[spell.english] then
				equipSet = equipSet[spell.english]
				setname = setname .. '.' .. spell.english
			end
			if equipSet[MaccArray[MaccIndex]] then
				equipSet = equipSet[MaccArray[MaccIndex]]
				setname = setname .. '.' .. MaccArray[MaccIndex]
			end
			if equipSet[spell.skill] then
				equipSet = equipSet[spell.skill]
				setname = setname .. '.' .. spell.skill
			end
			if equipSet[spell.type] then
				equipSet = equipSet[spell.type]
				setname = setname .. '.' .. spell.type
			end
		end
	elseif equipSet[spell.english] then
		equipSet = equipSet[spell.english]
		setname = setname .. '.' .. spell.english
		add_to_chat(100,'odd')
	end
	 -- Equip Aug'd Fall. Burgeonet +1 When You Have Dark Seal Up --
	if buffactive["Dark Seal"] and DarkSealIndex==0 then
		equipSet = set_combine(equipSet,{head="Fall. Burgeonet +3",})
	end
	if buffactive['Dark Seal'] and buffactive['Nether Void'] and S{"Drain II","Drain III"}:contains(spell.english) and player.tp<1000 then
		equipSet = set_combine(equipSet,(sets.MAXDrain))
		add_to_chat(100,'WARNING: Weapon swapped for Maximum Drain')
	end
	equipgearset()
end

function aftercast(spell,action)
	if spell.type == "WeaponSkill" then
		send_command('wait 0.5;gs c TP')
	-- Arcane Circle Countdown --
	elseif spell.english == "Arcane Circle" then
		send_command('wait 260;input /echo '..spell.name..': [WEARING OFF IN 10 SEC.];wait 10;input /echo '..spell.name..': [OFF]')
	-- Sleep II Countdown --
	elseif spell.english == "Sleep II" then
		send_command('wait 60;input /echo Sleep Effect: [WEARING OFF IN 30 SEC.];wait 15;input /echo Sleep Effect: [WEARING OFF IN 15 SEC.];wait 10;input /echo Sleep Effect: [WEARING OFF IN 5 SEC.]')
	-- Sleep Countdown --
	elseif spell.english == "Sleep" then
		send_command('wait 30;input /echo Sleep Effect: [WEARING OFF IN 30 SEC.];wait 15;input /echo Sleep Effect: [WEARING OFF IN 15 SEC.];wait 10;input /echo Sleep Effect: [WEARING OFF IN 5 SEC.]')
	end
	status_change(player.status)
end
	
function status_change(new,old)
	if Armor == 'PDT' then
		equipSet = sets.PDT
		setname = "sets.PDT"
		if equipSet[WeaponArray[WeaponIndex]] then
			equipSet = equipSet[WeaponArray[WeaponIndex]]
			setname = setname .. '.' .. WeaponArray[WeaponIndex]
		end
	elseif Armor == 'MDT' then
		equipSet = sets.MDT
		setname = "sets.MDT"
		if equipSet[WeaponArray[WeaponIndex]] then
			equipSet = equipSet[WeaponArray[WeaponIndex]]
			setname = setname .. '.' .. WeaponArray[WeaponIndex]
		end
	elseif Armor == 'Scarlet' then
		equip(sets.Scarlet)
		setname = "sets.Scarlet"
	elseif new == 'Engaged' then
		equipSet = sets.TP
		setname = "sets.TP"
		if equipSet[WeaponArray[WeaponIndex]] then
			equipSet = equipSet[WeaponArray[WeaponIndex]]
			setname = setname .. '.' .. WeaponArray[WeaponIndex]
		end
		if Armor == 'Hybrid' and equipSet["Hybrid"] then
			equipSet = equipSet["Hybrid"]
			setname = setname .. '.' .. Armor
		end
		if equipSet[player.sub_job] then
			equipSet = equipSet[player.sub_job]
			setname = setname .. '.' .. player.sub_job
		end
		if equipSet[AccArray[AccIndex]] then
			equipSet = equipSet[AccArray[AccIndex]]
			setname = setname .. '.' .. AccArray[AccIndex]
		end
		if (buffactive["Aftermath: Lv.1"] or buffactive["Aftermath: LV.2"]) and equipSet["AM"] then
			equipSet = equipSet["AM"]
			setname = setname .. '.AM' 
		end
		if buffactive["Aftermath: Lv.3"] and equipSet["AM3"] then
			equipSet = equipSet["AM3"]
			setname = setname .. '.AM3'
		end	
		if buffactive["Last Resort"] and ((buffactive.Haste and buffactive.March == 2) or (buffactive.Embrava and (buffactive.March == 2 or (buffactive.March and buffactive.Haste) or (buffactive.March and buffactive['Mighty Guard']) or (buffactive['Mighty Guard'] and buffactive.Haste))) or (buffactive[580] and (buffactive.March or buffactive.Haste or buffactive.Embrava or buffactive['Mighty Guard']))) and equipSet["HighHaste"] then
			equipSet = equipSet["HighHaste"]
			setname = setname .. '.HighHaste'
		end
		if Samurai_Roll == 'ON' and equipSet["STP"] then
			equipSet = equipSet["STP"]
			setname = setname .. '.STP'
		end
	else
		equipSet = sets.Idle
		setname = "sets.Idle"
		if equipSet[IdleArray[IdleIndex]] then
			equipSet = equipSet[IdleArray[IdleIndex]]
			setname = setname .. '.' .. IdleArray[IdleIndex]
		end
		if equipSet[WeaponArray[WeaponIndex]] then
			equipSet = equipSet[WeaponArray[WeaponIndex]]
			setname = setname .. '.' .. WeaponArray[WeaponIndex]
		end
		if equipSet[player.sub_job] then
			equipSet = equipSet[player.sub_job]
			setname = setname .. '.' .. player.sub_job
		end
		 -- Equip Ygnas's Resolve +1 During Reive --
		if buffactive['Reive Mark'] then
			equipSet = set_combine(equipSet,{neck="Ygnas's Resolve +1"})
		end
		if world.area:endswith('Adoulin') then
			equipSet = set_combine(equipSet,{body="Councilor's Garb"})
		end
	end
	if Twilight == 'Twilight' then
		equip(sets.Twilight)
	end
	check_gear()
	equipgearset()
end

function buff_change(buff,gain)
	buff = string.lower(buff)
	-- AM3 Timer/Countdown --
	if buff == "aftermath: lv.3" then 
		if gain then
			send_command('timers create "Aftermath: Lv.3" 180 down;wait 150;gs c AMWarning 30;wait 15;gs c AMWarning 15;wait 5;gs c AMWarning 10')
		else
			send_command('timers delete "Aftermath: Lv.3"')
			add_to_chat(123,'AM3: [OFF]')
		end
	-- Weakness Timer --
	elseif buff == 'weakness' then
		if gain then
			send_command('timers create "Weakness" 300 up')
		else
			send_command('timers delete "Weakness"')
		end
	elseif buff == "samurai roll" and not gain and Samurai_Roll == 'On' then
		add_to_chat(123, 'Samurai Roll: [Non Perfect Roll Build]')
		Samurai_Roll = 'Off'
	end

	if buff == 'doom' then
		if gain then
			send_command('@input /p Doomed.')
		else
			send_command('@input /p Doom off.')
		end
	end

	if buff == 'charm' then
		if gain then
			if buffactive['aftermath: lv.3'] then
				send_command('@input /p I am charmed and I have AM3, Good luck with that!')
			else
				send_command('@input /p Charmed!')
			end
        else
            send_command('@input /p Charm off.')
		end
	end

	-- Equip Berserker's Torque When You Are Asleep & Have 200+ HP --
	if buff == "sleep" and gain and player.hp > 200  then 
		add_to_chat(123,'Sleep: [Waking up]')
		equip({neck="Berserker's Torque"})
	else
		if not midaction() then
			status_change(player.status)
		end
	end
end

-- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command) --
function self_command(command)
	local command = command
	if type(command) == 'string' then
		command = T(command:split(' '))
		if #command == 0 then
			return
		end
	end
	-- Accuracy Level Toggle --
	if command[1] == 'AccuracyToggle' then
		AccIndex = (AccIndex % #AccArray) + 1
		status_change(player.status)
		add_to_chat(158,'Accuracy Level: '..AccArray[AccIndex])
	-- Main Weapon Toggle --
	elseif command[1] == 'WeaponToggle' then
		WeaponIndex = (WeaponIndex % #WeaponArray) + 1
		add_to_chat(158,'Main Weapon: '..WeaponArray[WeaponIndex])
		status_change(player.status)
		select_default_macro_book()
	-- Macc Toggle --
	elseif command[1] == 'MaccToggle' then
		MaccIndex = (MaccIndex % #MaccArray) + 1
		add_to_chat(158,'Macc Level: '..MaccArray[MaccIndex])
		status_change(player.status)
	-- Auto Update Gear Toggle --
	elseif command[1] == 'RefreshGear' then
		status_change(player.status)
		add_to_chat(158,'Auto Update Gear')
	-- Hybrid Toggle --
	elseif command[1] == 'HybridToggle' then
		if Armor == 'Hybrid' then
			Armor = 'None'
			add_to_chat(123,'Hybrid Set: [Unlocked]')
		else
			Armor = 'Hybrid'
			add_to_chat(158,'Hybrid Set: '..AccArray[AccIndex])
		end
		status_change(player.status)
	-- DarkSeal Toggle --
	elseif command[1] == 'DarkSealToggle' then
		if DarkSealIndex == 1 then
			DarkSealIndex = 0
			add_to_chat(123,'DarkSeal Duration: [On]')
		else
			DarkSealIndex = 1
			add_to_chat(158,'DarkSeal Potency: [On]')
		end
		status_change(player.status)
	-- PDT Toggle --
	elseif command[1] == 'PDTToggle' then
		if Armor == 'PDT' then
			Armor = 'None'
			add_to_chat(123,'PDT Set: [Unlocked]')
		else
			Armor = 'PDT'
			add_to_chat(158,'PDT Set: [Locked]')
		end
		status_change(player.status)
	-- MDT Toggle --
	elseif command[1] == 'MDTToggle' then
		if Armor == 'MDT' then
			Armor = 'None'
			add_to_chat(123,'MDT Set: [Unlocked]')
		else
			Armor = 'MDT'
			add_to_chat(158,'MDT Set: [Locked]')
		end
		status_change(player.status)
	-- Scarlet Toggle --
	elseif command[1] == 'ScarletToggle' then
		if Armor == 'Scarlet' then
			Armor = 'None'
			add_to_chat(123,'Scarlet Set: [Unlocked]')
		else
			Armor = 'Scarlet'
			add_to_chat(158,'Scarlet Set: [Locked]')
		end
		status_change(player.status)
	-- Twilight Toggle --
	elseif command[1] == 'TwilightToggle' then
		if Twilight == 'Twilight' then
			Twilight = 'None'
			add_to_chat(123,'Twilight Set: [Unlocked]')
		else
			Twilight = 'Twilight'
			add_to_chat(158,'Twilight Set: [locked]')
		end
		status_change(player.status)
	-- Distance Toggle --
	elseif command[1] == 'DistanceToggle' then
		if player.target.distance then
			target_distance = math.floor(player.target.distance*10)/10
			add_to_chat(158,'Distance: '..target_distance)
		else
			add_to_chat(123,'No Target Selected')
		end
	-- Idle Toggle --
	elseif command[1] == 'IdleToggle' then
		IdleIndex = (IdleIndex % #IdleArray) + 1
		status_change(player.status)
		add_to_chat(158,'Idle Set: '..IdleArray[IdleIndex])
	elseif command[1] == 'TP' then
		add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
	elseif command[1] == 'AMWarning' then
		aftermath_warning(command[2])
	elseif command[1]:match('^SC%d$') then
		send_command('//' .. sc_map[command])
	elseif command[1] == 'GearDebug' then
		if GearDebug == true then
			GearDebug = false
			add_to_chat(123,'Gear Debug: [False]')
		else
			GearDebug = true
			add_to_chat(158,'Gear Debug: [True]')
		end
	end
end

function sub_job_change(newSubjob, oldSubjob)
	select_default_macro_book()
end

function set_macro_page(set,book)
	if not tonumber(set) then
		add_to_chat(123,'Error setting macro page: Set is not a valid number ('..tostring(set)..').')
		return
	end
	if set < 1 or set > 10 then
		add_to_chat(123,'Error setting macro page: Macro set ('..tostring(set)..') must be between 1 and 10.')
		return
	end
	if book then
		if not tonumber(book) then
			add_to_chat(123,'Error setting macro page: book is not a valid number ('..tostring(book)..').')
			return
		end
		if book < 1 or book > 20 then
			add_to_chat(123,'Error setting macro page: Macro book ('..tostring(book)..') must be between 1 and 20.')
			return
		end
		send_command('@input /macro book '..tostring(book)..';wait .1;input /macro set '..tostring(set))
	else
		send_command('@input /macro set '..tostring(set))
	end
end

function equipgearset()
	equip(equipSet)
	if GearDebug == true and setname ~= "" then 
		add_to_chat(122,'Set: ['..setname..']')
	end
end

function aftermath_warning(argument)
	add_to_chat(100,'Aftermath Lv.3 : [WEARING OFF IN '..argument..' SECONDS]')
end

function check_gear()
    if no_swap_gear:contains(player.equipment.left_ring) then
        disable("ring1")
    else
        enable("ring1")
    end
    if no_swap_gear:contains(player.equipment.right_ring) then
        disable("ring2")
    else
        enable("ring2")
    end
    if no_swap_gear:contains(player.equipment.waist) then
        disable("waist")
    else
        enable("waist")
    end
end

-- This function allows us to detect a perfect samurai roll
windower.register_event('action',function(act)
	if act.category == 6 and act.param == 109 then
		if
			function(act)
				for i = 1, #act.targets do
					if act.targets[i].id == player.id then
						return true
					end
				end
				return false
			end
		then
			if act.targets[1].actions[1].param == 11 then
				windower.add_to_chat(158,"Samurai Roll: [Perfect Roll Build]")
				Samurai_Roll = "On"
			end
		end
	end
end)

-- This enables gear after a zone change if a warp ring was used, etc.
windower.register_event('zone change',function()
	if no_swap_gear:contains(player.equipment.left_ring) then
		enable("ring1")
		equipgearset()
	end
	if no_swap_gear:contains(player.equipment.right_ring) then
		enable("ring2")
		equipgearset()
	end
	if no_swap_gear:contains(player.equipment.waist) then
		enable("waist")
		equipgearset()
	end
end)
