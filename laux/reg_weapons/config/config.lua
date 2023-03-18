-- This is needed due to the job variables not being accessible before their creation.

hook.Add("PostGamemodeLoaded", "ConfigLoad", function()
    local cfg = RegimentalWeapons:CreateConfig()
-- ^^^^^^ DO NOT TOUCH ANYTHING ABOVE THIS LINE ^^^^^^ --

--[[
    The AddChoiceJob method is used to set the properties of a certain
    job which will then allow the user to select weapons based on whats been
    passed in to the method. The method takes a job id as the first argument,
    a good thing to do in this situation would be to use the global variables
    e.g TEAM_501ARC instead of 10 as it is more readable and removes any
    "magic numbers".

    Here is an example of how you might use the AddChoiceJob method
    to set what weapons they should be able to aquire using the menu:

    cfg:AddChoiceJob(TEAM_104ARC, {
        cfg:Weapon("clone_e22", {
            TEAM_104CPT,
            TEAM_104LT,
            TEAM_104SGT
        }),
        cfg:Weapon("clone_dual_dc15s", {
            TEAM_104LT,
            TEAM_104CPT
        }),
    })

    In this example, the AddChoiceJob method is called on the cfg object
    and passed a job id & a table of weapons constructed with the Weapon
    method (more on this method below). This sets the job's weapons
    that can then be aquired when they spawn in through the menu. It can
    also account for their whitelists and such.


    The Weapon method is a helper function which is used to programatically
    create objects. You don't need to worry too much about what it creates,
    as long as you understand that the method returns a table that looks slightly
    uglier hence why we use the method instead of just typing out the table.

    The first argument of the method takes a string of the weapons ID, there after
    it takes a table (or a singular) of team IDs, again... Please use their
    varable counterparts instead of numbers, for example:

    BAD:
        5 (Noone ever knows what this seemingly random number means, it can also change which is bad...)

    GOOD:
        TEAM_501ARC (This variable is much easier to understand what it is, aswell as it changing its number even if the order of the jobs was changed)

    
    cfg:Weapon("clone_dual_dc15s", {
        TEAM_104LT,
        TEAM_104CPT
    }),

    Dual DC-15s, will be restricted to those whitelisted to 104th CO or SO
]]--








    --[[


        104th Wolfpack Battalion


    ]]--

    cfg:AddChoiceJob(TEAM_104ARC, {
        cfg:Weapon("clone_e22", {
            TEAM_104CPT,
            TEAM_104LT,
            TEAM_104SGT
        }),
        cfg:Weapon("clone_dual_dc15s", {
            TEAM_104LT,
            TEAM_104CPT
        }),
    })

    cfg:AddChoiceJob(TEAM_104MEDIC, {
        cfg:Weapon("clone_dual_dc17"),
        cfg:Weapon("clone_e22", {
            TEAM_104LT,
            TEAM_104CPT
        }),
        cfg:Weapon("clone_dual_dc15s", TEAM_104CPT),
    })

    cfg:AddChoiceJob(TEAM_104NULL, {
        cfg:Weapon("clone_e22", {
            TEAM_104CPT,
            TEAM_104LT,
            TEAM_104SGT
        }),
        cfg:Weapon("clone_dual_dc15s", {
            TEAM_104LT,
            TEAM_104CPT
        }),
    })

    cfg:AddChoiceJob(TEAM_104SOF, {
        cfg:Weapon("clone_e22", {
            TEAM_104CPT,
            TEAM_104LT,
            TEAM_104SGT
        }),
        cfg:Weapon("clone_dual_dc15s", {
            TEAM_104LT,
            TEAM_104CPT
        }),
    })



    --[[


        212th Attack Battalion


    ]]--

    cfg:AddChoiceJob(TEAM_212ARC, {
        cfg:Weapon("sp_rpg", {
            TEAM_212LT,
            TEAM_212CPT
        }),
        cfg:Weapon("sp_grenade_launcher"),
    })

    cfg:AddChoiceJob(TEAM_212MEDIC, {
        cfg:Weapon("weapon_lfsmissilelauncher", TEAM_212CPT),
        cfg:Weapon("zeus_thermaldet"),
        cfg:Weapon("clone_t21", {
            TEAM_212LT,
            TEAM_212CPT
        }),
        cfg:Weapon("weapon_gun_worm", {
            TEAM_212LT,
            TEAM_212CPT
        }),
        cfg:Weapon("sp_rpg", TEAM_212CPT),
        cfg:Weapon("sp_grenade_launcher", TEAM_212CPT),
    })

    cfg:AddChoiceJob(TEAM_212NULL, {
        cfg:Weapon("sp_rpg", {
            TEAM_212LT,
            TEAM_212CPT
        }),
        cfg:Weapon("sp_grenade_launcher"),
    })

    cfg:AddChoiceJob(TEAM_212SOF, {
        cfg:Weapon("sp_rpg", {
            TEAM_212LT,
            TEAM_212CPT
        }),
        cfg:Weapon("sp_grenade_launcher"),
    })



    --[[


        501st Legion


    ]]--

    cfg:AddChoiceJob(TEAM_501ARC, {
        cfg:Weapon("clone_dp23"),
        cfg:Weapon("clone_z6rotaryi", {
            TEAM_501LT,
            TEAM_501CPT
        }),
    })

    cfg:AddChoiceJob(TEAM_501MEDIC, {
        cfg:Weapon("clone_dp23", {
            TEAM_501LT,
            TEAM_501CPT
        }),
        cfg:Weapon("clone_z6rotaryi", TEAM_501CPT),
        cfg:Weapon("clone_sx21", TEAM_501SGT),
    })

    cfg:AddChoiceJob(TEAM_501NULL, {
        cfg:Weapon("clone_dp23"),
        cfg:Weapon("clone_z6rotaryi", {
            TEAM_501LT,
            TEAM_501CPT
        }),
    })

    cfg:AddChoiceJob(TEAM_501SOF, {
        cfg:Weapon("clone_dp23"),
        cfg:Weapon("clone_z6rotaryi", {
            TEAM_501LT,
            TEAM_501CPT
        }),
    })



    --[[


        Combat Engineers


    ]]--

    cfg:AddChoiceJob(TEAM_CEARC, {
        cfg:Weapon("clone_dlt19"),
    })

    cfg:AddChoiceJob(TEAM_CEMEDIC, {
        cfg:Weapon("clone_dlt19", {
            TEAM_CELT,
            TEAM_CECPT
        }),
    })

    cfg:AddChoiceJob(TEAM_CENULL, {
        cfg:Weapon("clone_dlt19"),
    })

    cfg:AddChoiceJob(TEAM_CESOF, {
        cfg:Weapon("clone_dlt19"),
    })



    --[[


        Clone Guard


    ]]--

    cfg:AddChoiceJob(TEAM_CGARC, {
        cfg:Weapon("clone_z6rotary"),
        cfg:Weapon("clone_dlt_h", {
            TEAM_CGLT,
            TEAM_CGCPT
        }),
        cfg:Weapon("clone_valken38x"),
    })

    cfg:AddChoiceJob(TEAM_CGMEDIC, {
        cfg:Weapon("clone_z6rotary"),
        cfg:Weapon("clone_dlt_h", {
            TEAM_CGLT,
            TEAM_CGCPT
        }),
        cfg:Weapon("clone_valken38x", TEAM_CGCPT),
    })

    cfg:AddChoiceJob(TEAM_CGNULL, {
        cfg:Weapon("clone_z6rotary"),
        cfg:Weapon("clone_dlt_h", {
            TEAM_CGLT,
            TEAM_CGCPT
        }),
        cfg:Weapon("clone_valken38x"),
    })

    cfg:AddChoiceJob(TEAM_CGSOF, {
        cfg:Weapon("clone_z6rotary"),
        cfg:Weapon("clone_dlt_h", {
            TEAM_CGLT,
            TEAM_CGCPT
        }),
        cfg:Weapon("clone_valken38x"),
    })



    --[[


        Clone Trooper's


    ]]--

    cfg:AddChoiceJob(TEAM_CT, {
        cfg:Weapon("clone_dc15a"),
        cfg:Weapon("clone_dc15s"),
    })

    cfg:AddChoiceJob(TEAM_CTARC, {
        cfg:Weapon("clone_tl50"),
        cfg:Weapon("clone_dc15le", {
            TEAM_CTLT,
            TEAM_CTCPT
        }),
    })

    cfg:AddChoiceJob(TEAM_CTCO, {
        cfg:Weapon("clone_dc15a"),
        cfg:Weapon("clone_dc15s"),
    })

    cfg:AddChoiceJob(TEAM_CTCPT, {
        cfg:Weapon("clone_dc15a"),
        cfg:Weapon("clone_dc15s"),
    })

    cfg:AddChoiceJob(TEAM_CTDSGT, {
        cfg:Weapon("clone_dc15a"),
        cfg:Weapon("clone_dc15s"),
    })

    cfg:AddChoiceJob(TEAM_CTEXO, {
        cfg:Weapon("clone_dc15a"),
        cfg:Weapon("clone_dc15s"),
    })

    cfg:AddChoiceJob(TEAM_CTLT, {
        cfg:Weapon("clone_dc15a"),
        cfg:Weapon("clone_dc15s"),
    })

    cfg:AddChoiceJob(TEAM_CTMEDIC, {
        cfg:Weapon("clone_tl50"),
        cfg:Weapon("clone_dc15le", TEAM_CTCPT),
    })

    cfg:AddChoiceJob(TEAM_CTNULL, {
        cfg:Weapon("clone_tl50"),
        cfg:Weapon("clone_dc15le", {
            TEAM_CTLT,
            TEAM_CTCPT
        }),
    })

    cfg:AddChoiceJob(TEAM_CTSOF, {
        cfg:Weapon("clone_tl50"),
        cfg:Weapon("clone_dc15le", {
            TEAM_CTLT,
            TEAM_CTCPT
        }),
    })

    cfg:AddChoiceJob(TEAM_CTVC, {
        cfg:Weapon("clone_dc15a"),
        cfg:Weapon("clone_dc15s"),
    })



    --[[


        Doom's Unit


    ]]--

    cfg:AddChoiceJob(TEAM_DUARC, {
        cfg:Weapon("clone_t21b"),
        cfg:Weapon("clone_dual_mpz13", {
            TEAM_DULT,
            TEAM_DUCPT
        }),
    })

    cfg:AddChoiceJob(TEAM_DUMEDIC, {
        cfg:Weapon("clone_t21b", {
            TEAM_DULT,
            TEAM_DUCPT
        }),
        cfg:Weapon("clone_dual_mpz13"),
    })

    cfg:AddChoiceJob(TEAM_DUNULL, {
        cfg:Weapon("clone_t21b"),
        cfg:Weapon("clone_dual_mpz13", {
            TEAM_DULT,
            TEAM_DUCPT
        }),
    })

    cfg:AddChoiceJob(TEAM_DUSOF, {
        cfg:Weapon("clone_t21b"),
        cfg:Weapon("clone_dual_mpz13", {
            TEAM_DULT,
            TEAM_DUCPT
        }),
    })



    --[[


        41st Ranger Platoon


    ]]--

    cfg:AddChoiceJob(TEAM_GCARC, {
        cfg:Weapon("clone_sniperheavy"),
        cfg:Weapon("clone_sniperlight"),
    })

    cfg:AddChoiceJob(TEAM_GCMEDIC, {
        cfg:Weapon("clone_sniperheavy", {
            TEAM_GCLT,
            TEAM_GCCPT
        }),
        cfg:Weapon("clone_sniperlight"),
    })

    cfg:AddChoiceJob(TEAM_GCNULL, {
        cfg:Weapon("clone_sniperheavy"),
        cfg:Weapon("clone_sniperlight"),
    })

    cfg:AddChoiceJob(TEAM_GCSOF, {
        cfg:Weapon("clone_sniperheavy"),
        cfg:Weapon("clone_sniperlight"),
    })

    cfg:AddChoiceJob(TEAM_GMARC, {
        cfg:Weapon("clone_westarm5"),
        cfg:Weapon("mexican_flamerv2"),
        cfg:Weapon("clone_rt97c", {
            TEAM_GMLT,
            TEAM_GMCPT
        }),
    })



    --[[


        Galactic Marines


    ]]--

    cfg:AddChoiceJob(TEAM_GMMEDIC, {
        cfg:Weapon("clone_westarm5"),
        cfg:Weapon("mexican_flamerv2", {
            TEAM_GMLT,
            TEAM_GMCPT
        }),
        cfg:Weapon("clone_rt97c", TEAM_GMCPT),
    })

    cfg:AddChoiceJob(TEAM_GMNULL, {
        cfg:Weapon("clone_westarm5"),
        cfg:Weapon("mexican_flamerv2"),
        cfg:Weapon("clone_rt97c", {
            TEAM_GMLT,
            TEAM_GMCPT
        }),
    })

    cfg:AddChoiceJob(TEAM_GMSOF, {
        cfg:Weapon("clone_westarm5"),
        cfg:Weapon("mexican_flamerv2"),
        cfg:Weapon("clone_rt97c", {
            TEAM_GMLT,
            TEAM_GMCPT
        }),
    })

-- VVVVVV DO NOT TOUCH ANYTHING BELOW THIS LINE VVVVVV --
end)