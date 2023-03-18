local PANEL = {}

function PANEL:Init()
    self:SetSize(420, 640)
    self:Center()
    self:MakePopup()
    self:SetTitle("Pick your weapon!")

    self.content = self:Add("RegimentalWeapons.Main")
    self.content:Dock(FILL)
end

vgui.Register("RegimentalWeapons.Frame", PANEL, "AtlasUI.Frame")
