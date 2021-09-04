-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

--[[
    gs c toggle LuzafRing -- Toggles use of Luzaf Ring on and off
    
    Offense mode is melee or ranged.  Used ranged offense mode if you are engaged
    for ranged weaponskills, but not actually meleeing.
    
    Weaponskill mode, if set to 'Normal', is handled separately for melee and ranged weaponskills.
--]]


-- Initialization function for this job file.
function get_sets()
  mote_include_version = 2
  
  -- Load and initialize the include file.
  include('Mote-Include.lua')
	include('organizer-lib')
end

-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
    -- Whether to use Luzaf's Ring
    state.LuzafRing = M(true, "Luzaf's Ring")
    -- Whether a warning has been given for low ammo
    state.warned = M(false)

    define_roll_values()
end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    state.OffenseMode:options('Ranged', 'Melee', 'Acc')
    state.RangedMode:options('Normal', 'Acc')
    state.WeaponskillMode:options('Normal', 'Acc', 'Att', 'Mod')
    state.CastingMode:options('Normal', 'Resistant')
    state.IdleMode:options('Normal', 'PDT', 'Refresh')

    state.WeaponSet = M{['description']='Weapon Set', 'SwordMelee', 'LeadenMelee', 'LeadenMax', 'LastStandMelee', 'LastStandRanged', 'DaggerMelee', 'HybridMelee', 'Omen' }
    state.WeaponLock = M(false, 'Weapon Lock')

    gear.RAbullet = "Chrono Bullet"
    gear.WSbullet = "Chrono Bullet"
    gear.MAbullet = "Living Bullet"
    gear.QDbullet = "Animikii Bullet"
    options.ammo_warning_limit = 15
	  send_command('wait 5;input /lockstyleset 001')
    -- Additional local binds
    -- send_command('bind ^` input /ja "Double-up" <me>')
    -- send_command('bind !` input /ja "Bolter\'s Roll" <me>')

    send_command('bind @e gs c cycleback WeaponSet')
    send_command('bind @r gs c cycle WeaponSet')

    select_default_macro_book()
end


-- Called when this job file is unloaded (eg: job change)
function user_unload()
    -- send_command('unbind ^`')
    -- send_command('unbind !`')
end

