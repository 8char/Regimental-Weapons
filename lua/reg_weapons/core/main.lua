hook.Add("PlayerSpawn", "RegimentalWeapons", function(ply)
    if (not RegimentalWeapons.Config.ChoiceJobs[ply:Team()]) then return end

    RegimentalWeapons.Network:openMenu(ply)
end)
