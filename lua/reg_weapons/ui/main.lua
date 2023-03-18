AtlasUI:CreateFont("RegimentalWeapons.Information", 12)
AtlasUI:CreateFont("RegimentalWeapons.NoAccess", 24)

local PANEL = {}

function PANEL:Init()
    local ply = LocalPlayer()

    local cfg = RegimentalWeapons.Config.ChoiceJobs
    local playerGuns = table.Copy(cfg[ply:Team()])
    local accessibleJobs = RegimentalWeapons.PlayerAccessibleJobs

    for k, v in pairs(playerGuns) do
        if (table.IsEmpty(v.restriction)) then continue end

        if (table.HasValue(v.restriction, ply:Team())) then continue end

        local hasAccess = false
        for j, _ in pairs(accessibleJobs) do
            if table.HasValue(v.restriction, j) then
                hasAccess = true
            end
        end

        if (hasAccess) then continue end

        playerGuns[k].noaccess = true
    end

    self.weapons = {}

    for k, v in pairs(playerGuns) do
        self.weapons[k] = self:Add("AtlasUI.ButtonV2")
        self.weapons[k]:Dock(TOP)
        self.weapons[k]:SetTall(50)
        self.weapons[k]:DockMargin(10, 10, 10, 0)
        self.weapons[k]:SetRoundness(6)
        self.weapons[k]:SetText(v.weaponPrintName)
        self.weapons[k]:SetSolidColor(AtlasUI.Theme.Primary)
        self.weapons[k].DoClick = function(pnl)
            surface.PlaySound("garrysmod/ui_click.wav")
            RegimentalWeapons.Network:requestWeapon(v.weaponId)
            self:GetParent():Remove()
        end

        self.weapons[k].PaintOver = function(pnl, w, h)
            AtlasUI:MaskInverse(function()
                AtlasUI:DrawRoundedBox(6, 2, 2, w - 4, h - 4, color_white)
            end, function()
                AtlasUI:DrawRoundedBox(6, 0, 0, w, h, v.noaccess and AtlasUI.Theme.Red or AtlasUI.Theme.Green)
            end)
        end

        if (not v.noaccess) then continue end
        self.weapons[k].DoClick = function()
            surface.PlaySound("buttons/button11.wav")
        end
        self.weapons[k]:SetCursor("no")
    end
end

vgui.Register("RegimentalWeapons.Main", PANEL)