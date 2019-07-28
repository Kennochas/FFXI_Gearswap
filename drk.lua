include('organizer-lib')

windower.send_command('bind f5 gs c WeaponToggle')
windower.send_command('bind f7 gs c MDTToggle')
windower.send_command('bind f9 gs c PDTToggle')
windower.send_command('bind f10 gs c AccuracyToggle')
windower.send_command('bind f11 gs c MaccToggle')
windower.send_command('bind f12 gs c ScarletToggle')
-- windower.send_command('bind f12 gs c TwilightToggle')

--[[
Things I need to add/ could use help adding are....

1.) line ~1280 : how to get holy waters to equip rings
2.) Add a rule that when doomed - will auto matically use holy waters w/ rings

]]--

function get_sets()
	-- Include the gearsets from another file. There is just so much we use two files.
	include('drk-gearsets.lua')

	-- 3 Levels Of Accuracy Sets For TP/WS/Hybrid/Stun. First Set Is LowACC. 
	--Add More ACC Sets If Needed Then Create Your New ACC Below. 
	AccIndex = 1
	AccArray = {"LowACC","MidACC","HighACC"} 
	MaccIndex = 1
	MaccArray = {"Potency","Resist","Duration"} 

	--Can Delete Any Weapons/Sets That You Don't Need Or Replace/Add The New Weapons That You Want To Use. --
	WeaponIndex = 1
	WeaponArray = {"Caladbolg","Apocalypse","Anguta"} --,"Liberator","Ragnarok",
	IdleIndex = 1
	IdleArray = {"Movement","Regen","Refresh","Regain"} -- Default Idle Set Is Movement --
	DarkSealIndex = 0 --Index for Dark Seal headpiece Potency(0) vs Duration(1)
	Armor = 'None'
	Twilight = 'None'
	Samurai_Roll = 'Off' -- Set Default SAM Roll ON or OFF Here --
	target_distance = 6 -- Set Default Distance Here --
	select_default_macro_book() -- Change Default Macro Book At The End --
end

function pretarget(spell,action)
	if spell.action_type == 'Magic' and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
		cancel_spell()
		send_command('input /item "Echo Drops" <me>')
	elseif spell.english == "Berserk" and buffactive.Berserk then -- Change Berserk To Aggressor If Berserk Is On --
		cancel_spell()
		send_command('Aggressor')
	elseif spell.english == "Seigan" and buffactive.Seigan then -- Change Seigan To Third Eye If Seigan Is On --
		cancel_spell()
		send_command('ThirdEye')
	elseif spell.english == "Meditate" and player.tp > 2900 then -- Cancel Meditate If TP Is Above 2900 --
		cancel_spell()
		add_to_chat(123, spell.name .. ' Canceled: ['..player.tp..' TP]')
	elseif spell.type == "WeaponSkill" and spell.target.distance > target_distance and player.status == 'Engaged' then -- Cancel WS If You Are Out Of Range --
		cancel_spell()
		add_to_chat(123, spell.name..' Canceled: [Out of Range]')
		return
	end
end

function precast(spell,action)
	if spell.type == "WeaponSkill" then
		equipSet = sets.WS
		if equipSet[spell.english] then
			equipSet = equipSet[spell.english]
		end
		if equipSet[AccArray[AccIndex]] then
			equipSet = equipSet[AccArray[AccIndex]]
		end
		if buffactive['Reive Mark'] then -- Equip Ygnas's Resolve +1 During Reive --
			equipSet = set_combine(equipSet,{neck="Ygnas's Resolve +1"})
		end
		if (spell.english == "Entropy" or spell.english == "Resolution" or spell.english == "Insurgency") and (player.tp > 2990 or buffactive.Sekkanoki) then
			if world.time <= (7*60) or world.time >= (17*60) then 
				equipSet = set_combine(equipSet,{ear1="Lugra Earring +1"})
			else
				equipSet = set_combine(equipSet,{ear1="Ishvara Earring"})
			end
		end
		equip(equipSet)
	elseif spell.type == "JobAbility" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	elseif spell.action_type == 'Magic' then
		if buffactive.silence or spell.target.distance > 16+target_distance then -- Cancel Magic or Ninjutsu If You Are Silenced or Out of Range --
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
					equip(sets.Precast.FastCast)
				end
			elseif sets.Precast[spell.skill] then
				equip(sets.Precast[spell.skill])
			else
				equip(sets.Precast.FastCast)
			end
		end
	elseif spell.english == 'Spectral Jig' and buffactive.Sneak then
		cast_delay(0.2)
		send_command('cancel Sneak')
	end
	if Twilight == 'Twilight' then
		equip(sets.Twilight)
	end
