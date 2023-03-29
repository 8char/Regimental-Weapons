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
        cfg:Weapon("tfa_e22", {
            TEAM_104CPT,
            TEAM_104LT,
            TEAM_104SGT
        }),
        cfg:Weapon("tfa_dual_dc15s", {
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
        5 (No one ever knows what this seemingly random number means, it can also change which is bad...)

    GOOD:
        TEAM_501ARC (This variable is much easier to understand what it is, aswell as it changing its number even if the order of the jobs was changed)

    
    cfg:Weapon("tfa_dual_dc15s", {
        TEAM_104LT,
        TEAM_104CPT
    }),

    Dual DC-15s, will be restricted to those whitelisted to 104th CO or SO

    If multiple jobs have the same config e.g same weapons and exclusions we can use a table
    So instead of doing multiple as shown below 

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


    We can do this instead. So the teams after AddChoiceJob can be in a table.
    P.S Just copy example below and change lol.
    
    cfg:AddChoiceJob({
        TEAM_104NULL,
        TEAM_104SOF
     }, {
        cfg:Weapon("tfa_e22", {
            TEAM_104CPT,
            TEAM_104LT,
            TEAM_104SGT
        }),
        cfg:Weapon("tfa_dual_dc15s", {
            TEAM_104LT,
            TEAM_104CPT
        }),
    })


]]--








    --[[


        104th Wolfpack Battalion


    ]]--

    cfg:AddChoiceJob({
        TEAM_104ARC,
        TEAM_104NULL,
        TEAM_104SOF
     }, {
        cfg:Weapon("tfa_e22", {
            TEAM_104CPT,
            TEAM_104LT,
            TEAM_104SGT
        }),
        cfg:Weapon("tfa_dual_dc15s", {
            TEAM_104LT,
            TEAM_104CPT
        }),
    })

    cfg:AddChoiceJob(TEAM_104MEDIC, {
        cfg:Weapon("tfa_dual_dc17"),
        cfg:Weapon("tfa_e22", {
            TEAM_104LT,
            TEAM_104CPT
        }),
        cfg:Weapon("tfa_dual_dc15s", TEAM_104CPT),
    })



    --[[


        212th Attack Battalion


    ]]--

    cfg:AddChoiceJob(TEAM_212MEDIC, {
        cfg:Weapon("weapon_lfsmissilelauncher", TEAM_212CPT),
        cfg:Weapon("zeus_thermaldet"),
        cfg:Weapon("tfa_t21", {
            TEAM_212LT,
            TEAM_212CPT
        }),
        cfg:Weapon("tfa_plx1", TEAM_212CPT),
        cfg:Weapon("tfa_grenadelauncher", TEAM_212CPT),
    })

    cfg:AddChoiceJob({
        TEAM_212NULL,
        TEAM_212SOF,
        TEAM_212ARC
    }, {
        cfg:Weapon("tfa_plx1", {
            TEAM_212LT,
            TEAM_212CPT
        }),
        cfg:Weapon("tfa_grenadelauncher"),
    })




    --[[


        501st Legion


    ]]--

    cfg:AddChoiceJob(TEAM_501ARC, {
        cfg:Weapon("tfa_dp23"),
        cfg:Weapon("tfa_z6", {
            TEAM_501LT,
            TEAM_501CPT
        }),
    })

    cfg:AddChoiceJob(TEAM_501MEDIC, {
        cfg:Weapon("tfa_dp23", {
            TEAM_501LT,
            TEAM_501CPT
        }),
        cfg:Weapon("tfa_z6", TEAM_501CPT),
        cfg:Weapon("tfa_sx21", TEAM_501SGT),
    })

    cfg:AddChoiceJob(TEAM_501NULL, {
        cfg:Weapon("tfa_dp23"),
        cfg:Weapon("tfa_z6", {
            TEAM_501LT,
            TEAM_501CPT
        }),
    })

    cfg:AddChoiceJob(TEAM_501SOF, {
        cfg:Weapon("tfa_dp23"),
        cfg:Weapon("tfa_z6", {
            TEAM_501LT,
            TEAM_501CPT
        }),
    })



    --[[


        Combat Engineers


    ]]--

    cfg:AddChoiceJob(TEAM_CEARC, {
        cfg:Weapon("tfa_dlt19"),
    })

    cfg:AddChoiceJob(TEAM_CEMEDIC, {
        cfg:Weapon("tfa_dlt19", {
            TEAM_CELT,
            TEAM_CECPT
        }),
    })

    cfg:AddChoiceJob(TEAM_CENULL, {
        cfg:Weapon("tfa_dlt19"),
    })

    cfg:AddChoiceJob(TEAM_CESOF, {
        cfg:Weapon("tfa_dlt19"),
    })



    --[[


        Clone Guard


    ]]--

    cfg:AddChoiceJob(TEAM_CGARC, {
        cfg:Weapon("tfa_z6rotary"),
        cfg:Weapon("tfa_dlt_h", {
            TEAM_CGLT,
            TEAM_CGCPT
        }),
        cfg:Weapon("tfa_valken38x"),
    })

    cfg:AddChoiceJob(TEAM_CGMEDIC, {
        cfg:Weapon("tfa_z6rotary"),
        cfg:Weapon("tfa_dlt_h", {
            TEAM_CGLT,
            TEAM_CGCPT
        }),
        cfg:Weapon("tfa_valken38x", {
            TEAM_CGCPT
        }),
    })

    cfg:AddChoiceJob(TEAM_CGNULL, {
        cfg:Weapon("tfa_z6rotary"),
        cfg:Weapon("tfa_dlt_h", {
            TEAM_CGLT,
            TEAM_CGCPT
        }),
        cfg:Weapon("tfa_valken38x"),
    })

    cfg:AddChoiceJob(TEAM_CGSOF, {
        cfg:Weapon("tfa_z6rotary"),
        cfg:Weapon("tfa_dlt_h", {
            TEAM_CGLT,
            TEAM_CGCPT
        }),
        cfg:Weapon("tfa_valken38x"),
    })



    --[[


        tfa Trooper's


    ]]--

    cfg:AddChoiceJob(TEAM_CT, {
        cfg:Weapon("tfa_dc15a_mk3"),
        cfg:Weapon("tfa_dc15s_mk3"),
    })

    cfg:AddChoiceJob(TEAM_CTARC, {
        cfg:Weapon("tfa_tl50"),
        cfg:Weapon("tfa_dc15le", {
            TEAM_CTLT,
            TEAM_CTCPT
        }),
    })

    cfg:AddChoiceJob({
        TEAM_CTCO,
        TEAM_CTCPT,
        TEAM_CTDSGT,
        TEAM_CTEXO,
        TEAM_CTLT,
        TEAM_CTVC
    }, {
        cfg:Weapon("tfa_dc15a_mk3"),
        cfg:Weapon("tfa_dc15s_mk3"),
    })

    cfg:AddChoiceJob(TEAM_CTMEDIC, {
        cfg:Weapon("tfa_tl50"),
        cfg:Weapon("tfa_dc15le", {
            TEAM_CTCPT
        }),
    })

    cfg:AddChoiceJob({TEAM_CTSOF,TEAM_CTNULL}, {
        cfg:Weapon("tfa_tl50"),
        cfg:Weapon("tfa_dc15le", {
            TEAM_CTLT,
            TEAM_CTCPT
        }),
    })



    --[[


        Doom's Unit


    ]]--

    cfg:AddChoiceJob({
        TEAM_DUARC,
        TEAM_DUNULL,
        TEAM_DUSOF
    }, {
        cfg:Weapon("tfa_t21b"),
        cfg:Weapon("tfa_dual_mpz13", {
            TEAM_DULT,
            TEAM_DUCPT
        }),
    })

    cfg:AddChoiceJob(TEAM_DUMEDIC, {
        cfg:Weapon("tfa_t21b", {
            TEAM_DULT,
            TEAM_DUCPT
        }),
        cfg:Weapon("tfa_dual_mpz13"),
    })

    --[[


        41st Ranger Platoon


    ]]--

    cfg:AddChoiceJob({
        TEAM_GCARC,
        TEAM_GCNULL,
        TEAM_GCSOF
    }, {
        cfg:Weapon("tfa_sniperheavy"),
        cfg:Weapon("tfa_sniperlight"),
    })

    cfg:AddChoiceJob(TEAM_GCMEDIC, {
        cfg:Weapon("tfa_sniperheavy", {
            TEAM_GCLT,
            TEAM_GCCPT
        }),
        cfg:Weapon("tfa_sniperlight"),
    })




    --[[


        Galactic Marines


    ]]--

    cfg:AddChoiceJob({
        TEAM_GMARC,
        TEAM_GMNULL,
        TEAM_GMSOF
    }, {
        cfg:Weapon("tfa_westarm5"),
        cfg:Weapon("mexican_flamerv2"),
        cfg:Weapon("tfa_rt97c", {
            TEAM_GMLT,
            TEAM_GMCPT
        }),
    })

    cfg:AddChoiceJob(TEAM_GMMEDIC, {
        cfg:Weapon("tfa_westarm5"),
        cfg:Weapon("mexican_flamerv2", {
            TEAM_GMLT,
            TEAM_GMCPT
        }),
        cfg:Weapon("tfa_rt97c", TEAM_GMCPT),
    })



-- VVVVVV DO NOT TOUCH ANYTHING BELOW THIS LINE VVVVVV --
end)