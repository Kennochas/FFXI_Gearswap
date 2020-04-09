-- Setup your Key Bindings here:  
    windower.send_command('bind f7 gs c toggle mb')
    windower.send_command('bind f9 gs c avatar mode')
    windower.send_command('bind f10 gs c toggle auto')
    windower.send_command('bind f12 gs c toggle melee')
	
-- Setup Lockstyle
	send_command('wait 2;input /lockstyleset 5')
     
     
-- Setup your Gear Sets below:
function get_sets()
  
    -- My formatting is very easy to follow. All sets that pertain to my character doing things are under 'me'.
    -- All sets that are equipped to faciliate my avatar's behaviour or abilities are under 'avatar', eg, Perpetuation, Blood Pacts, etc
      
    sets.me = {}        -- leave this empty
    sets.avatar = {}    -- leave this empty
      
    -- Your idle set when you DON'T have an avatar out
    sets.me.idle = {
        main="Nirvana",
        sub="elan strap +1",
        -- ranged="",
        ammo="Sancus Sachet +1",
        head="Beckoner's Horn +1",
        neck="Loricate Torque +1",
        lear="Etiolation Earring",
        rear="Cath Palug Earring",
        body="Apogee Dalmatica +1",
        hands="Asteria Mitts +1",
        lring="Renaye Ring",
        rring="Defending Ring",
        back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: "Regen"+10',}},
        waist="Regal Belt",
        legs="Assiduity Pants +1",
        feet="Herald's Gaiters"
    }
      
    -- Your MP Recovered Whilst Resting Set
    sets.me.resting = { 
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        -- head="",
        -- neck="",
        -- lear="",
        -- rear="",
        -- body="",
        -- hands="",
        -- lring="",
        -- rring="",
        -- back="",
        waist="Hierarch Belt",
        -- legs="",
        -- feet=""
    }
      
    -----------------------
    -- Perpetuation Related
    -----------------------
      
    -- Avatar's Out --  
    -- This is the base for all perpetuation scenarios, as seen below
    sets.avatar.perp = {
        main="Nirvana",
        sub="elan strap +1",
        -- ranged="",
        ammo="Sancus Sachet +1",
        head="Beckoner's Horn +1",
        neck="Caller's Pendant",
        lear="Evans Earring",
        rear="Cath Palug Earring",
        body="Apogee Dalmatica +1",
        hands="Glyphic Bracers +1",
        lring={name="Varar Ring +1", bag="wardrobe1"},
        rring="Evoker's Ring",
		back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: "Regen"+10',}},
        waist="Incarnation Sash",
        legs="Assiduity Pants +1",
        feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}}
    }
  
    -- The following sets base off of perpetuation, so you can consider them idle sets.
    -- Set the relevant gear, bearing in mind it will overwrite the perpetuation item for that slot!
    sets.avatar["Carbuncle"] = {hands="Asteria Mitts +1"}
    sets.avatar["Cait Sith"] = {hands="Lamassu Mitts +1"}
    -- When we want our avatar to stay alive
    sets.avatar.tank = set_combine(sets.avatar.perp,{
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        head="Convoker's Horn +1",
        neck="Loricate Torque +1",
        -- lear="",
        -- rear="",
        -- body="",
        -- hands="",
        lring="Succor Ring",
        rring="Fortified Ring",
        -- back="",
        -- waist="",
        -- legs="",
        feet="Convoker's Pigaches +3"
    })
      
    -- When we want our avatar to shred
    sets.avatar.melee = set_combine(sets.avatar.perp,{
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        head="Tali'ah Turban",
        -- neck="",
        -- lear="",
        -- rear="",
		body="Tali'ah Manteel",
        hands="Tali'ah Gages",
        -- lring="",
        -- rring="",
        -- back="",
        -- waist="",
        legs="Tali'ah Seraweels",
        feet="Tali'ah Crackows"
    })
      
    -- When we want our avatar to hit
    sets.avatar.acc = set_combine(sets.avatar.perp,{
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        head="Tali'ah Turban",
        -- neck="",
        -- lear="",
        -- rear="",
        body="Tali'ah Manteel",
        hands="Tali'ah Gages",
        lring={name="Varar Ring +1", bag="wardrobe1"},
        rring={name="Varar Ring +1", bag="wardrobe2"},
        -- back="",
        -- waist="",
        legs="Tali'ah Seraweels",
        feet="Tali'ah Crackows"
    })
      
    -- When Avatar's Favor is active
    sets.avatar.favor = set_combine(sets.avatar.perp,{
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        -- head="",
        -- neck="",
        -- lear="",
        -- rear="",
        -- body="",
        -- hands="",
        -- lring="",
        -- rring="",
        -- back="",
        -- waist="",
        -- legs="",
        -- feet=""
    })
      
    ----------------------------
    -- Summoning Skill Related
    -- Including all blood pacts
    ----------------------------
      
    -- + Summoning Magic. This is a base set for max skill and blood pacts and we'll overwrite later as and when we need to
    sets.avatar.skill = {
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        head="Convoker's Horn +1",
        neck="Caller's Pendant",
        -- lear="",
        -- rear="",
        -- body="",
        hands="Lamassu Mitts +1",
        -- lring="",
        rring="Evoker's Ring",
        back="Conveyance Cape",
        waist="Lucidity Sash",
        -- legs="",
        -- feet=""
    }
      
    -------------------------
    -- Individual Blood Pacts
    -------------------------
      
    -- Physical damage
	sets.avatar.atk = set_combine(sets.avatar.skill,{
        main="Nirvana",
        sub="elan strap +1",
        -- ranged="",
        ammo="Sancus Sachet +1",
        head={ name="Apogee Crown +1", augments={'MP+80','Pet: Attack+35','Blood Pact Dmg.+8',}},
        neck="Shulmanu Collar",
        lear="Gelos Earring",
        rear="Lugalbanda Earring",
        body="Convoker's Doublet +3",
        hands={ name="Merlinic Dastanas", augments={'Pet: Attack+29 Pet: Rng.Atk.+29','Blood Pact Dmg.+8','Pet: "Mag.Atk.Bns."+9',}},
        lring={name="Varar Ring +1", bag="wardrobe1"},
        rring={name="Varar Ring +1", bag="wardrobe2"},
		back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: "Regen"+10',}},
        waist="Incarnation Sash",
        legs={ name="Apogee Slacks +1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}},
        feet="Convoker's Pigaches +3"
    })
    sets.avatar.pacc = set_combine(sets.avatar.atk,{
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        -- head="",
        -- neck="",
        -- lear="",
        -- rear="",
        -- body="",
        -- hands="",
        lring={name="Varar Ring +1", bag="wardrobe1"},
        rring={name="Varar Ring +1", bag="wardrobe2"},
        -- back="",
        -- waist="",
        -- legs="",
        -- feet=""
    })
      
    -- Magic Attack
    sets.avatar.mab = set_combine(sets.avatar.skill,{
		main={ name="Grioavolr", augments={'Blood Pact Dmg.+9','Pet: VIT+1','Pet: Mag. Acc.+5','Pet: "Mag.Atk.Bns."+17',}},
        sub="elan strap +1",
        -- ranged="",
        ammo="Sancus Sachet +1",
        head={ name="Apogee Crown +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
        neck="Adad Amulet",
        lear="Gelos Earring",
        rear="Lugalbanda Earring",
        body="Apogee Dalmatica +1",
        hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+20','Blood Pact Dmg.+10',}},
		lring={name="Varar Ring +1", bag="wardrobe1"},
		rring={name="Varar Ring +1", bag="wardrobe2"},
        back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','"Fast Cast"+10',}},
        waist="Regal Belt",
        legs="Enticer's Pants",
        feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}}
    })
    sets.avatar.mb = set_combine(sets.avatar.mab,{hands="Glyphic Bracers +1"})

	sets.avatar.hybrid = set_combine(sets.avatar.skill,{
		main="Nirvana",
        sub="elan strap +1",
        -- ranged="",
        ammo="Sancus Sachet +1",
        head="Cath Palug Crown",
        neck="Shulmanu Collar",
        lear="Gelos Earring",
        rear="Lugalbanda Earring",
        body="Convoker's Doublet +3",
        hands={ name="Merlinic Dastanas", augments={'Pet: Attack+29 Pet: Rng.Atk.+29','Blood Pact Dmg.+8','Pet: "Mag.Atk.Bns."+9',}},
		lring={name="Varar Ring +1", bag="wardrobe1"},
		rring={name="Varar Ring +1", bag="wardrobe2"},
        back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: "Regen"+10',}},
        waist="Regal Belt",
        legs={ name="Apogee Slacks +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
        feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}}
    })
      
    -- Magic Accuracy
    sets.avatar.macc = set_combine(sets.avatar.skill,{
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        -- head="",
        -- neck="",
        -- lear="",
        -- rear="",
        -- body="",
        -- hands="",
        -- lring="",
        -- rring="",
        -- back="",
        -- waist="",
        -- legs="",
        -- feet=""
    })
      
    -- Buffs
    sets.avatar.buff = set_combine(sets.avatar.skill,{
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        -- head="",
        -- neck="",
        -- lear="",
        -- rear="",
        -- body="",
        -- hands="",
        -- lring="",
        -- rring="",
        -- back="",
        -- waist="",
        -- legs="",
        -- feet=""
    })
      
    -- Other
    sets.avatar.other = set_combine(sets.avatar.skill,{
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        -- head="",
        -- neck="",
        -- lear="",
        -- rear="",
        -- body="",
        -- hands="",
        -- lring="",
        -- rring="",
        -- back="",
        -- waist="",
        -- legs="",
        -- feet=""
    })
      
    -- Combat Related Sets
      
    -- Melee
    -- The melee set combines with perpetuation, because we don't want to be losing all our MP whilst we swing our Staff
    -- Anything you equip here will overwrite the perpetuation/refresh in that slot.
    sets.me.melee = set_combine(sets.avatar.perp,{
        main="Nirvana",
        sub="Elan Strap +1",
        ammo="Amar Cluster",
        head="Tali'ah Turban +2",
        body="Tali'ah Manteel +2",
        hands={ name="Glyphic Bracers +1", augments={'Inc. Sp. "Blood Pact" magic burst dmg.',}},
        legs="Tali'ah Sera. +2",
        feet="Convo. Pigaches +3",
        neck="Sanctity Necklace",
        waist="Windbuffet Belt +1",
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Petrov Ring",
        right_ring="Hetairoi Ring",
        back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: "Regen"+10',}},
    })
      
    -- Shattersoul. Weapon Skills do not work off perpetuation as it only stays equipped for a moment
    sets.me["Shattersoul"] = {
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        -- head="",
        -- neck="",
        -- lear="",
        -- rear="",
        -- body="",
        -- hands="",
        -- lring="",
        -- rring="",
        -- back="",
        -- waist="",
        -- legs="",
        -- feet=""
    }
    sets.me["Garland of Bliss"] = {
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        -- head="",
        -- neck="",
        -- lear="",
        -- rear="",
        -- body="",
        -- hands="",
        -- lring="",
        -- rring="",
        -- back="",
        -- waist="",
        -- legs="",
        -- feet=""
    }
      
    -- Feel free to add new weapon skills, make sure you spell it the same as in game. These are the only two I ever use though
  
    ---------------
    -- Casting Sets
    ---------------
      
    sets.precast = {}
    sets.midcast = {}
    sets.aftercast = {}
      
    ----------
    -- Precast
    ----------
      
    -- Generic Casting Set that all others take off of. Here you should add all your fast cast  
    sets.precast.casting = {
        main={ name="Grioavolr", augments={'Blood Pact Dmg.+9','Pet: VIT+1','Pet: Mag. Acc.+5','Pet: "Mag.Atk.Bns."+17',}},
        sub="Clerisy Strap",
        -- ranged="",
        ammo="Impatiens",
        head="Nahtirah Hat",
        neck="Orunmila's Torque",
        lear="Malignance Earring",
        rear="Loquacious Earring",
        body="Inyanga Jubbah +2",
        -- hands="",
        -- lring="",
        rring="Kishar Ring",
        back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','"Fast Cast"+10',}},
        waist="Witful Belt",
        legs="Gyve Trousers",
        feet="Regal Pumps +1"
    }   
      
    -- Summoning Magic Cast time - gear
    sets.precast.summoning = set_combine(sets.precast.casting,{
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        -- head="",
        -- neck="",
        -- lear="",
        -- rear="",
        -- body="",
        -- hands="",
        -- lring="",
        -- rring="",
        -- back="",
        -- waist="",
        -- legs="",
        -- feet=""
    })
      
    -- Enhancing Magic, eg. Siegal Sash, etc
    sets.precast.enhancing = set_combine(sets.precast.casting,{
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        -- head="",
        -- neck="",
        -- lear="",
        -- rear="",
        -- body="",
        -- hands="",
        -- lring="",
        -- rring="",
        -- back="",
        -- waist="",
        -- legs="",
        -- feet=""
    })
  
    -- Stoneskin casting time -, works off of enhancing -
    sets.precast.stoneskin = set_combine(sets.precast.enhancing,{
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        -- head="",
        -- neck="",
        -- lear="",
        -- rear="",
        -- body="",
        -- hands="",
        -- lring="",
        -- rring="",
        -- back="",
        -- waist="",
        -- legs="",
        -- feet=""
    })
      
    -- Curing Precast, Cure Spell Casting time -
    sets.precast.cure = set_combine(sets.precast.casting,{
        -- main="",
        -- sub="Sors Shield",
        -- ranged="",
        -- ammo="",
        -- head="",
        -- neck="",
        -- lear="",
        -- rear="",
        -- body="",
        -- hands="",
        -- lring="",
        -- rring="",
        back="Pahtli Cape",
        -- waist="",
        -- legs="",
        -- feet=""
    })
      
    ---------------------
    -- Ability Precasting
    ---------------------
      
    -- Blood Pact Ability Delay
    sets.precast.bp = {
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        head="Beckoner's Horn +1",
        neck="Caller's Pendant",
        lear="Evans Earring",
        rear="Caller's Earring",
        body="Convoker's Doublet +3",
        hands="Glyphic Bracers +1",
        -- lring="",
        -- rring="",
        back="Conveyance Cape",
        -- waist="",
        legs="Beckoner's Spats +1",
        -- feet=""
    }
      
    -- Mana Cede
    sets.precast["Mana Cede"] = {
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        -- head="",
        -- neck="",
        -- lear="",
        -- rear="",
        -- body="",
        hands="Caller's Bracers +1",
        -- lring="",
        -- rring="",
        -- back="",
        -- waist="",
        -- legs="",
        -- feet=""
    }
      
    -- Astral Flow  
    sets.precast["Astral Flow"] = {
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        -- head="",
        -- neck="",
        -- lear="",
        -- rear="",
        -- body="",
        -- hands="",
        -- lring="",
        -- rring="",
        -- back="",
        -- waist="",
        -- legs="",
        -- feet=""
    }
      
    ----------
    -- Midcast
    ----------
      
    -- We handle the damage and etc. in Pet Midcast later
      
    -- Whatever you want to equip mid-cast as a catch all for all spells, and we'll overwrite later for individual spells
    sets.midcast.casting = {
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        -- head="",
        -- neck="",
        -- lear="",
        -- rear="",
        -- body="",
        -- hands="",
        -- lring="",
        -- rring="",
        -- back="",
        -- waist="",
        -- legs="",
        -- feet=""
    }
      
    -- Enhancing
    sets.midcast.enhancing = set_combine(sets.midcast.casting,{
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        -- head="",
        -- neck="",
        -- lear="",
        -- rear="",
        -- body="",
        -- hands="",
        -- lring="",
        -- rring="",
        -- back="",
        -- waist="",
        -- legs="",
        -- feet=""
    })
      
    -- Stoneskin
    sets.midcast.stoneskin = set_combine(sets.midcast.enhancing,{
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        -- head="",
        -- neck="",
        -- lear="",
        -- rear="",
        -- body="",
        -- hands="",
        -- lring="",
        -- rring="",
        -- back="",
        -- waist="",
        legs="Shedir Seraweels",
        -- feet=""
    })
    -- Elemental Siphon, eg, Tatsumaki Thingies, Esper Stone, etc
    sets.midcast.siphon = set_combine(sets.avatar.skill,{
        -- main="",
        -- sub="",
        -- ranged="",
        -- ammo="",
        -- head="",
        -- neck="",
        -- lear="",
        -- rear="",
        -- body="",
        -- hands="",
        -- lring="",
        -- rring="",
        -- back="",
        -- waist="",
        -- legs="",
        -- feet=""
    })
        
    -- Cure Potency
    sets.midcast.cure = set_combine(sets.midcast.casting,{
        main="Serenity",
        -- sub="Sors Shield",
        -- ranged="",
        -- ammo="",
        head="Vanya Hood",
        neck="Henic Torque",
        -- lear="",
        -- rear="",
        -- body="",
        hands="Weatherspoon Cuffs +1",
        -- lring="",
        -- rring="",
        -- back="",
        -- waist="",
        legs="Gyve Trousers",
        feet="Medium's Sabots"
    })
      
    ------------
    -- Aftercast
    ------------
      
    -- I don't use aftercast sets, as we handle what to equip later depending on conditions using a function, eg, do we have an avatar out?
  
end