end

function midcast(spell,action)
	equipSet = {}
	if spell.action_type == 'Magic' then
		equipSet = sets.Midcast
		if spell.english:startswith('Absorb') and spell.english ~= "Absorb-TP" then
			equipSet = sets.Midcast.Absorb
			if equipSet[MaccArray[MaccIndex]] then
				equipSet = equipSet[MaccArray[MaccIndex]]
			end
		elseif spell.english:startswith('Drain') or spell.english:startswith('Aspir') or spell.english:startswith('Bio') then
			if world.day == "Darksday" or world.weather_element == "Dark" then -- Equip Hachirin-no-Obi On Darksday or Dark Weather --
				equipSet = set_combine(equipSet,{waist="Hachirin-no-Obi"})
			end
			equipSet = 	sets.Midcast.Drain
		elseif spell.english == "Stoneskin" then
			if buffactive.Stoneskin then
				send_command('@wait 1.7;cancel stoneskin')
			end
			equipSet = equipSet.Stoneskin
		elseif spell.english == "Sneak" then
			if spell.target.name == player.name and buffactive['Sneak'] then
				send_command('cancel sneak')
			end
			equipSet = equipSet.Haste
		elseif spell.english:startswith('Utsusemi') then
			if spell.english == 'Utsusemi: Ichi' and (buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)']) then
				send_command('@wait 1.7;cancel Copy Image*')
			end
			equipSet = equipSet.Haste
		elseif spell.english == 'Monomi: Ichi' then
			if buffactive['Sneak'] then
				send_command('@wait 1.7;cancel sneak')
			end
			equipSet = equipSet.Haste
		else
			if equipSet[spell.english] then
				equipSet = equipSet[spell.english]
			end
			if equipSet[MaccArray[MaccIndex]] then
				equipSet = equipSet[MaccArray[MaccIndex]]
			end
			if equipSet[spell.skill] then
				equipSet = equipSet[spell.skill]
			end
			if equipSet[spell.type] then
				equipSet = equipSet[spell.type]
			end
		end
	elseif equipSet[spell.english] then
		equipSet = equipSet[spell.english]
	end
	if buffactive["Dark Seal"] and DarkSealIndex==0 then -- Equip Aug'd Fall. Burgeonet +1 When You Have Dark Seal Up --
		equipSet = set_combine(equipSet,{head="Fall. Burgeonet +1",})
	end
	if buffactive['Dark Seal'] and buffactive['Nether Void'] and S{"Drain II","Drain III"}:contains(spell.english) and player.tp<600 then
		equipSet = set_combine(equipSet,(sets.MAXDrain))
		add_to_chat(100,'WARNING: Misanthropy is on now *****')
	end
	equip(equipSet)
end

function aftercast(spell,action)
	if spell.type == "WeaponSkill" then
		send_command('wait 0.5;gs c TP')
	elseif spell.english == "Arcane Circle" then -- Arcane Circle Countdown --
		send_command('wait 260;input /echo '..spell.name..': [WEARING OFF IN 10 SEC.];wait 10;input /echo '..spell.name..': [OFF]')
	elseif spell.english == "Sleep II" then -- Sleep II Countdown --
		send_command('wait 60;input /echo Sleep Effect: [WEARING OFF IN 30 SEC.];wait 15;input /echo Sleep Effect: [WEARING OFF IN 15 SEC.];wait 10;input /echo Sleep Effect: [WEARING OFF IN 5 SEC.]')
	elseif spell.english == "Sleep" then -- Sleep Countdown --
		send_command('wait 30;input /echo Sleep Effect: [WEARING OFF IN 30 SEC.];wait 15;input /echo Sleep Effect: [WEARING OFF IN 15 SEC.];wait 10;input /echo Sleep Effect: [WEARING OFF IN 5 SEC.]')
	end
	status_change(player.status)
