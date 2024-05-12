local keys = 'CKFK9-QNGF2-D34FM-99QX3-8XC4K'

if _G.Key == keys then
    local versionURL
    if _G.Version == "private" then
        versionURL = "https://raw.githubusercontent.com/Studyphoto121/Studyphoto121/main/Script.lua"
    elseif _G.Version == "cupcake" then
        versionURL = "https://raw.githubusercontent.com/Studyphoto121/Studyphoto121/main/thdp.lua"
    else
        print("Invalid version")
        return
    end
    
    loadstring(game:HttpGet(versionURL))()
else
    print("Invalid key")
end
