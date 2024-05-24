local keys = 'CKFK9-QNGF2-D34FM-99QX3-8XC4K'

if _G.Key == keys then
    local versionURL
    if _G.Version == "private" then
        versionURL = "https://raw.githubusercontent.com/Studyphoto121/Studyphoto121/main/Script.lua"
    elseif _G.Version == "cupcake" then
        versionURL = "https://raw.githubusercontent.com/Studyphoto121/Studyphoto121/main/thdp.lua"
    elseif _G.Version == "cupcakev2" then
        versionURL = "https://raw.githubusercontent.com/Studyphoto121/Studyphoto121/main/cup%20cake%20v2.lua"
    elseif _G.Version == "antilock" then
        versionURL = "https://raw.githubusercontent.com/AvianProjects/Dahood/main/AntilockerV2"
    elseif _G.Version == "streamable1" then
        versionURL = "https://raw.githubusercontent.com/Studyphoto121/Studyphoto121/main/camlocke.lua"
    else
        print("Invalid version")
        return
    end
    
    loadstring(game:HttpGet(versionURL))()
else
    print("Invalid key")
end