-- Define sets and vars used by this job file.
function init_gear_sets()
    --------------------------------------
    -- Start defining the sets
    --------------------------------------
    
    -- Precast Sets

    -- Precast sets to enhance JAs
    
    -- sets.precast.JA['Triple Shot'] = {body="Navarch's Frac +2"}
    sets.precast.JA['Snake Eye'] = {legs="Lanun Trews"}
    sets.precast.JA['Wild Card'] = {feet="Lanun bottes +3"}
    sets.precast.JA['Random Deal'] = {body="Lanun Frac +3"}

    
	sets.precast.CorsairRoll = {main="Rostam",
		ranged="Compensator",
    head="Lanun Tricorne",
    neck="Regal Necklace",
    hands="Chasseur's Gants +1",
    back={ name="Camulus's Mantle", augments={'INT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Snapshot"+10','Mag. Evasion+15',}},
  }
    -- sets.precast.CorsairRoll["Caster's Roll"] = set_combine(sets.precast.CorsairRoll, {legs="Navarch's Culottes +2"})
    -- sets.precast.CorsairRoll["Courser's Roll"] = set_combine(sets.precast.CorsairRoll, {feet="Navarch's Bottes +2"})
    -- sets.precast.CorsairRoll["Blitzer's Roll"] = set_combine(sets.precast.CorsairRoll, {head="Navarch's Tricorne +2"})
    sets.precast.CorsairRoll["Tactician's Roll"] = set_combine(sets.precast.CorsairRoll, {body="Chasseur's frac"})
    sets.precast.CorsairRoll["Allies' Roll"] = set_combine(sets.precast.CorsairRoll, {hands="Chasseur's Gants +1"})
    
    sets.precast.LuzafRing = {ring2="Luzaf's Ring"}
    -- sets.precast.FoldDoubleBust = {hands="Lanun Gants"}
    
    sets.precast.CorsairShot = {ammo=gear.QDbullet}
    

    -- Waltz set (chr and vit)
    -- sets.precast.Waltz = {
    --  head="Whirlpool Mask",
    --  body="Iuitl Vest",
	--	hands="Iuitl Wristbands",
    --  legs="Nahtirah Trousers",
	--	feet="Iuitl Gaiters +1"
	--	}
        
    -- Don't need any special gear for Healing Waltz.
    -- sets.precast.Waltz[d'Healing Waltz'] = {}

    -- Fast cast sets for spells
    
    sets.precast.FC = {
      head={ name="Herculean Helm", augments={'Mag. Acc.+1','"Fast Cast"+5','MND+6',}},
      neck="Baetyl Pendant",
      left_ear="Loquac. Earring",
      right_ear="Etiolation Earring",
      body={ name="Adhemar Jacket +1", augments={'HP+105','"Fast Cast"+10','Magic dmg. taken -4',}},
      hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
      left_ring="Prolix Ring",
      right_ring="Kishar Ring",
      feet={ name="Carmine Greaves", augments={'HP+60','MP+60','Phys. dmg. taken -3',}},
		}

    -- sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {neck="Magoraga Beads"})


    sets.precast.RA = {
      ammo=gear.RAbullet,
      head={ name="Taeon Chapeau", augments={'"Snapshot"+5','"Snapshot"+5',}},
      neck="Comm. Charm +2",
      body="Oshosi vest",
      hands="Carmine finger gauntlets +1",
      back={ name="Camulus's Mantle", augments={'INT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Snapshot"+10','Mag. Evasion+15',}},
      waist="Yemaya Belt",
      legs="Adhemar Kecks",
      feet="Meghanada Jambeaux +2",
      ring1="Hajduk Ring",
		}

       
    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    -- sets.precast.WS = {
    --  head="Whirlpool Mask",
	--	neck=gear.ElementalGorget,
	--	ear1="Bladeborn Earring",
	--	ear2="Steelflash Earring",
    --  body="Manibozho Jerkin",
	--	hands="Iuitl Wristbands",
	--	ring1="Rajas Ring",
	--	ring2="Epona's Ring",
    --  back="Atheling Mantle",
	--	waist=gear.ElementalBelt,
	--	legs="Manibozho Brais",
	--	feet="Iuitl Gaiters +1"
	--	}


    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
    sets.precast.WS['Evisceration'] = sets.precast.WS

    sets.precast.WS['Exenterator'] = set_combine(sets.precast.WS, {legs="Nahtirah Trousers"})

    sets.precast.WS['Requiescat'] = {
      ammo=gear.WSbullet,
      head="Adhemar Bonnet +1",
      body="Adhemar Jacket +1",
      hands="Meg. Gloves +2",
      legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
      feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','"Triple Atk."+4','DEX+9','Attack+8',}},
      neck="Fotia Gorget",
      waist="Fotia Belt",
      left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
      right_ear="Telos Earring",
      left_ring="Rufescent Ring",
      right_ring="Epona's Ring",
      back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	
    sets.precast.WS['Last Stand'] = {
      ammo=gear.WSbullet,
      head="Lanun Tricorne +3",
      neck="Fotia gorget",
      ear1="Ishvara Earring",
      ear2="Moonshade Earring",
      body={ name="Herculean Vest", augments={'"Mag.Atk.Bns."+22','Pet: Phys. dmg. taken -1%','Weapon skill damage +6%','Accuracy+4 Attack+4','Mag. Acc.+14 "Mag.Atk.Bns."+14',}},
      hands="Meghanada gloves +2",
      ring1="Regal Ring",
      ring2="Karieyh Ring",
      back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
      waist="Fotia belt",
      legs={ name="Herculean Trousers", augments={'DEX+8','Pet: Phys. dmg. taken -3%','Weapon skill damage +8%','Accuracy+3 Attack+3','Mag. Acc.+9 "Mag.Atk.Bns."+9',}},
      feet={ name="Herculean Boots", augments={'Mag. Acc.+17 "Mag.Atk.Bns."+17','Weapon skill damage +3%','INT+3','Mag. Acc.+10','"Mag.Atk.Bns."+1',}},
	}

    sets.precast.WS['Last Stand'].Acc = {
      ammo=gear.WSbullet,
      head="Lanun Tricorne +3",
      neck="Comm. Charm +2",
      ear1="Telos Earring",
      ear2="Moonshade Earring",
      body="Laksamana's Frac +3",
      hands="Meghanada gloves +2",
      ring1="Regal Ring",
      ring2="Karieyh Ring",
      back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
      waist="Fotia belt",
      legs="Malignance Tights",
      feet="Lanun bottes +3"
		}


    sets.precast.WS['Wildfire'] = {
      ammo=gear.MAbullet,
      head={ name="Herculean Helm", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Mag. crit. hit dmg. +6%','Weapon skill damage +8%','Accuracy+9 Attack+9',}},
      neck="Comm. Charm +2",
      ear1="Friomisi Earring",
      ear2="Hermetic Earring",
      body="Lanun Frac +3",
      hands={ name="Herculean Gloves", augments={'Pet: Attack+19 Pet: Rng.Atk.+19','"Dbl.Atk."+1','Weapon skill damage +8%','Accuracy+14 Attack+14','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
      ring1="Acumen ring",
      ring2="Dingir ring",
      back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
      waist="Eschan Stone",
      legs={ name="Herculean Trousers", augments={'Accuracy+17 Attack+17','Attack+15','Weapon skill damage +8%','Mag. Acc.+16 "Mag.Atk.Bns."+16',}},
      feet="Lanun bottes +3"
	}

    -- sets.precast.WS['Wildfire'].Brew = {
	--	ammo=gear.MAbullet,
    --  head="Wayfarer Circlet",
	--	neck="Stoicheion Medal",
	--	ear1="Friomisi Earring",
	--	ear2="Hecate's Earring",
    --  body="Manibozho Jerkin",
	--	hands="Iuitl Wristbands",
	--	ring1="Stormsoul Ring",
	--	ring2="Demon's Ring",
    --  back="Toro Cape",
	--	waist=gear.ElementalBelt,
	--	legs="Iuitl Tights",
	--	feet="Iuitl Gaiters +1"
	--	}
    
    sets.precast.WS['Leaden Salute'] = {
		  ammo=gear.MAbullet,
      head="Pixie hairpin +1",
      neck="Baetyl Pendant",
      ear1="Friomisi Earring",
      ear2="Moonshade Earring",
      body={ name="Herculean Vest", augments={'"Mag.Atk.Bns."+22','Pet: Phys. dmg. taken -1%','Weapon skill damage +6%','Accuracy+4 Attack+4','Mag. Acc.+14 "Mag.Atk.Bns."+14',}},
      hands="Meg. Gloves +2",
      ring1="Archon ring",
      ring2="Dingir ring",
      back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
      --waist="Eschan Stone",
      waist="Hachirin-no-Obi",
      legs={ name="Herculean Trousers", augments={'DEX+8','Pet: Phys. dmg. taken -3%','Weapon skill damage +8%','Accuracy+3 Attack+3','Mag. Acc.+9 "Mag.Atk.Bns."+9',}},
      feet={ name="Herculean Boots", augments={'Mag. Acc.+17 "Mag.Atk.Bns."+17','Weapon skill damage +3%','INT+3','Mag. Acc.+10','"Mag.Atk.Bns."+1',}},
	}
	
	sets.precast.WS['Savage Blade'] = {
		ammo=gear.WSbullet,
    head="Adhemar Bonnet +1",
		neck="Sanctity Necklace",
		ear1="Ishvara Earring",
		ear2="Moonshade Earring",
    body={ name="Herculean Vest", augments={'"Mag.Atk.Bns."+22','Pet: Phys. dmg. taken -1%','Weapon skill damage +6%','Accuracy+4 Attack+4','Mag. Acc.+14 "Mag.Atk.Bns."+14',}},
		hands="Meghanada gloves +2",
		ring1="Regal Ring",
		ring2="Karieyh Ring",
    back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
		waist="Sailfi Belt +1",
		legs={ name="Herculean Trousers", augments={'Accuracy+17 Attack+17','Attack+15','Weapon skill damage +8%','Mag. Acc.+16 "Mag.Atk.Bns."+16',}},
		feet={ name="Herculean Boots", augments={'Mag. Acc.+17 "Mag.Atk.Bns."+17','Weapon skill damage +3%','INT+3','Mag. Acc.+10','"Mag.Atk.Bns."+1',}},
	}
    
    -- Midcast Sets
     sets.midcast.FastRecast = {
    --  head="Whirlpool Mask",
    --  body="Iuitl Vest",
	  --	hands="Iuitl Wristbands",
    --  legs="Manibozho Brais",
	  --	feet="Iuitl Gaiters +1"
		}
        
    -- Specific spells
    -- sets.midcast.Utsusemi = sets.midcast.FastRecast

     sets.midcast.CorsairShot = {
		ammo=gear.QDbullet,
        head={ name="Herculean Helm", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Mag. crit. hit dmg. +6%','Weapon skill damage +8%','Accuracy+9 Attack+9',}},
		neck="Comm. Charm +2",
		ear1="Friomisi Earring",
		ear2="Hermetic Earring",
        body="Lanun Frac +3",
		hands="Carmine finger gauntlets +1",
		ring1="Acumen ring",
		ring2="Dingir ring",
        back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
		waist="Eschan Stone",
		legs="Malignance Tights",
		feet="Lanun bottes +3"
	}

     sets.midcast.CorsairShot.Acc = {
		ammo=gear.QDbullet,
        head={ name="Herculean Helm", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Mag. crit. hit dmg. +6%','Weapon skill damage +8%','Accuracy+9 Attack+9',}},
		neck="Comm. Charm +2",
		ear1="Friomisi Earring",
		ear2="Hermetic Earring",
        body="Lanun Frac +3",
		hands="Carmine finger gauntlets +1",
		ring1="Acumen ring",
		ring2="Dingir ring",
        back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
		waist="Eschan Stone",
		legs="Malignance Tights",
		feet="Lanun bottes +3"
		}

     sets.midcast.CorsairShot['Light Shot'] = {
		ammo=gear.QDbullet,
        head={ name="Herculean Helm", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Mag. crit. hit dmg. +6%','Weapon skill damage +8%','Accuracy+9 Attack+9',}},
		neck="Comm. Charm +2",
		ear1="Friomisi Earring",
		ear2="Hermetic Earring",
        body="Lanun Frac +3",
		hands="Carmine finger gauntlets +1",
		ring1="Acumen ring",
		ring2="Dingir ring",
        back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
		waist="Eschan Stone",
		legs="Malignance Tights",
		feet="Lanun bottes +3"
		}

    	sets.midcast.CorsairShot['Dark Shot'] = sets.midcast.CorsairShot['Light Shot']


    -- Ranged gear
    sets.midcast.RA = {
		ammo=gear.RAbullet,
        head="Meghanada visor +2",
		neck="Iskur Gorget",
		ear1="Telos earring",
		ear2="Enervating Earring",
        body="Laksamana's Frac +3",
		hands="Malignance Gloves",
		ring1="Ilabrat Ring",
		ring2="Dingir ring",
        back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','"Store TP"+10',}},
		waist="Yemaya belt",
		legs="Malignance Tights",
		feet="Malignance Boots"
	}

    sets.midcast.RA.Acc = {
		ammo=gear.RAbullet,
        head="Malignance Chapeau",
		neck="Iskur Gorget",
		ear1="Telos earring",
		ear2="Enervating Earring",
        body="Laksamana's Frac +3",
		hands="Meghanada gloves +2",
		ring1="Hajduk Ring",
		ring2="Dingir ring",
        back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','"Store TP"+10',}},
		waist="Yemaya belt",
		legs="Malignance Tights",
		feet="Malignance Boots"
		}

    
    -- Sets to return to when not performing an action.
    
    -- Resting sets
    sets.resting = {neck="Wiglen Gorget",ring1="Sheltered Ring",ring2="Paguroidea Ring"}
    

    -- Idle sets
    sets.idle = {
      ammo=gear.RAbullet,
      head="Malignance Chapeau",
      neck="Loricate Torque +1",
      ear1="Genmei earring",
      ear2="Etiolation Earring",
      body="Malignance Tabard",
      hands="Malignance Gloves",
      ring1="Defending Ring",
      ring2="Karieyh Ring",
      back={ name="Camulus's Mantle", augments={'INT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Snapshot"+10','Mag. Evasion+15',}},
      waist="Flume belt",
      legs="Carmine Cuisses +1",
      feet="Malignance Boots"
		}

    sets.idle.Town = {
      ammo=gear.RAbullet,
      head="Malignance Chapeau",
      neck="Loricate Torque +1",
      ear1="Genmei earring",
      ear2="Etiolation Earring",
      body="Malignance Tabard",
      hands="Malignance Gloves",
      ring1="Defending Ring",
      ring2="Karieyh Ring",
      back={ name="Camulus's Mantle", augments={'INT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Snapshot"+10','Mag. Evasion+15',}},
      waist="Flume belt",
      legs="Carmine Cuisses +1",
      feet="Malignance Boots"
	}
    
    -- Defense sets
    -- sets.defense.PDT = {
    --	head="Whirlpool Mask",
	--	neck="Twilight Torque",
	--	ear1="Clearview Earring",
	--	ear2="Telos Earring",
    --	body="Iuitl Vest",
	--	hands="Iuitl Wristbands",
	--	ring1="Defending Ring",
	--	ring2=gear.DarkRing.physical,
    --	back="Shadow Mantle",
	--	waist="Flume Belt",
	--	legs="Nahtirah Trousers",
	--	feet="Iuitl Gaiters +1"
	--	}

    -- sets.defense.MDT = {
    --	head="Whirlpool Mask",
	--	neck="Twilight Torque",
	--	ear1="Clearview Earring",
	--	ear2="Telos Earring",
    --	body="Iuitl Vest",
	--	hands="Iuitl Wristbands",
	--	ring1="Defending Ring",
	--	ring2="Shadow Ring",
    --	back="Engulfer Cape",
	--	waist="Flume Belt",
	--	legs="Nahtirah Trousers",
	--	feet="Iuitl Gaiters +1"
	--	}
    

    sets.Kiting = {feet="Skadi's Jambeaux +1"}

    -- Engaged sets

    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.engaged.Dagger.Accuracy.Evasion
    
    -- Normal melee group
    sets.engaged.Melee = {
      ammo=gear.RAbullet,
      head="Adhemar Bonnet +1",
      neck="Iskur Gorget",
      ear1="Telos Earring",
      ear2="Suppanomimi",
      body="Adhemar Jacket +1",
      hands="Adhemar Wrist. +1",
      ring1="Ilabrat Ring",
      ring2="Epona's Ring",
      back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
      waist="Windbuffet Belt +1",
      legs="Samnuha Tights",
      feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','"Triple Atk."+4','DEX+9','Attack+8',}},
		}
    
    sets.engaged.Acc = {
      ammo=gear.RAbullet,
      head="Meghanada visor +2",
      neck="Iskur Gorget",
      ear1="Telos earring",
      ear2="Enervating Earring",
      body="Laksamana's Frac +3",
      hands="Meghanada gloves +2",
      ring1="Hajduk Ring",
      ring2="Dingir ring",
      back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
      waist="Windbuffet Belt +1",
      legs="Adhemar kecks",
      feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','"Triple Atk."+4','DEX+9','Attack+8',}},
		}

    sets.engaged.Melee.DW = {
		  ammo=gear.RAbullet,
      head="Adhemar Bonnet +1",
      neck="Iskur Gorget",
      ear1="Telos Earring",
      ear2="Suppanomimi",
      body="Adhemar Jacket +1",
      hands="Adhemar Wrist. +1",
      ring1="Ilabrat Ring",
      ring2="Epona's Ring",
      back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
      waist="Reiki yotai",
      legs="Samnuha Tights",
      feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','"Triple Atk."+4','DEX+9','Attack+8',}},
	}
    
    sets.engaged.Acc.DW = {
      ammo=gear.RAbullet,
      head="Dampening tam",
      neck="Iskur Gorget",
      ear1="Telos Earring",
      ear2="Suppanomimi",
      body="Adhemar Jacket +1",
      hands="Adhemar Wrist. +1",
      ring1="Petrov Ring",
      ring2="Epona's Ring",
      back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
      waist="Windbuffet Belt +1",
      legs="Samnuha Tights",
      feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','"Triple Atk."+4','DEX+9','Attack+8',}},
		}

    sets.engaged.Ranged = {
      ammo=gear.RAbullet,
      head="Malignance Chapeau",
      neck="Iskur Gorget",
      ear1="Cessance Earring",
      ear2="Suppanomimi",
      body="Malignance Tabard",
      hands="Malignance Gloves",
      ring1="Petrov Ring",
      ring2="Epona's Ring",
      back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
      waist="Reiki yotai",
      legs="Malignance Tights",
      feet="Malignance Boots"
		}
		
	sets.LeadenMelee = {
        main="Naegling", 
        sub="Tauret", 
        ranged="Molybdosis"
    }
	
    sets.LeadenMax = {
        main="Naegling", 
        sub="Tauret", 
        ranged="Fomalhaut"
    }
    sets.LastStandMelee = {
        main="Naegling", 
        sub="Blurred Knife +1", 
        ranged="Fomalhaut"
    }
    sets.LastStandRanged = {
        main="Naegling", 
        sub="Nusku Shield", 
        ranged="Fomalhaut"
    }
    sets.SwordMelee = {
        main="Naegling", 
        sub="Blurred Knife +1", 
        ranged="Anarchy +2"
    }
	sets.DaggerMelee = {
        main="Tauret", 
        sub="Blurred Knife +1", 
        ranged="Anarchy +2"
    }
	sets.HybridMelee = {
        main="Naegling", 
        sub="Blurred Knife +1", 
        ranged="Fomalhaut"
    }
  sets.Omen = {
    main="Xiphos", 
    sub="Mercurial Kris", 
    ranged="Anarchy +2"
  }
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
-- Set eventArgs.useMidcastGear to true if we want midcast gear equipped on precast.
function job_precast(spell, action, spellMap, eventArgs)
	equip(sets[state.WeaponSet.current])
    -- Check that proper ammo is available if we're using ranged attacks or similar.
    if spell.action_type == 'Ranged Attack' or spell.type == 'WeaponSkill' or spell.type == 'CorsairShot' then
        do_bullet_checks(spell, spellMap, eventArgs)
    end

    -- gear sets
    if (spell.type == 'CorsairRoll' or spell.english == "Double-Up") and state.LuzafRing.value then
        equip(sets.precast.LuzafRing)
    elseif spell.type == 'CorsairShot' and state.CastingMode.value == 'Resistant' then
        classes.CustomClass = 'Acc'
    elseif spell.english == 'Fold' and buffactive['Bust'] == 2 then
        if sets.precast.FoldDoubleBust then
            equip(sets.precast.FoldDoubleBust)
            eventArgs.handled = true
        end
    end
end


-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_aftercast(spell, action, spellMap, eventArgs)
	equip(sets[state.WeaponSet.current])
    if spell.type == 'CorsairRoll' and not spell.interrupted then
        display_roll_info(spell)
    end
end

-- Handle notifications of general user state change.
function job_state_change(stateField, newValue, oldValue)
    if state.WeaponLock.value == true then
        disable('ranged')
    else
        enable('ranged')
    end

    equip(sets[state.WeaponSet.current])
end

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------

-- Return a customized weaponskill mode to use for weaponskill sets.
-- Don't return anything if you're not overriding the default value.
function get_custom_wsmode(spell, spellMap, default_wsmode)
    if buffactive['Transcendancy'] then
        return 'Brew'
    end
end


-- Called by the 'update' self-command, for common needs.
-- Set eventArgs.handled to true if we don't want automatic equipping of gear.
function job_update(cmdParams, eventArgs)
	equip(sets[state.WeaponSet.current])
    if newStatus == 'Engaged' and player.equipment.main == 'Chatoyant Staff' then
        state.OffenseMode:set('Ranged')
    end
end


-- Set eventArgs.handled to true if we don't want the automatic display to be run.
function display_current_job_state(eventArgs)
    local msg = ''
    
    msg = msg .. 'Off.: '..state.OffenseMode.current
    msg = msg .. ', Rng.: '..state.RangedMode.current
    msg = msg .. ', WS.: '..state.WeaponskillMode.current
    msg = msg .. ', QD.: '..state.CastingMode.current

    if state.DefenseMode.value ~= 'None' then
        local defMode = state[state.DefenseMode.value ..'DefenseMode'].current
        msg = msg .. ', Defense: '..state.DefenseMode.value..' '..defMode
    end
    
    if state.Kiting.value then
        msg = msg .. ', Kiting'
    end
    
    if state.PCTargetMode.value ~= 'default' then
        msg = msg .. ', Target PC: '..state.PCTargetMode.value
    end

    if state.SelectNPCTargets.value then
        msg = msg .. ', Target NPCs'
    end

    msg = msg .. ', Roll Size: ' .. ((state.LuzafRing.value and 'Large') or 'Small')
    
    add_to_chat(122, msg)

    eventArgs.handled = true
end


-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

function define_roll_values()
    rolls = {
        ["Corsair's Roll"]   = {lucky=5, unlucky=9, bonus="Experience Points"},
        ["Ninja Roll"]       = {lucky=4, unlucky=8, bonus="Evasion"},
        ["Hunter's Roll"]    = {lucky=4, unlucky=8, bonus="Accuracy"},
        ["Chaos Roll"]       = {lucky=4, unlucky=8, bonus="Attack"},
        ["Magus's Roll"]     = {lucky=2, unlucky=6, bonus="Magic Defense"},
        ["Healer's Roll"]    = {lucky=3, unlucky=7, bonus="Cure Potency Received"},
        ["Puppet Roll"]      = {lucky=4, unlucky=8, bonus="Pet Magic Accuracy/Attack"},
        ["Choral Roll"]      = {lucky=2, unlucky=6, bonus="Spell Interruption Rate"},
        ["Monk's Roll"]      = {lucky=3, unlucky=7, bonus="Subtle Blow"},
        ["Beast Roll"]       = {lucky=4, unlucky=8, bonus="Pet Attack"},
        ["Samurai Roll"]     = {lucky=2, unlucky=6, bonus="Store TP"},
        ["Evoker's Roll"]    = {lucky=5, unlucky=9, bonus="Refresh"},
        ["Rogue's Roll"]     = {lucky=5, unlucky=9, bonus="Critical Hit Rate"},
        ["Warlock's Roll"]   = {lucky=4, unlucky=8, bonus="Magic Accuracy"},
        ["Fighter's Roll"]   = {lucky=5, unlucky=9, bonus="Double Attack Rate"},
        ["Drachen Roll"]     = {lucky=3, unlucky=7, bonus="Pet Accuracy"},
        ["Gallant's Roll"]   = {lucky=3, unlucky=7, bonus="Defense"},
        ["Wizard's Roll"]    = {lucky=5, unlucky=9, bonus="Magic Attack"},
        ["Dancer's Roll"]    = {lucky=3, unlucky=7, bonus="Regen"},
        ["Scholar's Roll"]   = {lucky=2, unlucky=6, bonus="Conserve MP"},
        ["Bolter's Roll"]    = {lucky=3, unlucky=9, bonus="Movement Speed"},
        ["Caster's Roll"]    = {lucky=2, unlucky=7, bonus="Fast Cast"},
        ["Courser's Roll"]   = {lucky=3, unlucky=9, bonus="Snapshot"},
        ["Blitzer's Roll"]   = {lucky=4, unlucky=9, bonus="Attack Delay"},
        ["Tactician's Roll"] = {lucky=5, unlucky=8, bonus="Regain"},
        ["Allies's Roll"]    = {lucky=3, unlucky=10, bonus="Skillchain Damage"},
        ["Miser's Roll"]     = {lucky=5, unlucky=7, bonus="Save TP"},
        ["Companion's Roll"] = {lucky=2, unlucky=10, bonus="Pet Regain and Regen"},
        ["Avenger's Roll"]   = {lucky=4, unlucky=8, bonus="Counter Rate"},
    }
end

function display_roll_info(spell)
    rollinfo = rolls[spell.english]
    local rollsize = (state.LuzafRing.value and 'Large') or 'Small'

    if rollinfo then
        add_to_chat(104, spell.english..' provides a bonus to '..rollinfo.bonus..'.  Roll size: '..rollsize)
        add_to_chat(104, 'Lucky roll is '..tostring(rollinfo.lucky)..', Unlucky roll is '..tostring(rollinfo.unlucky)..'.')
    end
end


-- Determine whether we have sufficient ammo for the action being attempted.
function do_bullet_checks(spell, spellMap, eventArgs)
    local bullet_name
    local bullet_min_count = 1
    
    if spell.type == 'WeaponSkill' then
        if spell.skill == "Marksmanship" then
            if spell.element == 'None' then
                -- physical weaponskills
                bullet_name = gear.WSbullet
            else
                -- magical weaponskills
                bullet_name = gear.MAbullet
            end
        else
            -- Ignore non-ranged weaponskills
            return
        end
    elseif spell.type == 'CorsairShot' then
        bullet_name = gear.QDbullet
    elseif spell.action_type == 'Ranged Attack' then
        bullet_name = gear.RAbullet
        if buffactive['Triple Shot'] then
            bullet_min_count = 3
        end
    end
    
    local available_bullets = player.inventory[bullet_name] or player.wardrobe[bullet_name]
    
    -- If no ammo is available, give appropriate warning and end.
    if not available_bullets then
        if spell.type == 'CorsairShot' and player.equipment.ammo ~= 'empty' then
            add_to_chat(104, 'No Quick Draw ammo left.  Using what\'s currently equipped ('..player.equipment.ammo..').')
            return
        elseif spell.type == 'WeaponSkill' and player.equipment.ammo == gear.RAbullet then
            add_to_chat(104, 'No weaponskill ammo left.  Using what\'s currently equipped (standard ranged bullets: '..player.equipment.ammo..').')
            return
        else
            add_to_chat(104, 'No ammo ('..tostring(bullet_name)..') available for that action.')
            eventArgs.cancel = true
            return
        end
    end
    
    -- Don't allow shooting or weaponskilling with ammo reserved for quick draw.
    if spell.type ~= 'CorsairShot' and bullet_name == gear.QDbullet and available_bullets.count <= bullet_min_count then
        add_to_chat(104, 'No ammo will be left for Quick Draw.  Cancelling.')
        eventArgs.cancel = true
        return
    end
    
    -- Low ammo warning.
    if spell.type ~= 'CorsairShot' and state.warned.value == false
        and available_bullets.count > 1 and available_bullets.count <= options.ammo_warning_limit then
        local msg = '*****  LOW AMMO WARNING: '..bullet_name..' *****'
        --local border = string.repeat("*", #msg)
        local border = ""
        for i = 1, #msg do
            border = border .. "*"
        end
        
        add_to_chat(104, border)
        add_to_chat(104, msg)
        add_to_chat(104, border)

        state.warned:set()
    elseif available_bullets.count > options.ammo_warning_limit and state.warned then
        state.warned:reset()
    end
end

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    set_macro_page(1, 13)
end

