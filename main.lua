Config = {
    ["Team"] = false
}

local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/Library.lua'))()
local ThemeManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/addons/SaveManager.lua'))()

local Window = Library:CreateWindow({         
    Title = '🔐            Locker Hub Scripts : New UI & ReWhile              🔐',
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    Main = Window:AddTab('General'), 
    Automatics = Window:AddTab('Automatics'), 
    Combat = Window:AddTab('Combat'), 
    Visuals = Window:AddTab('Visuals'), 
    Notify = Window:AddTab('Notify'), 
    ['Settings'] = Window:AddTab('Settings'),
}   

World1 = false;
World2 = false;
World3 = false;
if game.PlaceId == 2753915549 then 
    World1 = true
elseif game.PlaceId == 4442272183 then 
    World2 = true
elseif game.PlaceId == 7449423635 then 
    World3 = true
end;
repeat wait() until game.Players.LocalPlayer
repeat wait() until game.Players
repeat wait() until game
repeat wait()
	if game.Players.LocalPlayer.Team == nil and game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Visible == true then
		if Config["Team"] == "Pirate" then
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size = UDim2.new(0, 10000, 0, 10000)
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4, 0, -5, 0)
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.BackgroundTransparency = 1
			wait(.5)
			game:service'VirtualInputManager':SendMouseButtonEvent(500,500, 0, true, game, 1)
			game:service'VirtualInputManager':SendMouseButtonEvent(500,500, 0, false, game, 1)
		elseif Config["Team"] == "Marine" then
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Size = UDim2.new(0, 10000, 0, 10000)
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4, 0, -5, 0)
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.BackgroundTransparency = 1
			wait(.5)
			game:service'VirtualInputManager':SendMouseButtonEvent(500,500, 0, true, game, 1)
			game:service'VirtualInputManager':SendMouseButtonEvent(500,500, 0, false, game, 1)
		else
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size = UDim2.new(0, 10000, 0, 10000)
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4, 0, -5, 0)
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.BackgroundTransparency = 1
			wait(.5)
			game:service'VirtualInputManager':SendMouseButtonEvent(500,500, 0, true, game, 1)
			game:service'VirtualInputManager':SendMouseButtonEvent(500,500, 0, false, game, 1)
		end
	end
until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()

game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local l1 = Tabs.Main:AddLeftGroupbox('Main')

l1:AddLabel('   \\\\ 🗿 Auto Farm Level 🗿 //')

l1:AddToggle('genl1', {
    Text = 'Auto Farm Level',
    Default = false,
})

task.spawn(function()
    while wait() do
        if setscriptable then
            setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
        end
        if sethiddenproperty then
            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
            sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", 9e26)
        end
        if Toggles.genr1_f.Value == true then
            MakerAtt("Attack")
        end
        if Toggles.genl1.Value == true then
            pcall(function()
                CheckLevel()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == _ToolTip and v:IsA('Tool') then
                        local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
                    end
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    Fast_Toggle = false
                    TP(CFrameQ)
                    if (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        wait(1.2)
                        if (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
                            game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("StartQuest", NameQuest, QuestLv)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                            for _,v in pairs(game:GetService("Workspace").Enemies:GetChildren(Ms)) do
                                if v.Name == Ms and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        MakerAtt("Attack")
                                        Fast_Toggle = true
                                        CFarm = v.HumanoidRootPart.CFrame
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                    until v.Humanoid.Health <= 0 or Toggles.genl1.Value == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:GetChildren(v.Name)
                                end
                            end
                        else
                            Fast_Toggle = false
                            TP(CFrameMon)
                            CheckLevel()
                        end
                    end)
                end
            end)
        else
            Fast_Toggle = false
            CheckLevel()
        end
        (function()
        if Toggles.Stats1.Value then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", 1)
        end
        if Toggles.Stats2.Value then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", 1)
        end
        if Toggles.Stats3.Value then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", 1)
        end
        if Toggles.Stats4.Value then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Gun", 1)
        end
        if Toggles.Stats5.Value then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", 1)
        end
        end)()
    end
end)

local Mass = Instance.new("Message", workspace)
local bindable = Instance.new("BindableFunction")
local UserInputService = game:GetService("UserInputService")
local STOP = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)

if true or false then
    if game:GetService("ReplicatedStorage").Effect.Container.Hit.Combat:FindFirstChild("Fishman") then
        game:GetService("ReplicatedStorage").Effect.Container.Hit.Combat.Fishman:Destroy()
    end
    if game:GetService("ReplicatedStorage").Effect.Container.Hit.Combat:FindFirstChild("Punch") then
        game:GetService("ReplicatedStorage").Effect.Container.Hit.Combat.Punch:Destroy()
    end
    if game:GetService("ReplicatedStorage").Effect.Container.Hit.Combat:FindFirstChild("Dragon") then
        game:GetService("ReplicatedStorage").Effect.Container.Hit.Combat.Dragon:Destroy()
    end
    if game:GetService("ReplicatedStorage").Effect.Container.Hit.Combat:FindFirstChild("Electric") then
        game:GetService("ReplicatedStorage").Effect.Container.Hit.Combat.Electric:Destroy()
    end
    if game:GetService("ReplicatedStorage").Effect.Container.Hit.Combat:FindFirstChild("Sword") then
        game:GetService("ReplicatedStorage").Effect.Container.Hit.Combat.Sword:Destroy()
    end
    if game:GetService("ReplicatedStorage").Util.Sound.Storage:FindFirstChild("Swing") then
        game:GetService("ReplicatedStorage").Util.Sound.Storage.Swing:Destroy()
    end
    if game:GetService("ReplicatedStorage").Util.Sound.Storage.Lazy:FindFirstChild("Hit1") then
        game:GetService("ReplicatedStorage").Util.Sound.Storage.Lazy.Hit1:Destroy()
    end
    if game:GetService("ReplicatedStorage").Util.Sound.Storage.Lazy:FindFirstChild("Hit2") then
        game:GetService("ReplicatedStorage").Util.Sound.Storage.Lazy.Hit2:Destroy()
    end
    if game:GetService("ReplicatedStorage").Util.Sound.Storage.Lazy:FindFirstChild("Hit1Electric") then
        game:GetService("ReplicatedStorage").Util.Sound.Storage.Lazy.Hit1Electric:Destroy()
    end
    if game:GetService("ReplicatedStorage").Util.Sound.Storage.Lazy:FindFirstChild("HitKnockbackNotLoud") then
        game:GetService("ReplicatedStorage").Util.Sound.Storage.Lazy.HitKnockbackNotLoud:Destroy()
    end
    if game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("DeathSound") then
        game:GetService("ReplicatedStorage").Util.Sound.Storage.Other.DeathSound:Destroy()
    end
    if game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("RespawnSound") then
        game:GetService("ReplicatedStorage").Util.Sound.Storage.Other.RespawnSound:Destroy()
    end
end

if not shared.orl then
    shared.orl = STOPRL.wrapAttackAnimationAsync
end

if not shared.cpc then
    shared.cpc = STOP.play 
end

