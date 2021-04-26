if game.PlaceId == 155615604 then -- Prison Life
    game.StarterGui:SetCore("SendNotification", {
        Title = "Rex Hub";
        Text = "Successfully loaded Rex Hub!";
        Icon = "http://www.roblox.com/asset/?id=6706617824";
        Duration = 10;
    })
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Rex hub - Prison Life", "GrapeTheme")

    -- MAIN
    local Main = Window:NewTab("Utilities")
    local MainSection = Main:NewSection("Main")

    MainSection:NewDropdown("Give Gun", "Gives the character a gun", {"M9", "Remington 870", "AK-47"}, function(v)
        local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
        local Event = game:GetService("Workspace").Remote.ItemHandler
        Event:InvokeServer(A_1)
    end)

    MainSection:NewDropdown("Gun Mod", "Makes the guns very OP to use.", {"M9", "Remington 870", "AK-47"}, function(v)
        local module = nil
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
        end
        if module ~= nil then
            module["MaxAmmo"] = math.huge
            module["CurrentAmmo"] = math.huge
            module["StoredAmmo"] = math.huge
            module["FireRate"] = 0
            module["Spread"] = 0
            module["Range"] = math.huge
            module["Bullets"] = 10
            module["ReloadTime"] = 0
            module["AutoFire"] = true
        end
    end)

    -- PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")

    PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)

    PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)

elseif game.PlaceId == 3956818381 then -- Ninja Legends
    game.StarterGui:SetCore("SendNotification", {
        Title = "Axis Hub";
        Text = "Succesfully loaded!";
        Icon = "http://www.roblox.com/asset/?id=6693768785";
        Duration = 10;
    })
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Rex Hub - Ninja Legends", "Synapse")

    -- MAIN
    local Utilities = Window:NewTab("Main")
    local MainSection = Utilities:NewSection("Utilities")

    MainSection:NewToggle("Auto Swing", "Makes your player autoswing", function(v)
        getgenv().autoswing = v
        while true do
            if not getgenv().autoswing then return end
            for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:FindFirstChild("ninjitsuGain") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    break
                end
            end
            local A_1 = "swingKatana"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1)
            wait(0.1)
        end
    end)

    MainSection:NewToggle("Auto Sell", "Makes your player autosell", function(v)
        getgenv().autosell = v
        while true do
            if getgenv().autoswing == false then return end
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(0.1)
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
            wait(0.1)
        end
    end)

    MainSection:NewButton("Unlock all islands", "Unlocks all islands", function()
        local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(0.1)
        end
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
    end)
    
    MainSection:NewToggle("Auto buy Swords", "Automatically buys all the swords.", function(v)
        getgenv().buyswords = v
        while true do
            if not getgenv().buyswords then return end
            local A_1 = "buyAllSwords"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)

    MainSection:NewToggle("Auto buy Belts", "Automatically buys all the belts.", function(v)
        getgenv().buybelts = v
        while true do
            if not getgenv().buybelts then return end
            local A_1 = "buyAllBelts"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)
end
if game.PlaceId == 286090429 then --arsenal
    game.StarterGui:SetCore("SendNotification", {
        Title = "Rex Hub";
        Text = "Succesfully loaded Rex Hub!";
        Icon = "http://www.roblox.com/asset/?id=6706617824";
        Duration = 10;
    })
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Rex Hub - Arsenal", "GrapeTheme")

    --MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewToggle("Aimbot", "Automatically aims for the character.", function(state)
        if state then
             loadstring(game:HttpGet("https://pastebin.com/raw/gFhLdCbc"))()
        else
            print("Toggle Off")
        end
    end)

    MainSection:NewToggle("Kill all", "Kills all the players in the enemy team.", function(state)
        if state then
             loadstring(game:HttpGet("https://raw.githubusercontent.com/TERIHAX/Scripts/main/ArsenalKillAll.lua"))()
        else
            print("Toggle Off")
        end
    end)
    --PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")

    PlayerSection:NewSlider("Walkspeed", "Changes the character's walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
        warn("Could not change walkspeed")
    end)

    PlayerSection:NewSlider("Walkspeed", "Changes the character's walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
        warn("Could not change jumppower")
    end)
    --VISUALS
    local Visuals = Window:NewTab("Visuals")
    local VisualsSection = Visuals:NewSection("Visuals")

    VisualsSection:NewToggle("ESP", "Makes you view all of the players in the server.", function(state)
        if state then
            loadstring(game:HttpGet("https://pastebin.com/raw/V7meMhzr"))()
        else
            print("ESP Disabled.")
        end
    end)
end
if game.PlaceId == 2041312716 then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Rex Hub";
        Text = "Succesfully loaded Rex Hub!";
        Icon = "http://www.roblox.com/asset/?id=6706617824";
        Duration = 10;
    })
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Rex Hub - Ragdoll engine", "GrapeTheme")

    --main
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewSlider("High speed", "Changes the current character's walk speed.", 500, 20, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    MainSection:NewSlider("High jump power", "Changes the current character's jump power.", 500, 20, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

    --player
    local Trolling = Window:NewTab("Trolling")
    local TrollingSection = Trolling:NewSection("Trolling")

    TrollingSection:NewTextBox("Kill player", "Kills the player (Wait for it to fix)", function(txt)
        loadstring(game:HttpGet("https://pastebin.com/raw/iHMQZGnP"))()
    end)
end
if game.PlaceId == 5847495283 then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Rex Hub";
        Text = "Succesfully loaded Rex Hub!";
        Icon = "http://www.roblox.com/asset/?id=6706617824";
        Duration = 10;
    })
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Rex Hub - n the jojo game", "GrapeTheme")

    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewToggle("No cooldown", "Adds no cooldown to the player.", function(state)
        if state then
            loadstring(game:HttpGet("https://pastebin.com/raw/WVV4yBuh"))()
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Rex Hub";
                Text = "Disabled no cooldown.";
                Icon = "http://www.roblox.com/asset/?id=6706617824";
                Duration = 10;
            })
        end
    end)
end
if game.PlaceId == 2377868063 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Rex Hub - Strucid", "GrapeTheme")
    
    --main
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewToggle("Test", "This is a test for strucid.", function(state)
        if state then
            print("A fucking test is On")
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Rex Hub";
                Text = "Disabled test.";
                Icon = "http://www.roblox.com/asset/?id=6706617824";
                Duration = 10;
            })
        end
    end)

    MainSection:NewKeybind("Test Keybind", "This just a test.", Enum.KeyCode.F, function()
        warn("gay")
    end)    
end

if game.PlaceId == 185655149 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Rex Hub - Bloxburg", "BloodTheme")

    local Autofarm = Window:NewTab("Autofarm")
    local AutofarmSection = Autofarm:NewSection("Autofarm")

    AutofarmSection:NewToggle("Autofarm", "Autofarms all of the work places.", function(state)
        if state then
            loadstring(game:HttpGet("https://pastebin.com/raw/GXAVZY4h"))()
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Rex Hub";
                Text = "Disabled autofarm.";
                Icon = "http://www.roblox.com/asset/?id=6706617824";
                Duration = 10;
            })
        end
    end)
end    
