local LocalPlayer = game:GetService("Players").LocalPlayer
local Account = loadstring(game:HttpGet"https://raw.githubusercontent.com/ic3w0lf22/Roblox-Account-Manager/master/RAMAccount.lua")()
local Acc = Account.new(LocalPlayer.Name)
local Library = require(game.ReplicatedStorage.Library)
Library.Load()

local saveData = Library.Save.Get()
local currencyLeft = saveData[CURRENCY_NAME]

local currencyString = Library.Functions.NumberShorten(currencyLeft) .. " "  .. G --load diamond

local __aliasText = ""

__aliasText = currencyString

while wait(time) do
    Acc:SetAlias(__aliasText)
end