spawn(function()
    while task.wait() do
        STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
            pcall(function()
                local Hits = STOPRL.getBladeHits(b,c,d)
                if Hits then
                    STOP.play = function() end
                    a:Play(10.1,9.1,8.1)
                    func(Hits)                
                    STOP.play = shared.cpc
                    wait(a.length * 5.25)
                    a:Stop()
                end     
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
            pcall(function()
                local Hits = STOPRL.getBladeHits(b,c,d)
                if Hits then
                    STOP.play = function() end
                    a:Play(10.1,9.1,8.1)
                    func(Hits)                
                    STOP.play = shared.cpc
                    wait(a.length * 10.5)
                    a:Stop()
                end     
            end)
        end
    end
end)

require(game.ReplicatedStorage.Util.CameraShaker):Stop()
rA = 1
CoolDownAtt = tick()
spawn(function()
    while wait(FastTi) do
		rA += 1
		if rA > 8 then
			rA = 1
		end
        pcall(function()
            if Fast_Toggle or Toggles.genr1_f.Value==true then
                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                    MakerAtt("Fireserver")
                end
            end
        end)
    end
end)

MakerAtt = function(Fre)
    pcall(function()
        local Ani = Instance.new("Animation")
        local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
        local CbFw = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
        local plr = game.Players.LocalPlayer
        local AC = CbFw.activeController
        function GetBlade()
            local p13 = CbFw.activeController
            local ret = p13.blades[1]
            if not ret then 
                return 
            end
            while ret.Parent ~= plr.Character do 
                ret = ret.Parent 
            end 
            return ret
        end 
        function getHitsEnemies(Size)
            local Hits = {}
            local Enemies = workspace.Enemies:GetChildren()
            for i = 1,#Enemies do 
                local v = Enemies[i]
                local Human = v:FindFirstChildOfClass("Humanoid")
                if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size then
                    table.insert(Hits,Human.RootPart)
                end
            end
            return Hits
        end
        function getHitsAll(Size)
            local Hits = {}
            local Enemies = workspace.Enemies:GetChildren()
            local Characters = workspace.Characters:GetChildren()
            for i = 1,#Enemies do 
                local v = Enemies[i]
                local Human = v:FindFirstChildOfClass("Humanoid")
                if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size then
                    table.insert(Hits,Human.RootPart)
                end
            end
            for i = 1,#Characters do 
                local v = Characters[i]
                if v ~= plr.Character then
                    local Human = v:FindFirstChildOfClass("Humanoid")
                    if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size then
                        table.insert(Hits,Human.RootPart)
                    end
                end
            end
            return Hits
        end
        for i = 1,1 do
            if Fre == "Fireserver" then
                if AC.blades and AC.blades[1] then  
                    task.spawn(function() 
                        for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Humanoid.Health > 0 then
                                if v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 55 then  
                                    local FindMon = v:FindFirstChild("Humanoid").MaxHealth
                                    local log = v:FindFirstChild("Humanoid").Health
                                    local FindHealth = v:FindFirstChild("Humanoid").MaxHealth / 4 --iei
                                    local Max = FindMon / 30 --Ex : 15 => 15 Hits 
                                    AC.hitboxMagnitude = 60
                                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetBlade())); 
                                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", getHitsEnemies(55), rA, "") wait(0.00001)
                                    v.Humanoid:TakeDamage(math.ceil(Max))
                                end
                            end
                        end
                    end)
                end
            end
            if Fre == "Attack" then
                for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Humanoid.Health > 0 then
                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 55 then
                            if AC.blades and AC.blades[1] then
                                Ani.AnimationId = AC.anims.basic[2]
                                AC.humanoid:LoadAnimation(Ani):Play(2, 2)  
                                AC.increment = 4
                                AC.hitboxMagnitude = 60
                                AC.timeToNextBlock = tick() -(rA)
                                AC.timeToNextAttack = tick() -(rA)
                                game:GetService("VirtualUser"):ClickButton1(Vector2.new(1300,760))
                            end
                        end
                    end
                end
            end
        end
    end)
end























l1:AddToggle('genl2', {
    Text = 'Auto New World',
    Default = false,
})

l1:AddToggle('genl3', {
    Text = 'Auto Thrid Sea',
    Default = false,
})

l1:AddButton('Stop Tween', function()
    TP(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame)
    TP(game:GetService("Players")["LocalPlayer"].Character.Head.CFrame)
end)

Toggles.genl2:OnChanged(function()
    if Toggles.genl2.Value == true then
        
    end
end)

Toggles.genl3:OnChanged(function()
    if Toggles.genl3.Value == true then
        
    end
end)

l1:AddLabel('        \\\\ 🥋 Bosses 🥋 //')

l1:AddToggle('genl4', {
    Text = 'Auto Boss All',
    Default = false,
})

l1:AddToggle('genl5', {
    Text = 'Auto Boss',
    Default = false,
})

l1:AddDropdown('D_boss', {
    Values = {},
    Default = 1,
    Multi = false,
    Text = '          Select Bosses',
})

Toggles.genl4:OnChanged(function()
    if Toggles.genl4.Value == true then
        
    end
end)

Toggles.genl5:OnChanged(function()
    if Toggles.genl5.Value == true then
        
    end
end)

Options.D_boss:OnChanged(function()
    
end)

l1:AddLabel('        \\\\ ⚔️ Mestery ⚔️ //')

--Toggles.genl6.Value
l1:AddToggle('genl6', {Text = 'Auto Farm Mastery [Gun]', Default = false});
--Toggles.genl7.Value
l1:AddToggle('genl7', {Text = 'Auto Farm Mastery [Fruit]', Default = false});
l1:AddSlider('mes_hes', {Text = 'Health ( Default : 15% )', Default = 15, Min = 0, Max = 100, Rounding = 0, Compact = false});
l1:AddSlider('mes_x', {Text = 'X', Default = 1,  Min = 1, Max = 50, Rounding = 0, Compact = false});
l1:AddSlider('mes_y', {Text = 'Y', Default = 30, Min = 1, Max = 50, Rounding = 0, Compact = false});
l1:AddSlider('mes_z', {Text = 'Z', Default = 1,  Min = 1, Max = 50, Rounding = 0, Compact = false});
Options.mes_hes:OnChanged(function(vu) V_heath = vu end)
Options.mes_x:OnChanged(function(vu) X_CFrame = vu end)
Options.mes_y:OnChanged(function(vu) Y_CFrame = vu end)
Options.mes_z:OnChanged(function(vu) Z_CFrame = vu end)
--------------------------------------------------------------------------
local r1 = Tabs.Main:AddRightGroupbox('Settings')

r1:AddDropdown('S_me', {
    Values = { 'Melee', 'Sword','Fruit'},
    Default = 1,
    Text = 'Select Melee / Sword',
})

r1:AddDropdown('S_att', {
    Values = { 'Slow', 'Normal', 'Maximum'},
    Default = 2,
    --Multi = false, 
    Text = 'Attack Mode',
})

r1:AddInput('cum_level', {
    Default = '',
    Numeric = true,
    Finished = false,

    Text = 'Custom Level [ Auto Farm Level ]',
    Placeholder = '',
})

r1:AddToggle('genr1', {
    Text = 'Bypass Teleports',
    Default = true,
})

r1:AddToggle('genr1_f', {
    Text = 'Attacking',
    Default = false,
})

Options.cum_level:OnChanged(function(vu)

end)

Options.S_me:OnChanged(function(vu)
    _ToolTip = vu
end)

FastTi = 0.1
Options.S_att:OnChanged(function(vu)
    if vu == 'Slow' then
        FastTi = 0.2
    elseif vu == 'Normal' then
        FastTi = 0.1
    elseif vu == 'Maximum' then
        McDeTTT = 1 / 0 / 0 / 0 / 0
        FastTi = McDeTTT
    else
        FastTi = 0.1
    end
end)

Toggles.genr1:OnChanged(function()
    if Toggles.genr1.Value == true then
        B_Value = true
    else
        B_Value = false
    end
end)

--------------------------------------------------------------------------
local r2 = Tabs.Main:AddRightGroupbox('Skills')

r2:AddToggle('Skill1', {
    Text = 'Z',
    Default = false,
})
Toggles.Skill1:OnChanged(function()
    if Toggles.Skill1.Value == true then

    end
end)

r2:AddToggle('Skill2', {
    Text = 'X',
    Default = false,
})
Toggles.Skill2:OnChanged(function()
    if Toggles.Skill2.Value == true then

    end
end)

r2:AddToggle('Skill3', {
    Text = 'C',
    Default = false,
})
Toggles.Skill3:OnChanged(function()
    if Toggles.Skill3.Value == true then

    end
end)

r2:AddToggle('Skill4', {
    Text = 'V',
    Default = false,
})
Toggles.Skill4:OnChanged(function()
    if Toggles.Skill4.Value == true then

    end
end)

r2:AddToggle('Skill5', {
    Text = 'F',
    Default = false,
})
Toggles.Skill5:OnChanged(function()
    if Toggles.Skill5.Value == true then

    end
end)
--------------------------------------------------------------------------
local r3 = Tabs.Main:AddRightGroupbox('Events')

