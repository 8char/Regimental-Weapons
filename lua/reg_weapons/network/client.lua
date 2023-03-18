local Network
do
    local _class_0
    local _parent_0 = AtlasUI.Network
    local _base_0 = {
        __name = "Network",
        __base = AtlasUI.Network.__base,
        requestWeapon = function(self, weaponId)
            self:send("WeaponRequest", function(self)
                net.WriteString(weaponId)
            end)
        end,
        receiveOpenMenu = function(self, ply)
            RegimentalWeapons.PlayerAccessibleJobs = self:decompress()

            vgui.Create("RegimentalWeapons.Frame")
        end,
        __type = function(self)
            return self.__name
        end
    }
    _base_0.__index = _base_0
    setmetatable(_base_0, _parent_0.__index)
    _class_0 = setmetatable({
        __init = function(self, ...)
            Network.__parent.__init(self, ...)

            self:setPrefix("RegimentalWeapons.")

            self:receiver("OpenMenu", self.receiveOpenMenu)
        end,
        __base = _base_0,
        __parent = _parent_0
    }, {
        __index = function(cls, parent)
            local val = rawget(_base_0, parent)
            if val == nil then local _parent = rawget(cls, "__parent")
                if _parent then return _parent[parent]
                end
            else
                return val
            end
        end,
        __call = function(cls, ...)
            local _self_0 = setmetatable({}, _base_0)
            cls.__init(_self_0, ...)
            return _self_0
        end
    })
    if _parent_0.__inherited then _parent_0.__inherited(_parent_0, _class_0)
    end
    Network = _class_0
end

RegimentalWeapons.Network = Network()
