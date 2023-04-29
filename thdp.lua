_G.runny = _G.thrdrange * 2

_G.gunny = _G.thrdrange - _G.runny

ez = _G.gunny

local LocalPlayer = game.Players.LocalPlayer
local CurrentCamera = workspace.CurrentCamera

--// Script
local newindex; newindex = hookmetamethod(game, '__newindex', function(obj, idx, val)

   if obj == CurrentCamera and idx == 'CFrame' then
       val = val + (val.LookVector * -7)
   end

   return newindex(obj, idx, val)
end)