r3:AddLabel('     \\\\ 🎂 Cake Prince 🎂 //')

r3:AddToggle('cake_prince', {
    Text = 'Auto Cake Prince',
    Default = false,
})

r3:AddToggle('att_cake_prince', {
    Text = 'Spawn & Attack Cake Prince',
    Default = true,
})

r3:AddLabel('      \\\\ 🦴 Holloween 🦴 //')

r3:AddToggle('hallow_scythe', {
    Text = 'Auto Hallow Scythe',
    Default = false,
})

Toggles.att_cake_prince:OnChanged(function()
    if Toggles.att_cake_prince.Value == true then

    end
end)

Toggles.cake_prince:OnChanged(function()
    if Toggles.cake_prince.Value == true then

    end
end)

Toggles.hallow_scythe:OnChanged(function()
    if Toggles.hallow_scythe.Value == true then

    end
end)
--------------------------------------------------------------------------
local auto_l1 = Tabs.Automatics:AddLeftGroupbox('Materials')

auto_l1:AddLabel('      \\\\ ⚙️ Material ⚙️ //')

auto_l1:AddDropdown('d_material', {
    Values = {},
    Default = 1,
    Text = 'Select Materials',
})

auto_l1:AddToggle('t_material', {
    Text = 'Auto Materials',
    Default = false,
})

Options.d_material:OnChanged(function()

end)

Toggles.t_material:OnChanged(function()
    if Toggles.t_material.Value == true then

    end
end)

auto_l1:AddLabel('      \\\\ ⚔️ Mob Aura ⚔️ //')

auto_l1:AddSlider('sl_m_au', {
    Text = 'Distance',
    Default = 1750,
    Min = 1,
    Max = 2500,
    Rounding = 0,
    Compact = false,
})

auto_l1:AddToggle('t_Aura', {
    Text = 'Mob Aura',
    Default = false,
})

Options.sl_m_au:OnChanged(function()
    
end)

Toggles.t_Aura:OnChanged(function()
    if Toggles.t_Aura.Value == true then

    end
end)

auto_l1:AddLabel('    \\\\ ⚙️ Auto Material ⚙️ //')

auto_l1:AddToggle('a_superhuman', {
    Text = 'Auto Buy Superhuman',
    Default = false,
})

auto_l1:AddToggle('a_ElectriClaw', {
    Text = 'Auto Buy ElectriClaw',
    Default = false,
})

auto_l1:AddToggle('a_dragon', {
    Text = 'Auto Buy Dragon Talon',
    Default = false,
})

auto_l1:AddToggle('a_deathstep', {
    Text = 'Auto Buy Death Step',
    Default = false,
})

auto_l1:AddToggle('a_sharkmankarate', {       
    Text = 'Auto Buy SharkManKarate',
    Default = false,
})
auto_l1:AddToggle('a_godhuman', {       
    Text = 'Auto Buy GodHuman',
    Default = false,
})

local tap2l2 = Tabs.Automatics:AddLeftGroupbox('Stats')

tap2l2:AddToggle('Stats1', { --Toggles.Stats1.Value
    Text = 'Melee',
    Default = false,
})

tap2l2:AddToggle('Stats2', { --Toggles.Stats2.Value
    Text = 'Defense',
    Default = false,
})

tap2l2:AddToggle('Stats3', { --Toggles.Stats3.Value
    Text = 'Sword',
    Default = false,
})

tap2l2:AddToggle('Stats4', { --Toggles.Stats4.Value
    Text = 'Gun',
    Default = false,
})

tap2l2:AddToggle('Stats5', { --Toggles.Stats5.Value
    Text = 'Demon Fruit',
    Default = false,
})

Tabs.Automatics:AddRightGroupbox('First Sea [ Coming Soon ]')
Tabs.Automatics:AddRightGroupbox('Second Sea [ Coming Soon ]')
Tabs.Automatics:AddRightGroupbox('Third Sea [ Coming Soon ]')
--------------------------------------------------------------------------
local cb_l1 = Tabs.Combat:AddLeftGroupbox('Combat')
cb_l1:AddLabel('       \\\\ 🧍🏻 Players 🧍🏻 //')

cb_l1:AddDropdown('d_players', {
    Values = {},
    Default = 1,
    Text = 'Select Players',
})
cb_l1:AddToggle('t_p_tp', {
    Text = 'Teleport Players',
    Default = false,
})

cb_l1:AddToggle('t_p_cam', {
    Text = 'Teleport FreeCam Players',
    Default = false,
})

cb_l1:AddToggle('t_att_players', {
    Text = 'Kill Players',
    Default = false,
})

Options.d_players:OnChanged(function()

end)

Toggles.t_p_tp:OnChanged(function()
    if Toggles.t_p_tp.Value == true then

    end
end)

Toggles.t_p_cam:OnChanged(function()
    if Toggles.t_p_cam.Value == true then

    end
end)
Toggles.t_att_players:OnChanged(function()
    if Toggles.t_att_players.Value == true then

    end
end)
--------------------------------------------------------------------------

local _Vl = Tabs.Visuals:AddLeftGroupbox('Teleport')

if World1 then _list_TP = {"Jones Salad","Marine 1","Marine 2","Midle Town","Jungle","Pirate Village","Desert","Frozen Village","Colosseum","Prison","Mob Leader","Magma Village","UnderWater Gate","UnderWater City","Fountain City","Sky 1","Sky 2","Sky 3"};end;
if World2 then _list_TP = {"Dock","Mansion","Kingdom Of Rose","Cafe","Sunflower Field","Jeramy Mountain","Colossuem","Factory","The Bridge","Green Bit","Graveyard","Dark Area","Snow Mountain","Hot Island","Cold Island","Ice Castle","Usopp's Island","inscription Island","Forgotten Island","Ghost Ship"};end;
if World3 then _list_TP = {"Port Town","Hydra Island","Gaint Tree","Mansion","Castle on the Sea","Graveyard Island","Icecream Island","Peanut Island","Cookie Island","Sea of treats","Christmas island","Lab"};end;
if World1 then _TP = {["Jones Salad"] = CFrame.new(1042.1501464844, 16.299360275269, 1444.3442382813),["Marine1"] = CFrame.new(-2599.6655273438, 6.9146227836609, 2062.2216796875),["Marine2"] = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188),["Midle Town"] = CFrame.new(-655.97088623047, 7.878026008606, 1573.7612304688),["Jungle"] = CFrame.new(-1499.9877929688, 22.877912521362, 353.87060546875),["Pirate Village"] = CFrame.new(-1163.3889160156, 44.777843475342, 3842.8276367188),["Desert"] = CFrame.new(954.02056884766, 6.6275520324707, 4262.611328125),["Frozen Village"] = CFrame.new(1144.5270996094, 7.3292083740234, -1164.7322998047),["Colosseum"] = CFrame.new(-1667.5869140625, 39.385631561279, -3135.5817871094),["Prison"] = CFrame.new(4857.6982421875, 5.6780304908752, 732.75750732422),["Mob Leader"] = CFrame.new(-2841.9604492188, 7.3560485839844, 5318.1040039063),["Magma Village"] = CFrame.new(-5328.8740234375, 8.6164798736572, 8427.3994140625),["UnderWater Gate"] = CFrame.new(3893.953125, 5.3989524841309, -1893.4851074219),["UnderWater City"] = CFrame.new(61191.12109375, 18.497436523438, 1561.8873291016),["Fountain City"] = CFrame.new(5244.7133789063, 38.526943206787, 4073.4987792969),["Sky1"] = CFrame.new(-4878.0415039063, 717.71246337891, -2637.7294921875),["Sky2"] = CFrame.new(-7899.6157226563, 5545.6030273438, -422.21798706055),["Sky3"] = CFrame.new(-7868.5288085938, 5638.205078125, -1482.5548095703)};end;
if World2 then _TP = {["Dock"] = CFrame.new(-12.519311904907, 19.302536010742, 2827.853515625),["Mansion"] = CFrame.new(-390.34829711914, 321.89730834961, 869.00506591797),["Kingdom Of Rose"] = CFrame.new(-388.29895019531, 138.35575866699, 1132.1662597656),["Cafe"] = CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813),["Sunflower Field"] = CFrame.new(-1576.7171630859, 198.61849975586, 13.725157737732),["Jeramy Mountain"] = CFrame.new(1986.3519287109, 448.95678710938, 796.70239257813),["Colossuem"] = CFrame.new(-1871.8974609375, 45.820514678955, 1359.6843261719),["Factory"] = CFrame.new(349.53750610352, 74.446998596191, -355.62420654297),["The Bridge"] = CFrame.new(-1860.6354980469, 88.384948730469, -1859.1593017578),["Green Bit"] = CFrame.new(-2202.3706054688, 73.097663879395, -2819.2687988281),["Graveyard"] = CFrame.new(-5617.5927734375, 492.22183227539, -778.3017578125),["Dark Area"] = CFrame.new(3464.7700195313, 13.375151634216, -3368.90234375),["Snow Mountain"] = CFrame.new(561.23834228516, 401.44781494141, -5297.14453125),["Hot Island"] = CFrame.new(-5505.9633789063, 15.977565765381, -5366.6123046875),["Cold Island"] = CFrame.new(-5924.716796875, 15.977565765381, -4996.427734375),["Ice Castle"] = CFrame.new(6111.7109375, 294.41259765625, -6716.4829101563),["Usopp's Island"] = CFrame.new(4760.4985351563, 8.3444719314575, 2849.2426757813),["inscription Island"] = CFrame.new(-5099.01171875, 98.241539001465, 2424.4035644531),["Forgotten Island"] = CFrame.new(-3051.9514160156, 238.87203979492, -10250.807617188),["Ghost Ship"] = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))};end;
if World3 then _TP = {["Port Town"] = CFrame.new(-275.21615600586, 43.755737304688, 5451.0659179688),["Hydra Island"] = CFrame.new(5541.2685546875, 668.30456542969, 195.48069763184),["Gaint Tree"] = CFrame.new(2276.0859375, 25.87850189209, -6493.03125),["Mansion"] = CFrame.new(-12548.998046875, 332.40396118164, -7603.1865234375),["Castle on the Sea"] = CFrame.new(-5498.0458984375, 313.79473876953, -2860.6022949219),["Graveyard Island"] = CFrame.new(-9515.07324, 142.130615, 5537.58398),["Icecream Island"] = CFrame.new(-880.894531, 118.245354, -11030.7607),["Peanut Island"] = CFrame.new(-2124.06738, 44.0723495, -10179.8281),["Cookie Island"] = CFrame.new(-1862.953857421875, 40.08573532104492, -11810.9052734375),["Sea of treats"] = CFrame.new(226.3279571533203, 37.14205551147461, -12237.6240234375),["Christmas island"] = CFrame.new(-1078.72607421875, 16.64043426513672, -14476.9814453125),["Lab"] = CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469)};end;
if World1 then totween = _TP end;
if World2 then totween = _TP end;
if World3 then totween = _TP end;

