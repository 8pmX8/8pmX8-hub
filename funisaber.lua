local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joeengo/exploiting/main/EngoUILIB_V2.lua"))()
local main = library:CreateMain("8pmX8 hub", "Saber Simulator", Enum.KeyCode.RightShift)

local tab = main:CreateTab("Main Hack")
local plrtab = main:CreateTab("Player Hacks")

--MAIN HACKS

tab:CreateToggle("Auto swing", function(v)
    getgenv().yes = v
    while true do
        if not getgenv().yes then return end 
        local Target = game:GetService("ReplicatedStorage").Events.Clicked;
        Target:FireServer();
        game:GetService("ReplicatedStorage").Events.Clicked:FireServer()
        wait()
    end
end)

tab:CreateToggle("Auto sell", function(v)
    getgenv().funi = v
    while true do
        if not getgenv().funi then return end
        oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(532.807312, 183.837784, 149.856171)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
        wait(1)
    end
end)

tab:CreateToggle("Auto buy all swords", function(v)
    getgenv().autobuy = v
    while true do
        if not getgenv().autobuy then return end
        local string_1 = "Swords";
        local Target = game:GetService("ReplicatedStorage").Events.BuyAll;
        Target:FireServer(string_1);
        wait(5)
    end
end)

--PLAYER HACKS

plrtab:CreateSlider("Walkspeed", 16, 256, function(v)
    while true do
        plr = game.Players.LocalPlayer

        plr.Character.Humanoid.WalkSpeed = v

        wait(0.1)
    end
end)