end
	
function status_change(new,old)
	if Armor == 'PDT' then
		equipSet = sets.PDT
		if equipSet[WeaponArray[WeaponIndex]] then
			equipSet = equipSet[WeaponArray[WeaponIndex]]
		end
		equip(equipSet)
	elseif Armor == 'MDT' then
		equipSet = sets.MDT
		if equipSet[WeaponArray[WeaponIndex]] then
			equipSet = equipSet[WeaponArray[WeaponIndex]]
		end
		equip(equipSet)
	elseif Armor == 'Scarlet' then
		equip(sets.Scarlet)
	elseif new == 'Engaged' then
		equipSet = sets.TP
		if Armor == 'Hybrid' and equipSet["Hybrid"] then
			equipSet = equipSet["Hybrid"]
		end
		if equipSet[WeaponArray[WeaponIndex]] then
			equipSet = equipSet[WeaponArray[WeaponIndex]]
		end
		if equipSet[player.sub_job] then
			equipSet = equipSet[player.sub_job]
		end
		if equipSet[AccArray[AccIndex]] then
			equipSet = equipSet[AccArray[AccIndex]]
		end
		if (buffactive["Aftermath: Lv.1"] or buffactive["Aftermath: LV.2"]) and equipSet["AM"] then
			equipSet = equipSet["AM"]
		end
		if buffactive["Aftermath: Lv.3"] and equipSet["AM3"] then
			equipSet = equipSet["AM3"]
		end	
		if buffactive["Last Resort"] and ((buffactive.Haste and buffactive.March == 2) or (buffactive.Embrava and (buffactive.March == 2 or (buffactive.March and buffactive.Haste) or (buffactive.March and buffactive['Mighty Guard']) or (buffactive['Mighty Guard'] and buffactive.Haste))) or (buffactive[580] and (buffactive.March or buffactive.Haste or buffactive.Embrava or buffactive['Mighty Guard']))) and equipSet["HighHaste"] then
			equipSet = equipSet["HighHaste"]
		end
		if Samurai_Roll == 'ON' and equipSet["STP"] then
			equipSet = equipSet["STP"]
		end
		equip(equipSet)
	else
		equipSet = sets.Idle
		if equipSet[IdleArray[IdleIndex]] then
			equipSet = equipSet[IdleArray[IdleIndex]]
		end
		if equipSet[WeaponArray[WeaponIndex]] then
			equipSet = equipSet[WeaponArray[WeaponIndex]]
		end
		if equipSet[player.sub_job] then
			equipSet = equipSet[player.sub_job]
		end
		if buffactive['Reive Mark'] then -- Equip Ygnas's Resolve +1 During Reive --
			equipSet = set_combine(equipSet,{neck="Ygnas's Resolve +1"})
		end
		if world.area:endswith('Adoulin') then
			equipSet = set_combine(equipSet,{body="Councilor's Garb"})
		end
		equip(equipSet)
	end
	if Twilight == 'Twilight' then
		equip(sets.Twilight)
	end
end

function buff_change(buff,gain)
	buff = string.lower(buff)
	-- AM3 Timer/Countdown --
	if buff == "aftermath: lv.3" then 
		if gain then
			send_command('timers create "Aftermath: Lv.3" 180 down;wait 150;gs c AM30;wait 15;gs c AM15;wait 5;gs c AM10')
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
		add_to_chat(123, 'Lost Samurai Roll. Switching Build.')
		Samurai_Roll = 'Off'
	end
	if buff == "sleep" and gain and player.hp > 200  then -- Equip Berserker's Torque When You Are Asleep & Have 200+ HP --
		equip({neck="Berserker's Torque"})
	else
		if not midaction() then
			status_change(player.status)
		end
	end
end

-- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command) --
function self_command(command)
	if command == 'AccuracyToggle' then -- Accuracy Level Toggle --
		AccIndex = (AccIndex % #AccArray) + 1
		status_change(player.status)
		add_to_chat(158,'Accuracy Level: '..AccArray[AccIndex])
	elseif command == 'WeaponToggle' then -- Main Weapon Toggle --
		WeaponIndex = (WeaponIndex % #WeaponArray) + 1
		add_to_chat(158,'Main Weapon: '..WeaponArray[WeaponIndex])
		status_change(player.status)
	elseif command == 'MaccToggle' then -- Macc Toggle --
		MaccIndex = (MaccIndex % #MaccArray) + 1
		add_to_chat(158,'Macc Level: '..MaccArray[MaccIndex])
		status_change(player.status)
	elseif command == 'RefreshGear' then -- Auto Update Gear Toggle --
		status_change(player.status)
		add_to_chat(158,'Auto Update Gear')
	elseif command == 'HybridToggle' then -- Hybrid Toggle --
		if Armor == 'Hybrid' then
			Armor = 'None'
			add_to_chat(123,'Hybrid Set: [Unlocked]')
		else
			Armor = 'Hybrid'
			add_to_chat(158,'Hybrid Set: '..AccArray[AccIndex])
		end
		status_change(player.status)
	elseif command == 'DarkSealToggle' then -- DarkSeal Toggle --
		if DarkSealIndex == 1 then
			DarkSealIndex = 0
			add_to_chat(123,'DarkSeal Duration: [On]')
		else
			DarkSealIndex = 1
			add_to_chat(158,'DarkSeal Potency: [On]')
		end
		status_change(player.status)
	elseif command == 'PDTToggle' then -- PDT Toggle --
		if Armor == 'PDT' then
			Armor = 'None'
			add_to_chat(123,'PDT Set: [Unlocked]')
		else
			Armor = 'PDT'
			add_to_chat(158,'PDT Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'MDTToggle' then -- MDT Toggle --
		if Armor == 'MDT' then
			Armor = 'None'
			add_to_chat(123,'MDT Set: [Unlocked]')
		else
			Armor = 'MDT'
			add_to_chat(158,'MDT Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'ScarletToggle' then -- Scarlet Toggle --
		if Armor == 'Scarlet' then
			Armor = 'None'
			add_to_chat(123,'Scarlet Set: [Unlocked]')
		else
			Armor = 'Scarlet'
			add_to_chat(158,'Scarlet Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'TwilightToggle' then -- Twilight Toggle --
		if Twilight == 'Twilight' then
			Twilight = 'None'
			add_to_chat(123,'Twilight Set: [Unlocked]')
		else
			Twilight = 'Twilight'
			add_to_chat(158,'Twilight Set: [locked]')
		end
		status_change(player.status)
	elseif command == 'DistanceToggle' then -- Distance Toggle --
		if player.target.distance then
			target_distance = math.floor(player.target.distance*10)/10
			add_to_chat(158,'Distance: '..target_distance)
		else
			add_to_chat(123,'No Target Selected')
		end
	elseif command == 'IdleToggle' then -- Idle Toggle --
		IdleIndex = (IdleIndex % #IdleArray) + 1
		status_change(player.status)
		add_to_chat(158,'Idle Set: '..IdleArray[IdleIndex])
	elseif command == 'TP' then
		add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
	elseif command == 'AM30' then
		aftermath_warning(30)
	elseif command == 'AM15' then
		aftermath_warning(15)
	elseif command == 'AM10' then
		aftermath_warning(10)
	elseif command:match('^SC%d$') then
		send_command('//' .. sc_map[command])
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

function select_default_macro_book()
	-- Default macro set/book
	if player.sub_job == 'SAM' then
		set_macro_page(3, 7)
	else
		set_macro_page(1, 7)
	end
end

function aftermath_warning(argument)
	add_to_chat(100,'Aftermath Lv.3 : [WEARING OFF IN '..argument..' SECONDS]')
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
			end(act)
		then
			if act.targets[1].actions[1].param == 11 then
				windower.add_to_chat(158,"Samurai Roll is Perfect. Switching Build.")
				Samurai_Roll = "On"
			end
		end
	end
end)