_Vl:AddDropdown('list_TP', {
    Values = _list_TP,
    Default = 0,
    Text = 'Select Teleport',
})

_Vl:AddToggle('start_TP',{Text = 'Start',Default = false})
_Vl:AddSlider('tween_speed', {Text = 'Tween Speed', Default = 325, Min = 50, Max = 500, Rounding = 0})
_Vl:AddSlider('distance_warp', {Text = 'Distance Warp', Default = 255, Min = 1, Max = 300, Rounding = 1, Compact = false})
_Vl:AddButton('Reset Tween Speed', function() Options.tween_speed:SetValue(300) Options.distance_warp:SetValue(250) end)

_Vl:AddButton('Bypass', function()
    function ByPass(Pos)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos 
        wait(.08)
        game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
    end
    wait(.1)
    ByPass(S_listTP)
end)

Options.distance_warp:OnChanged(function(vu) d_warp = vu end);
Options.tween_speed:OnChanged(function(vu) t_sp = vu end);
Options.list_TP:OnChanged(function(vu) S_listTP = totween[ vu ] end);
Toggles.start_TP:OnChanged(function() if Toggles.start_TP.Value == true then TP(S_listTP) NoClip = true else NoClip = false spawn(function() pcall(function() TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame) end) end) end end)

local _Vr = Tabs.Visuals:AddRightGroupbox('Warp');
_Vr:AddButton('Remote To First Sea', function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain"); end);
_Vr:AddButton('Remote To Second Sea', function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa"); end);
_Vr:AddButton('Remote To Third Sea', function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou"); end); _Vr:AddLabel('');
_Vr:AddButton('Remote To Ghost Ship', function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)); end); _Vr:AddLabel('');
_Vr:AddButton('Remote To Mansion', function() local args = {[1] = "requestEntrance",[2] = Vector3.new(-12548.595703125, 337.17001342773, -7554.6103515625)};game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)); end);
_Vr:AddButton('Remote To Castle on the Sea', function() local args = {[1] = "requestEntrance",[2] = Vector3.new(-5079.44677734375, 313.7293395996094, -3151.065185546875)};game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)); end);
--------------------------------------------------------------------------
_G.url_wephook = ''
local N_ = Tabs.Notify:AddLeftGroupbox('Notify')
N_:AddInput('url_wephook', {
    Default = '',
    Numeric = false,
    Finished = false,

    Text = 'Wephook',
    Placeholder = 'Url',
})

Options.url_wephook:OnChanged(function(vu)
    _G.url_wephook = vu
end)

N_:AddButton('Test wephook', function()

end)

N_:AddToggle('start_wephook', {
    Text = 'Send Data',
    Default = false,
})

Toggles.start_wephook:OnChanged(function()
    if Toggles.start_wephook.Value == true then

    end
end)
--------------------------------------------------------------------------
Library:OnUnload(function() 
    Library.Unloaded = true 
end)

local MenuGroup = Tabs['Settings']:AddLeftGroupbox('Menu')

MenuGroup:AddButton('Unload', function() 
    Library:Unload() 
end)

MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { 
    Default = 'RightControl', 
    NoUI = true, 
    Text = 'Menu keybind' 
}) 

Library.ToggleKeybind = Options.MenuKeybind

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings() 
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 
ThemeManager:SetFolder('LockerHub')
SaveManager:SetFolder('LockerHub/Bloxfruits')
SaveManager:BuildConfigSection(Tabs['Settings']) 
ThemeManager:ApplyToTab(Tabs['Settings'])

