local LocalPlayer = game.Players.LocalPlayer
local CurrentCamera = workspace.CurrentCamera

--// Script
local newindex; newindex = hookmetamethod(game, '__newindex', function(obj, idx, val)

   if obj == CurrentCamera and idx == 'CFrame' then
       val = val + (val.LookVector * "-".. _G.thrdrange)
   end

   return newindex(obj, idx, val)
end)
