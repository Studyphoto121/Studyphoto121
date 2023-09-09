local distance = 10

local newindex; newindex = hookmetamethod(game, "__newindex", function(self, key, value)
    if tostring(self) == "Camera" and key == "CFrame" then
        value = value * CFrame.new(0, 0, distance)
    end
   
    return newindex(self, key, value)
end)