function CheckLevel()
    local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value 
    if World1 then
        if Lv == 1 or Lv <= 9 or SelectMonster == "Bandit [Lv. 5]" then 
            Ms = "Bandit [Lv. 5]"
            NameQuest = "BanditQuest1"
            QuestLv = 1
            NameMon = "Bandit"
            CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
            CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 10 or Lv <= 14 or SelectMonster == "Monkey [Lv. 14]" then 
            Ms = "Monkey [Lv. 14]"
            NameQuest = "JungleQuest"
            QuestLv = 1
            NameMon = "Monkey"
            CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 15 or Lv <= 29 or SelectMonster == "Gorilla [Lv. 20]" then 
            Ms = "Gorilla [Lv. 20]"
            NameQuest = "JungleQuest"
            QuestLv = 2
            NameMon = "Gorilla"
            CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
            if Toggles.genr1.Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 30 or Lv <= 39 or SelectMonster == "Pirate [Lv. 35]" then 
            Ms = "Pirate [Lv. 35]"
            NameQuest = "BuggyQuest1"
            QuestLv = 1
            NameMon = "Pirate"
            CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 40 or Lv <= 59 or SelectMonster == "Brute [Lv. 45]" then 
            Ms = "Brute [Lv. 45]"
            NameQuest = "BuggyQuest1"
            QuestLv = 2
            NameMon = "Brute"
            CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 60 or Lv <= 74 or SelectMonster == "Desert Bandit [Lv. 60]" then 
            Ms = "Desert Bandit [Lv. 60]"
            NameQuest = "DesertQuest"
            QuestLv = 1
            NameMon = "Desert Bandit"
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
            CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 75 or Lv <= 89 or SelectMonster == "Desert Officer [Lv. 70]" then
            Ms = "Desert Officer [Lv. 70]"
            NameQuest = "DesertQuest"
            QuestLv = 2
            NameMon = "Desert Officer"
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
            CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 90 or Lv <= 99 or SelectMonster == "Snow Bandit [Lv. 90]" then 
            Ms = "Snow Bandit [Lv. 90]"
            NameQuest = "SnowQuest"
            QuestLv = 1
            NameMon = "Snow Bandit"
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 100 or Lv <= 119 or SelectMonster == "Snowman [Lv. 100]" then
            Ms = "Snowman [Lv. 100]"
            NameQuest = "SnowQuest"
            QuestLv = 2
            NameMon = "Snowman"
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 120 or Lv <= 149 or SelectMonster == "Chief Petty Officer [Lv. 120]" then
            Ms = "Chief Petty Officer [Lv. 120]"
            NameQuest = "MarineQuest2"
            QuestLv = 1
            NameMon = "Chief Petty Officer"
            CFrameQ = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
            CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 150 or Lv <= 174 or SelectMonster == "Sky Bandit [Lv. 150]" then 
            Ms = "Sky Bandit [Lv. 150]"
            NameQuest = "SkyQuest"
            QuestLv = 1
            NameMon = "Sky Bandit"
            CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
            CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 175 or Lv <= 189 or SelectMonster == "Dark Master [Lv. 175]" then 
            Ms = "Dark Master [Lv. 175]"
            NameQuest = "SkyQuest"
            QuestLv = 2
            NameMon = "Dark Master"
            CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
            CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
		elseif Lv == 190 or Lv <= 209 or SelectMonster == "Prisoner [Lv. 190]" then
			Ms = "Prisoner [Lv. 190]"
			NameQuest = "PrisonerQuest"
			QuestLv = 1
			NameMon = "Prisoner"
			CFrameQ = CFrame.new(5308.93115, 1.65517521, 475.120514)
			CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
		elseif Lv == 210 or Lv <= 274 or SelectMonster == "Dangerous Prisoner [Lv. 210]" then
			Ms = "Dangerous Prisoner [Lv. 210]"
			NameQuest = "PrisonerQuest"
			QuestLv = 2
			NameMon = "Dangerous Prisoner"
			CFrameQ = CFrame.new(5308.93115, 1.65517521, 475.120514)
			CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 275 or Lv <= 299 or SelectMonster == "Gladiator [Lv. 275]" then 
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible = true
            Ms = "Galley Captain [Lv. 650]"
            NameQuest = "FountainQuest"
            QuestLv = 2
            NameMon = "Galley Captain"
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
            CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 300 or Lv <= 324 or SelectMonster == "Military Soldier [Lv. 300]" then 
            Ms = "Military Soldier [Lv. 300]"
            NameQuest = "MagmaQuest"
            QuestLv = 1
            NameMon = "Military Soldier"
            CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
            CFrameMon = CFrame.new(-5481.966796875, 9.47974967956543, 8533.9453125)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 325 or Lv <= 374 or SelectMonster == "Military Spy [Lv. 325]" then 
            Ms = "Military Spy [Lv. 325]"
            NameQuest = "MagmaQuest"
            QuestLv = 2
            NameMon = "Military Spy"
            CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
            CFrameMon = CFrame.new(-5984.0532226563, 82.14656829834, 8753.326171875)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 375 or Lv <= 399 or SelectMonster == "Fishman Warrior [Lv. 375]" then  
            Ms = "Fishman Warrior [Lv. 375]"
            NameQuest = "FishmanQuest"
            QuestLv = 1
            NameMon = "Fishman Warrior"
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60924.0625, 18.6081485748291, 1499.62158203125)
			if B_Value and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
        elseif Lv == 400 or Lv <= 449 or SelectMonster == "Fishman Commando [Lv. 400]" then 
            Ms = "Fishman Commando [Lv. 400]"
            NameQuest = "FishmanQuest"
            QuestLv = 2
            NameMon = "Fishman Commando"
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
			if B_Value and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
        elseif Lv == 450 or Lv <= 474 or SelectMonster == "God's Guard [Lv. 450]" then 
            Ms = "God's Guard [Lv. 450]"
            NameQuest = "SkyExp1Quest"
            QuestLv = 1
            NameMon = "God's Guard"
            CFrameQ = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234)
            CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)
			if B_Value and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
			end
        elseif Lv == 475 or Lv <= 524 or SelectMonster == "Shanda [Lv. 475]" then 
            Ms = "Shanda [Lv. 475]"
            NameQuest = "SkyExp1Quest"
            QuestLv = 2
            NameMon = "Shanda"
            CFrameQ = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703)
            CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)
			if B_Value and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
			end
        elseif Lv == 525 or Lv <= 549 or SelectMonster == "Royal Squad [Lv. 525]" then
            Ms = "Royal Squad [Lv. 525]"
            NameQuest = "SkyExp2Quest"
            QuestLv = 1
            NameMon = "Royal Squad"
            CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
            CFrameMon = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 550 or Lv <= 624 or SelectMonster == "Royal Soldier [Lv. 550]" then 
            Ms = "Royal Soldier [Lv. 550]"
            NameQuest = "SkyExp2Quest"
            QuestLv = 2
            NameMon = "Royal Soldier"
            CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
            CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 625 or Lv <= 649 or SelectMonster == "Galley Pirate [Lv. 625]" then 
            Ms = "Galley Pirate [Lv. 625]"
            NameQuest = "FountainQuest"
            QuestLv = 1
            NameMon = "Galley Pirate"
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
            CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv >= 650 or SelectMonster == "Galley Captain [Lv. 650]" then
            Ms = "Galley Captain [Lv. 650]"
            NameQuest = "FountainQuest"
            QuestLv = 2
            NameMon = "Galley Captain"
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
            CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        end
    end
    if World2 then
        if Lv == 700 or Lv <= 724 or SelectMonster == "Raider [Lv. 700]" then
            Ms = "Raider [Lv. 700]"
            NameQuest = "Area1Quest"
            QuestLv = 1
            NameMon = "Raider"
            CFrameQ = CFrame.new(-428.95770263671875, 78.09781646728516, 1836.208251953125)
			CFrameMon = CFrame.new(-102.38111877441406, 57.9881591796875, 2129.87109375)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 725 or Lv <= 774 or SelectMonster == "Mercenary [Lv. 725]" then 
            Ms = "Mercenary [Lv. 725]"
            NameQuest = "Area1Quest"
            QuestLv = 2
            NameMon = "Mercenary"
            CFrameQ = CFrame.new(-428.95770263671875, 78.09781646728516, 1836.208251953125)
            CFrameMon = CFrame.new(-862.66015625, 135.44296264648438, 1401.4788818359375)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 775 or Lv <= 799 or SelectMonster == "Swan Pirate [Lv. 775]" then 
            Ms = "Swan Pirate [Lv. 775]"
            NameQuest = "Area2Quest"
            QuestLv = 1
            NameMon = "Swan Pirate"
            CFrameQ = CFrame.new(637.9683837890625, 78.09781646728516, 918.20849609375)
            CFrameMon = CFrame.new(975.76708984375, 121.35709381103516, 1290.0174560546875)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 800 or Lv <= 874 or SelectMonster == "Factory Staff [Lv. 800]" then 
            Ms = "Factory Staff [Lv. 800]"
            NameQuest = "Area2Quest"
            QuestLv = 2
            NameMon = "Factory Staff"
            CFrameQ = CFrame.new(637.9683837890625, 78.09781646728516, 918.20849609375)
            CFrameMon = CFrame.new(262.9582214355469, 123.04452514648438, -268.9997863769531)
            if B_Value and (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQ 
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
        elseif Lv == 875 or Lv <= 899 or SelectMonster == "Marine Lieutenant [Lv. 875]" then
            Ms = "Marine Lieutenant [Lv. 875]"
            NameQuest = "MarineQuest3"
            QuestLv = 1
            NameMon = "Marine Lieutenant"
            CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
            CFrameMon = CFrame.new(-2881.047119140625, 73.20455169677734, -2985.87939453125)
        elseif Lv == 900 or Lv <= 949 or SelectMonster == "Marine Captain [Lv. 900]" then
            Ms = "Marine Captain [Lv. 900]" 
            NameQuest = "MarineQuest3"
            QuestLv = 2
            NameMon = "Marine Captain"
            CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
            CFrameMon = CFrame.new(-1913.3197021484375, 73.2123031616211, -3332.065185546875)
        elseif Lv == 950 or Lv <= 974 or SelectMonster == "Zombie [Lv. 950]" then 
            Ms = "Zombie [Lv. 950]"
            NameQuest = "ZombieQuest"
            QuestLv = 1
            NameMon = "Zombie"
            CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
            CFrameMon = CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)
        elseif Lv == 975 or Lv <= 999 or SelectMonster == "Vampire [Lv. 975]" then
            Ms = "Vampire [Lv. 975]"
            NameQuest = "ZombieQuest"
            QuestLv = 2
            NameMon = "Vampire"
            CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
            CFrameMon = CFrame.new(-6020.2216796875, 6.528029441833496, -1280.1217041015625)
        elseif Lv == 1000 or Lv <= 1049 or SelectMonster == "Snow Trooper [Lv. 1000]" then
            Ms = "Snow Trooper [Lv. 1000]"
            NameQuest = "SnowMountainQuest"
            QuestLv = 1
            NameMon = "Snow Trooper"
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
            CFrameMon = CFrame.new(535.21051025391, 432.74209594727, -5484.9165039063)
        elseif Lv == 1050 or Lv <= 1099 or SelectMonster == "Winter Warrior [Lv. 1050]" then
            Ms = "Winter Warrior [Lv. 1050]"
            NameQuest = "SnowMountainQuest"
            QuestLv = 2
            NameMon = "Winter Warrior"
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
            CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, -5174.130859375)
        elseif Lv == 1100 or Lv <= 1124 or SelectMonster == "Lab Subordinate [Lv. 1100]" then
            Ms = "Lab Subordinate [Lv. 1100]"
            NameQuest = "IceSideQuest"
            QuestLv = 1
            NameMon = "Lab Subordinate"
            CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
            CFrameMon = CFrame.new(-5778.29833984375, 42.52165222167969, -4481.79443359375)
        elseif Lv == 1125 or Lv <= 1174 or SelectMonster == "Horned Warrior [Lv. 1125]" then
            Ms = "Horned Warrior [Lv. 1125]"
            NameQuest = "IceSideQuest"
            QuestLv = 2
            NameMon = "Horned Warrior"
            CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
            CFrameMon = CFrame.new(-6466.01611328125, 15.97756290435791, -5667.28857421875)
        elseif Lv == 1175 or Lv <= 1199 or SelectMonster == "Magma Ninja [Lv. 1175]" then 
            Ms = "Magma Ninja [Lv. 1175]"
            NameQuest = "FireSideQuest"
            QuestLv = 1
            NameMon = "Magma Ninja"
            CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
            CFrameMon = CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)
        elseif Lv == 1200 or Lv <= 1249 or SelectMonster == "Lava Pirate [Lv. 1200]" then 
            Ms = "Lava Pirate [Lv. 1200]"
            NameQuest = "FireSideQuest"
            QuestLv = 2
            NameMon = "Lava Pirate"
            CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
            CFrameMon = CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)
        elseif Lv == 1250 or Lv <= 1274 or SelectMonster == "Ship Deckhand [Lv. 1250]" then
            Ms = "Ship Deckhand [Lv. 1250]"
            NameQuest = "ShipQuest1"
            QuestLv = 1
            NameMon = "Ship Deckhand"
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
            CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
			if FarmMode and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
        elseif Lv == 1275 or Lv <= 1299 or SelectMonster == "Ship Engineer [Lv. 1275]" then 
            Ms = "Ship Engineer [Lv. 1275]"
            NameQuest = "ShipQuest1"
            QuestLv = 2
            NameMon = "Ship Engineer"
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
            CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
			if FarmMode and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
        elseif Lv == 1300 or Lv <= 1324 or SelectMonster == "Ship Steward [Lv. 1300]" then 
            Ms = "Ship Steward [Lv. 1300]"
            NameQuest = "ShipQuest2"
            QuestLv = 1
            NameMon = "Ship Steward"
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
            CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
			if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
        elseif Lv == 1325 or Lv <= 1349 or SelectMonster == "Ship Officer [Lv. 1325]" then 
            Ms = "Ship Officer [Lv. 1325]"
            NameQuest = "ShipQuest2"
            QuestLv = 2
            NameMon = "Ship Officer"
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
            CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
			if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
        elseif Lv == 1350 or Lv <= 1374 or SelectMonster == "Arctic Warrior [Lv. 1350]" then 
            Ms = "Arctic Warrior [Lv. 1350]"
            NameQuest = "FrostQuest"
            QuestLv = 1
            NameMon = "Arctic Warrior"
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
            CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)
			if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
			end
        elseif Lv == 1375 or Lv <= 1424 or SelectMonster == "Snow Lurker [Lv. 1375]" then 
            Ms = "Snow Lurker [Lv. 1375]"
            NameQuest = "FrostQuest"
            QuestLv = 2
            NameMon = "Snow Lurker"
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
            CFrameMon = CFrame.new(5628.482421875, 57.574996948242, -6618.3481445313)
        elseif Lv == 1425 or Lv <= 1449 or SelectMonster == "Sea Soldier [Lv. 1425]" then 
            Ms = "Sea Soldier [Lv. 1425]"
            NameQuest = "ForgottenQuest"
            QuestLv = 1
            NameMon = "Sea Soldier"
            CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
            CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
        elseif Lv >= 1450 or SelectMonster == "Water Fighter [Lv. 1450]" then
            Ms = "Water Fighter [Lv. 1450]"
            NameQuest = "ForgottenQuest"
            QuestLv = 2
            NameMon = "Water Fighter"
            CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
            CFrameMon = CFrame.new(-3436.071044921875, 290.5218200683594, -10503.736328125)
		end
	end
	if World3 then
		if Lv == 1500 or Lv <= 1524 or SelectMonster == "Pirate Millionaire [Lv. 1500]" then 
            Ms = "Pirate Millionaire [Lv. 1500]"
			NameQuest = "PiratePortQuest"
			QuestLv = 1
			NameMon = "Pirate Millionaire"
			CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
			CFrameMon = CFrame.new(-302.28338623046875, 57.51716232299805, 5615.92919921875)
		elseif Lv == 1525 or Lv <= 1574 or SelectMonster == "Pistol Billionaire [Lv. 1525]" then
			NameQuest = "PiratePortQuest"
			QuestLv = 2
			NameMon = "Pistol Billionaire"
			CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
			CFrameMon = CFrame.new(-635.3514404296875, 111.48406982421875, 5952.5869140625)
		elseif Lv == 1575 or Lv <= 1599 or SelectMonster == "Dragon Crew Warrior [Lv. 1575]" then
			Ms = "Dragon Crew Warrior [Lv. 1575]"
			NameQuest = "AmazonQuest"
			QuestLv = 1
			NameMon = "Dragon Crew Warrior"
			CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
			CFrameMon = CFrame.new(6506.54345703125, 113.297119140625, -957.8739624023438)
		elseif Lv == 1600 or Lv <= 1624 or SelectMonster == "Dragon Crew Archer [Lv. 1600]" then 
			Ms = "Dragon Crew Archer [Lv. 1600]"
			NameQuest = "AmazonQuest"
			QuestLv = 2
			NameMon = "Dragon Crew Archer"
			CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
			CFrameMon = CFrame.new(6716.9052734375, 430.8106384277344, 111.39741516113281)
		elseif Lv == 1625 or Lv <= 1649 or SelectMonster == "Female Islander [Lv. 1625]" then
			Ms = "Female Islander [Lv. 1625]"
			NameQuest = "AmazonQuest2"
			QuestLv = 1
			NameMon = "Female Islander"
			CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
			CFrameMon = CFrame.new(4662.99951171875, 735.8788452148438, 676.922119140625)
		elseif Lv == 1650 or Lv <= 1699 or SelectMonster == "Giant Islander [Lv. 1650]" then
			Ms = "Giant Islander [Lv. 1650]"
			NameQuest = "AmazonQuest2"
			QuestLv = 2
			NameMon = "Giant Islander"
			CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
			CFrameMon = CFrame.new(5009.5068359375, 664.11071777344, -40.960144042969)
		elseif Lv == 1700 or Lv <= 1724 or SelectMonster == "Marine Commodore [Lv. 1700]" then
			Ms = "Marine Commodore [Lv. 1700]"
			NameQuest = "MarineTreeIsland"
			QuestLv = 1
			NameMon = "Marine Commodore"
			CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
			CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
		elseif Lv == 1725 or Lv <= 1774 or SelectMonster == "Marine Rear Admiral [Lv. 1725]" then
			Ms = "Marine Rear Admiral [Lv. 1725]"
			NameQuest = "MarineTreeIsland"
			QuestLv = 2
			NameMon = "Marine Rear Admiral"
			CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
			CFrameMon = CFrame.new(3382.984619140625, 121.53973388671875, -6790.88037109375)
		elseif Lv == 1775 or Lv <= 1799 or SelectMonster == "Fishman Raider [Lv. 1775]" then
			Ms = "Fishman Raider [Lv. 1775]"
			NameQuest = "DeepForestIsland3"
			QuestLv = 1
			NameMon = "Fishman Raider"
			CFrameQ = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625)
			CFrameMon = CFrame.new(-10400.931640625, 331.7884216308594, -8408.9541015625)
		elseif Lv == 1800 or Lv <= 1824 or SelectMonster == "Fishman Captain [Lv. 1800]" then
			Ms = "Fishman Captain [Lv. 1800]"
			NameQuest = "DeepForestIsland3"
			QuestLv = 2
			NameMon = "Fishman Captain"
			CFrameQ = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875)
			CFrameMon = CFrame.new(-11133.873046875, 384.2198791503906, -9055.9765625)
		elseif Lv == 1825 or Lv <= 1849 or SelectMonster == "Forest Pirate [Lv. 1825]" then
			Ms = "Forest Pirate [Lv. 1825]"
			NameQuest = "DeepForestIsland"
			QuestLv = 1
			NameMon = "Forest Pirate"
			CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
			CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
		elseif Lv == 1850 or Lv <= 1899 or SelectMonster == "Mythological Pirate [Lv. 1850]" then 
			Ms = "Mythological Pirate [Lv. 1850]"
			NameQuest = "DeepForestIsland"
			QuestLv = 2
			NameMon = "Mythological Pirate"
			CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
			CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
		elseif Lv == 1900 or Lv <= 1924 or SelectMonster == "Jungle Pirate [Lv. 1900]" then 
			Ms = "Jungle Pirate [Lv. 1900]"
			NameQuest = "DeepForestIsland2"
			QuestLv = 1
			NameMon = "Jungle Pirate"
			CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
			CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
		elseif Lv == 1925 or Lv <= 1974 or SelectMonster == "Musketeer Pirate [Lv. 1925]" then 
			Ms = "Musketeer Pirate [Lv. 1925]"
			NameQuest = "DeepForestIsland2"
			QuestLv = 2
			NameMon = "Musketeer Pirate"
			CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
			CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
		elseif Lv == 1975 or Lv <= 1999 or SelectMonster == "Reborn Skeleton [Lv. 1975]" then
			Ms = "Reborn Skeleton [Lv. 1975]"
			NameQuest = "HauntedQuest1"
			QuestLv = 1
			NameMon = "Reborn Skeleton"
			CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
			CFrameMon = CFrame.new(-8761.77148, 183.431747, 6168.33301, 0.978073597, -1.3950732e-05, -0.208259016, -1.08073925e-06, 1, -7.20630269e-05, 0.208259016, 7.07080399e-05, 0.978073597)
		elseif Lv == 2000 or Lv <= 2024 or SelectMonster == "Living Zombie [Lv. 2000]" then
			Ms = "Living Zombie [Lv. 2000]"
			NameQuest = "HauntedQuest1"
			QuestLv = 2
			NameMon = "Living Zombie"
			CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
			CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977, 0.999474227, 2.77547141e-08, 0.0324240364, -2.58006327e-08, 1, -6.06848474e-08, -0.0324240364, 5.98163865e-08, 0.999474227)
		elseif Lv == 2025 or Lv <= 2049 or SelectMonster == "Demonic Soul [Lv. 2025]" then
			Ms = "Demonic Soul [Lv. 2025]"
			NameQuest = "HauntedQuest2"
			QuestLv = 1
			NameMon = "Demonic Soul"
			CFrameQ = CFrame.new(-9515.39551, 172.266037, 6078.89746, 0.0121199936, -9.78649624e-08, 0.999926567, 2.30358754e-08, 1, 9.75929382e-08, -0.999926567, 2.18513581e-08, 0.0121199936)
			CFrameMon = CFrame.new(-9709.30762, 204.695892, 6044.04688, -0.845798075, -3.4587876e-07, -0.533503294, -4.46235369e-08, 1, -5.77571257e-07, 0.533503294, -4.64701827e-07, -0.845798075)
		elseif Lv == 2050 or Lv <= 2075 or SelectMonster == "Posessed Mummy [Lv. 2050]" then
			Ms = "Posessed Mummy [Lv. 2050]"
			NameQuest = "HauntedQuest2"
			QuestLv = 2
			NameMon = "Posessed Mummy"
			CFrameQ = CFrame.new(-9515.39551, 172.266037, 6078.89746, 0.0121199936, -9.78649624e-08, 0.999926567, 2.30358754e-08, 1, 9.75929382e-08, -0.999926567, 2.18513581e-08, 0.0121199936)
			CFrameMon = CFrame.new(-9554.11035, 65.6141663, 6041.73584, -0.877069294, 5.33355795e-08, -0.480364174, 2.06420765e-08, 1, 7.33423562e-08, 0.480364174, 5.44105987e-08, -0.877069294)
		elseif Lv == 2075 or Lv <= 2100 or SelectMonster == "Peanut Scout [Lv. 2075]" then
			Ms = "Peanut Scout [Lv. 2075]"
			NameQuest = "NutsIslandQuest"
			QuestLv = 1
			NameMon = "Peanut Scout"
			CFrameQ = CFrame.new(-2103.401611328125, 38.447044372558594, -10192.44140625)
			CFrameMon = CFrame.new(-2190.37, 94.6626, -10098.3)
		elseif Lv == 2100 or Lv <= 2125 or SelectMonster == "Peanut President [Lv. 2100]" then
			Ms = "Peanut President [Lv. 2100]"
			NameQuest = "NutsIslandQuest"
			QuestLv = 2
			NameMon = "Peanut President"
			CFrameQ = CFrame.new(-2103.401611328125, 38.447044372558594, -10192.44140625)
			CFrameMon = CFrame.new(-2137.686279296875, 170.53089904785156, -10609.388671875)
		elseif Lv == 2125 or Lv <= 2150 or SelectMonster == "Ice Cream Chaf [Lv. 2125]" then
			Ms = "Ice Cream Chef [Lv. 2125]"
			NameQuest = "IceCreamIslandQuest"
			QuestLv = 1
			NameMon = "Ice Cream Chef"
			CFrameQ = CFrame.new(-821.259033203125, 66.16278839111328, -10964.5791015625)
			CFrameMon = CFrame.new(-801.5482788085938, 211.06137084960938, -10972.814453125)
		elseif Lv == 2150 or Lv <= 2200 or SelectMonster == "Ice Cream Commander [Lv. 2150]" then
			Ms = "Ice Cream Commander [Lv. 2150]"
			NameQuest = "IceCreamIslandQuest"
			QuestLv = 2
			NameMon = "Ice Cream Commander"
			CFrameQ = CFrame.new(-821.259033203125, 66.16278839111328, -10964.5791015625)
			CFrameMon = CFrame.new(-552.3236694335938, 111.17111206054688, -11291.3271484375)
		elseif Lv == 2200 or Lv <= 2225 or SelectMonster == "Cookie Crafter [Lv. 2200]" then
			Ms = "Cookie Crafter [Lv. 2200]"
			NameQuest = "CakeQuest1"
			QuestLv = 1
			NameMon = "Cookie Crafter"
			CFrameQ = CFrame.new(-2022.6387939453125, 38.1414680480957, -12027.939453125)
			CFrameMon = CFrame.new(-2301.03125, 112.88335418701172, -12206.984375)
		elseif Lv == 2225 or Lv <= 2250 or SelectMonster == "Cake Guard [Lv. 2225]" then
			Ms = "Cake Guard [Lv. 2225]"
			NameQuest = "CakeQuest1"
			QuestLv = 2
			NameMon = "Cake Guard"
			CFrameQ = CFrame.new(-2022.6387939453125, 38.1414680480957, -12027.939453125)
			CFrameMon = CFrame.new(-1602.900146484375, 196.0018310546875, -12376.7861328125)
		elseif Lv == 2250 or Lv <= 2275 or SelectMonster == "Baking Staff [Lv. 2250]" then
			Ms = "Baking Staff [Lv. 2250]"
			NameQuest = "CakeQuest2"
			QuestLv = 1
			NameMon = "Baking Staff"
			CFrameQ = CFrame.new(-1927.83056640625, 38.360443115234375, -12842.0908203125)
			CFrameMon = CFrame.new(-2052.93896484375, 68.81322479248047, -12960.2685546875)
		    elseif Lv == 2275 or Lv <= 2300 or SelectMonster == "Head Baker [Lv. 2275]" then
			Ms = "Head Baker [Lv. 2275]"
			NameQuest = "CakeQuest2"
			QuestLv = 2
			NameMon = "Head Baker"
			CFrameQ = CFrame.new(-1927.83056640625, 38.360443115234375, -12842.0908203125)
			CFrameMon = CFrame.new(-2287.00732421875, 103.9866943359375, -12822.05078125)
            elseif Lv == 2300 or Lv <= 2325 or SelectMonster == "Cocoa Warrior [Lv. 2300]" then
			Ms = "Cocoa Warrior [Lv. 2300]"
			NameQuest = "ChocQuest1"
			QuestLv = 1
			NameMon = "Cocoa Warrior"
			CFrameQ = CFrame.new(231.75, 24.9003, -12200.3)
			CFrameMon = CFrame.new(37.12930679321289, 53.66633224487305, -12315.0166015625)
            elseif Lv == 2325 or Lv <= 2350 or SelectMonster == "Chocolate Bar Battler [Lv. 2325]" then
			Ms = "Chocolate Bar Battler [Lv. 2325]"
			NameQuest = "ChocQuest1"
			QuestLv = 2
			NameMon = "Chocolate Bar Battler"
			CFrameQ = CFrame.new(231.75, 24.9003, -12200.3)
			CFrameMon = CFrame.new(627.2858276367188, 75.59115600585938, -12586.1337890625)
            elseif Lv == 2350 or Lv <= 2375 or SelectMonster == "Sweet Thief [Lv. 2350]" then
			Ms = "Sweet Thief [Lv. 2350]"
			NameQuest = "ChocQuest2"
			QuestLv = 1
			NameMon = "Sweet Thief"
			CFrameQ = CFrame.new(151.198, 24.8907, -12774.6)
			CFrameMon = CFrame.new(65.77503967285156, 77.56488037109375, -12636.5615234375)
            elseif Lv == 2375 or Lv <= 2400 or SelectMonster == "Candy Rebel [Lv. 2375]" then
			Ms = "Candy Rebel [Lv. 2375]"
			NameQuest = "ChocQuest2"
			QuestLv = 2
			NameMon = "Candy Rebel"
			CFrameQ = CFrame.new(151.198, 24.8907, -12774.6)
			CFrameMon = CFrame.new(59.33293914794922, 64.40779876708984, -12892.9638671875)
            elseif Lv == 2400 or Lv <= 2425 or SelectMonster == "Candy Pirate [Lv. 2400]" then
			Ms = "Candy Pirate [Lv. 2400]"
			NameQuest = "CandyQuest1"
			QuestLv = 1
			NameMon = "Candy Pirate"
			CFrameQ = CFrame.new(-1148.8192138671875, 22.378950119018555, -14445.7177734375)
			CFrameMon = CFrame.new(-1345.212890625, 139.2557830810547, -14497.9052734375)
            elseif Lv == 2425 or (Lv <= 2450 or Lv >= 2450) or SelectMonster == "Snow Demon [Lv. 2425]" then
			Ms = "Snow Demon [Lv. 2425]"
			NameQuest = "CandyQuest1"
			QuestLv = 2
			NameMon = "Snow Demon"
			CFrameQ = CFrame.new(-1148.8192138671875, 22.378950119018555, -14445.7177734375)
			CFrameMon = CFrame.new(-844.89501953125, 139.89016723632812, -14497.513671875)
		end
	end
end
task.spawn(function() repeat wait(); pcall(function() game:GetService("StarterGui"):SetCore("DevConsoleVisible", false) CheckLevel() end); until game:GetService("Players").LocalPlayer.Data.Level.Value == 2451;end)
function TP(CFgo)
    task.spawn(function()
        pcall(function()
            if game:GetService("Players").LocalPlayer:DistanceFromCharacter(CFgo.Position) <= d_warp then
                game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo
                game:GetService("Players")["LocalPlayer"].Character.Head.CFrame = CFgo
            end
            local ClientTween = game:service("TweenService")
            local T,V = pcall(function()
                local tween = ClientTween:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"],TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/t_sp,Enum.EasingStyle.Linear),{CFrame = CFgo})
                tween:Play()
            end)
            local Y,E = pcall(function()
                local tween = ClientTween:Create(game.Players.LocalPlayer.Character["Head"],TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.Head.Position - CFgo.Position).Magnitude/t_sp,Enum.EasingStyle.Linear),{CFrame = CFgo})
                tween:Play()
            end)
            if not T or not Y then
                return V,E
            end
        end)
    end)
end

spawn(function()
    game:GetService("RunService").Stepped:Connect(function() 
        pcall(function()
            if Toggles.genl1.Value == true or NoClip == true then
                setfflag("HumanoidParallelRemoveNoPhysics", "False")
                setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local BodyV = Instance.new("BodyVelocity")
                    BodyV.Name = "BodyClip"
                    BodyV.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                    BodyV.MaxForce = Vector3.new(10000000, 10000000, 10000000)
                    BodyV.Velocity = Vector3.new(0, 0, 0)
                end
                if not game:GetService("Workspace"):FindFirstChild("Part") then
                    local V = Instance.new("Part")
                    V.Name = "Part"
                    V.Parent = game:GetService("Workspace")
                    V.Anchored = true
                    V.Transparency = 1
                    V.Size = Vector3.new(15, 2, 15)
                elseif game:GetService("Workspace"):FindFirstChild("Part") then
                    game:GetService("Workspace")["Part"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -0.001, 0)
                end
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false    
                    end
                end
            else
                if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                end
                if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Part") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Part"):Destroy()
                end
            end
        end)
    end)
end)

spawn(function()
    while task.wait() do
        pcall(function()
            for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                if Toggles.genl1.Value then
                    if v.Name == Ms and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        if (v.HumanoidRootPart.Position - CFarm.Position).Magnitude <= 350 then
                            pcall(function()
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.CFrame = CFarm
                            end)
                        end
                    end
                end
            end
        end)
    end
end)

while wait(.1) do pcall(function() if setscriptable then setscriptable(game.Players.LocalPlayer, "SimulationRadius", true) end if sethiddenproperty then sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge) end if sethiddenproperty then sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", 9e26) end end) end
while wait(.1) do pcall(function() if Toggles.a_superhuman.Value == true then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman") end if Toggles.a_ElectriClaw.Value == true then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw") end if Toggles.a_dragon.Value == true then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon") end if Toggles.a_deathstep.Value == true then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep") end if Toggles.a_sharkmankarate.Value == true then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate") end if Toggles.a_godhuman.Value == true then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman") end end) end
