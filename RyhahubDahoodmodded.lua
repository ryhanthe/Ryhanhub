
	getgenv().SecureMode = true
	local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
	local Window = Rayfield:CreateWindow({
		Name = "Ryhan Hub",
		LoadingTitle = "Ryhan Interface Suite",
		LoadingSubtitle = "by Ryhan",
		ConfigurationSaving = {
			Enabled = true,
			FolderName = nil, 
			FileName = "Ryhan Hub"
		},
			Discord = {
				Enabled = false,
				Invite = "Ryhan",
				RememberJoins = true 
			},
		KeySystem = true, 
		KeySettings = {
			Title = "Ryhan Hub",
			Subtitle = "Key System",
			Note = "Join the discord (discord.io/Ryhan)",
			FileName = "RyhanKey",
			SaveKey = true,
			GrabKeyFromSite = false, 
			Key = "tiktok"
		}
	})
	-- Tabs
	local MainTab = Window:CreateTab("Main", 4483362458)
	local LocalTab = Window:CreateTab("Player", 4483362458)  
	local MsicTab = Window:CreateTab("Msic", 4483362458) 
	local CreditTab = Window:CreateTab("Credit", 4483362458)
	------------------------------------------------------------
	
	
	local Section = CreditTab:CreateSection("Credit-->")
	local Label = CreditTab:CreateLabel("Credit to Ryhan/DIOOO#9999")
	local Label = MainTab:CreateLabel("Welcome to Ryhan Hub")
	local Label = MainTab:CreateLabel("PRESS IT ONCE dont spam it")
	local Button = LocalTab:CreateButton({
		Name = "Walkspeed |C|",
		Callback = function()
			superhuman = false
    plr = game.Players.LocalPlayer
    mouse = plr:GetMouse()
    mouse.KeyDown:connect(function(key)
        if key == "c" and superhuman == false then
            superhuman = true
            game.Players.LocalPlayer.Character.Humanoid.Name = "Hum"
            game.Players.LocalPlayer.Character.Hum.WalkSpeed = 120
        elseif key == "c" and superhuman == true then
            superhuman = false
            game.Players.LocalPlayer.Character.Hum.WalkSpeed = 16
            game.Players.LocalPlayer.Character.Hum.Name = "Humanoid"
        end
    end)
		end,
	})
	local Button = LocalTab:CreateButton({
		Name = "INF JUMP",
		Callback = function()
			local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
		end,
	})
	local Button = MsicTab:CreateButton({
		Name = "Lock|q|",
		Callback = function()
			
local CC = game:GetService'Workspace'.CurrentCamera
local Plr
local enabled = false
local accomidationfactor = 0.129145
local mouse = game.Players.LocalPlayer:GetMouse()
local placemarker = Instance.new("Part", game.Workspace)
local guimain = Instance.new("Folder", game.CoreGui)

function makemarker(Parent, Adornee, Color, Size, Size2)
    local e = Instance.new("BillboardGui", Parent)
    e.Name = "PP"
    e.Adornee = Adornee
    e.Size = UDim2.new(Size, Size2, Size, Size2)
    e.AlwaysOnTop = true
    local a = Instance.new("Frame", e)
    a.Size = UDim2.new(1, 0, 1, 0)
    a.BackgroundTransparency = 0.4
    a.BackgroundColor3 = Color
    local g = Instance.new("UICorner", a)
    g.CornerRadius = UDim.new(2, 6)
    return(e)
end

local data = game.Players:GetPlayers()
function noob(player)
    local character
    repeat wait() until player.Character
    local handler = makemarker(guimain, player.Character:WaitForChild("LowerTorso"), Color3.fromRGB(10, 78, 146), 0.0, 0)
    handler.Name = player.Name
    player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild("LowerTorso") end)
    
	local TextLabel = Instance.new("TextLabel", handler)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Position = UDim2.new(0, 0, 0, -50)
	TextLabel.Size = UDim2.new(0, 100, 0, 100)
	TextLabel.Font = Enum.Font.SourceSansSemibold
	TextLabel.TextSize = 14
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.TextStrokeTransparency = 0
	TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
	TextLabel.Text = 'Name: '..player.Name
	TextLabel.ZIndex = 10
	
	spawn(function()
        while wait() do
            if player.Character then
                TextLabel.Text = player.Name.." | Bounty: "..tostring(player:WaitForChild("leaderstats").Wanted.Value).." | "..tostring(math.floor(player.Character:WaitForChild("Humanoid").Health))
            end
        end
	end)
end

for i = 1, #data do
    if data[i] ~= game.Players.LocalPlayer then
        noob(data[i])
    end
end

game.Players.PlayerAdded:connect(function(Player)
    noob(Player)
end)

game.Players.PlayerRemoving:Connect(function()
    guimain[player.Name]:Destroy()
end)

spawn(function()
    placemarker.Anchored = true
    placemarker.CanCollide = false
    placemarker.Size = Vector3.new(0.1, 0.1, 0.1)
    placemarker.Transparency = 10
    makemarker(placemarker, placemarker, Color3.fromRGB(0, 17, 255), 0.55, 0)
end)    

mouse.KeyDown:Connect(function(k)
    if k ~= "q" then return end
    if enabled then
        enabled = false
       guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    else
        enabled = true 
        Plr = getClosestPlayerToCursor()
        guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(126, 105, 248)
    end    
end)

function getClosestPlayerToCursor()
    local closestPlayer
    local shortestDistance = math.huge

    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("Head") then
            local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
            if magnitude < shortestDistance then
                closestPlayer = v
                shortestDistance = magnitude
            end
        end
    end
   return closestPlayer
end

	game:GetService"RunService".Stepped:connect(function()
		if enabled and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") then
			placemarker.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor))
		else
			placemarker.CFrame = CFrame.new(0, 9999, 0)
		end
	end)

	local mt = getrawmetatable(game)
	local old = mt.__namecall
	setreadonly(mt, false)
	mt.__namecall = newcclosure(function(...)
		local args = {...}
		if enabled and getnamecallmethod() == "FireServer" and args[2] == "MousePos" then
			args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor)
			return old(unpack(args))
		end
		return old(...)
	end)
		end,
	})
	local Slider = MainTab:CreateSlider({
		Name = "FOV Slider (120)MAX",
		Range = {0, 120},
		Increment = 10,
		Suffix = "FOV",
		CurrentValue = 10,
		Flag = "FOVSlider", 
		Callback = function(Value)
		workspace.CurrentCamera.FieldOfView = Value
		end,
	})
	local Section = MsicTab:CreateSection("Places to tp PRESS ONCE ")
	local Button = MsicTab:CreateButton({
		Name = "Gym",
		Callback = function()
			local teleport_table = {
				location1 = Vector3.new(-49.633705139160156, 334.3477783203125, -427.8302001953125), 
				
			}
			
			local tween_s = game:GetService('TweenService')
			local tweeninfo = TweenInfo.new(8,Enum.EasingStyle.Linear)
			
			local lp = game.Players.LocalPlayer
			
			function bypass_teleport(v)
				if lp.Character and 
				lp.Character:FindFirstChild('HumanoidRootPart') then
					local cf = CFrame.new(v)
					local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
					a:Play()
					 a.Completed:Wait()
					 print('Teleporting Done!')
				end
			end
			
			bypass_teleport(teleport_table.location1)
		end,
	})
	local Button = MsicTab:CreateButton({
		Name = "Food next to bank",
		Callback = function()
			local teleport_table = {
				location1 = Vector3.new(-295.5242614746094, 336.0756530761719, -89.83494567871094), 
				
			}
			
			local tween_s = game:GetService('TweenService')
			local tweeninfo = TweenInfo.new(6,Enum.EasingStyle.Linear)
			
			local lp = game.Players.LocalPlayer
			
			function bypass_teleport(v)
				if lp.Character and 
				lp.Character:FindFirstChild('HumanoidRootPart') then
					local cf = CFrame.new(v)
					local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
					a:Play()
					 a.Completed:Wait()
					 print('Teleporting Done!')
				end
			end
			
			bypass_teleport(teleport_table.location1)
		end,
	})
	local Button = MsicTab:CreateButton({
		Name = "Gun Shop",
		Callback = function()
			local teleport_table = {
				location1 = Vector3.new(-562.9170532226562, 317.2121887207031, -534.3340454101562), 
				
			}
			
			local tween_s = game:GetService('TweenService')
			local tweeninfo = TweenInfo.new(6,Enum.EasingStyle.Linear)
			
			local lp = game.Players.LocalPlayer
			
			function bypass_teleport(v)
				if lp.Character and 
				lp.Character:FindFirstChild('HumanoidRootPart') then
					local cf = CFrame.new(v)
					local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
					a:Play()
					 a.Completed:Wait()
					 print('Teleporting Done!')
				end
			end
			
			bypass_teleport(teleport_table.location1)
		end,
	})
	local Button = MsicTab:CreateButton({
		Name = "Stomp Effect Place",
		Callback = function()
			local teleport_table = {
				location1 = Vector3.new(-225.57505798339844, 333.5021057128906, -204.73226928710938), 
				
			}
			
			local tween_s = game:GetService('TweenService')
			local tweeninfo = TweenInfo.new(5,Enum.EasingStyle.Linear)
			
			local lp = game.Players.LocalPlayer
			
			function bypass_teleport(v)
				if lp.Character and 
				lp.Character:FindFirstChild('HumanoidRootPart') then
					local cf = CFrame.new(v)
					local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
					a:Play()
					 a.Completed:Wait()
					 print('Teleporting Done!')
				end
			end
			
			bypass_teleport(teleport_table.location1)
		end,
	})
	local Button = MsicTab:CreateButton({
		Name = "Safe spot",
		Callback = function()
			local teleport_table = {
				location1 = Vector3.new(216.378662109375, 378.8975524902344, -191.4920654296875), 
				
			}
			
			local tween_s = game:GetService('TweenService')
			local tweeninfo = TweenInfo.new(5,Enum.EasingStyle.Linear)
			
			local lp = game.Players.LocalPlayer
			
			function bypass_teleport(v)
				if lp.Character and 
				lp.Character:FindFirstChild('HumanoidRootPart') then
					local cf = CFrame.new(v)
					local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
					a:Play()
					 a.Completed:Wait()
					 print('Teleporting Done!')
				end
			end
			
			bypass_teleport(teleport_table.location1)
		end,
	})
	local Button = MsicTab:CreateButton({
		Name = "Da Casino",
		Callback = function()
			local teleport_table = {
				location1 = Vector3.new(-836.4188842773438, 330.65435791015625, 88.80424499511719), 
				
			}
			
			local tween_s = game:GetService('TweenService')
			local tweeninfo = TweenInfo.new(5,Enum.EasingStyle.Linear)
			
			local lp = game.Players.LocalPlayer
			
			function bypass_teleport(v)
				if lp.Character and 
				lp.Character:FindFirstChild('HumanoidRootPart') then
					local cf = CFrame.new(v)
					local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
					a:Play()
					 a.Completed:Wait()
					 print('Teleporting Done!')
				end
			end
			
			bypass_teleport(teleport_table.location1)
		end,
	})
	local Section = MsicTab:CreateSection("Protection idk")
	local Button = MsicTab:CreateButton({
		Name = "Full Armor Place",
		Callback = function()
			local teleport_table = {
				location1 = Vector3.new(-1229.8541259765625, 336.6839294433594, -515.9398803710938), 
				
			}
			
			local tween_s = game:GetService('TweenService')
			local tweeninfo = TweenInfo.new(5,Enum.EasingStyle.Linear)
			
			local lp = game.Players.LocalPlayer
			
			function bypass_teleport(v)
				if lp.Character and 
				lp.Character:FindFirstChild('HumanoidRootPart') then
					local cf = CFrame.new(v)
					local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
					a:Play()
					 a.Completed:Wait()
					 print('Teleporting Done!')
				end
			end
			
			bypass_teleport(teleport_table.location1)
		end,
	})

	local Section = MsicTab:CreateSection("Main Guns")
	local Button = MsicTab:CreateButton({
		Name = "Revolver",
		Callback = function()
			local teleport_table = {
				location1 = Vector3.new(-615.3970336914062, 330.64752197265625, 86.21586608886719), 
				
			}
			
			local tween_s = game:GetService('TweenService')
			local tweeninfo = TweenInfo.new(5,Enum.EasingStyle.Linear)
			
			local lp = game.Players.LocalPlayer
			
			function bypass_teleport(v)
				if lp.Character and 
				lp.Character:FindFirstChild('HumanoidRootPart') then
					local cf = CFrame.new(v)
					local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
					a:Play()
					 a.Completed:Wait()
					 print('Teleporting Done!')
				end
			end
			
			bypass_teleport(teleport_table.location1)
		end,
	})
	local Button = MsicTab:CreateButton({
		Name = "Dubble Barrel Shot gun",
		Callback = function()
			local teleport_table = {
				location1 = Vector3.new(-1013.443115234375, 331.2119445800781, -51.392486572265625), 
				
			}
			
			local tween_s = game:GetService('TweenService')
			local tweeninfo = TweenInfo.new(5,Enum.EasingStyle.Linear)
			
			local lp = game.Players.LocalPlayer
			
			function bypass_teleport(v)
				if lp.Character and 
				lp.Character:FindFirstChild('HumanoidRootPart') then
					local cf = CFrame.new(v)
					local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
					a:Play()
					 a.Completed:Wait()
					 print('Teleporting Done!')
				end
			end
			
			bypass_teleport(teleport_table.location1)
		end,
	})
	local Section = MainTab:CreateSection("ESP its auto update")
	local Button = MainTab:CreateButton({
		Name = "Esp",
		Callback = function()
			local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Highlight = Instance.new("Highlight")
Highlight.Name = "Highlight"
function ApplyToCurrentPlayers()
    for i,player in pairs(Players:GetChildren()) do 
        repeat wait() until player.Character
        if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local HighlightClone = Highlight:Clone()
            HighlightClone.Adornee = player.Character
            HighlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
            HighlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            HighlightClone.Name = "Highlight"
        end
    end
end    
RunService.Heartbeat:Connect(function()
    ApplyToCurrentPlayers()
end)
		end,
	})
	local Section = MainTab:CreateSection("Boost ur game")
	local Button = MainTab:CreateButton({
		Name = "Fast Mode",
		Callback = function()
			

if not game:IsLoaded() then
	game.Loaded:Wait()
	wait(10)
end

local function check(inst)
	local class = inst.ClassName
	if class == "Decal" or class == "Texture" then 
		inst.Texture = ""
	elseif class == "SpecialMesh" then 
		inst.TextureId = ""
	elseif class == "ParticleEmitter" then
		inst.Texture = ""
		inst.Rate = 0
	elseif inst:IsA("BasePart") then 
		inst.Material = "SmoothPlastic"
		inst.Reflectance = 0
		inst.CastShadow = false
		if class == "MeshPart" then 
			inst.TextureID = ""
			inst.CollisionFidelity = "Hull"
		elseif class == "UnionOperation" then
			inst.CollisionFidelity = "Hull"
		end
		if inst.Anchored and inst.Size.Magnitude < 5 then
			inst.Transparency = 1
			inst.CanCollide = false
			--inst:Destroy()
		end
	end
end

local function removeDups(children)
	if #children > 99 then
		local myname = tostring(game:GetService("Players").LocalPlayer)
		local fake = {Name = myname}
		for i=1,#children do
			local name1 = children[i].Name
			if name1 ~= myname and name1 ~= "Terrain" then
				local moved = false
				for j=i+1,#children do
					if children[j].Name == name1 then
						moved = true
						children[j].Parent = workspace.Terrain
						children[j] = fake
					end
				end
				if moved then 
					children[i].Parent = workspace.Terrain
				end
			end
		end
	end
end

settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
UserSettings():GetService("UserGameSettings").SavedQualityLevel = Enum.SavedQualitySetting.QualityLevel1
settings().Rendering.EagerBulkExecution = false
settings().Network.IncomingReplicationLag = -1000

workspace:WaitForChild("Terrain")
workspace.Terrain.WaterReflectance = 0
workspace.Terrain.WaterWaveSize = 0
workspace.Terrain.WaterWaveSpeed = 0
workspace.Terrain.WaterTransparency = 0

game:GetService("Lighting").GlobalShadows = false

workspace.Terrain:Clear()
local plates = {}
if not workspace:FindFirstChild("Baseplate") then
    for x=-1,1,2 do
        for z=-1,1,2 do
            local part = Instance.new("Part")
            part.Size = Vector3.new(2048,5,2048)
            part.CFrame = CFrame.new(1024*x,-5,1024*z)
            part.Anchored=true
            part.Material="SmoothPlastic"
            part.Color = Color3.new(0.36,0.6,0.3)
            part.Name = "Baseplate"
            part.Parent= workspace
			plates[#plates+1]= part
        end
    end
end
local UIS = game:GetService("UserInputService")
UIS.InputBegan:Connect(function(input,gpe)
    if gpe==false and UIS:IsKeyDown("LeftControl") then 
        if input.KeyCode==Enum.KeyCode.RightBracket then 
            for _,part in ipairs(plates) do
                part.CFrame=part.CFrame+Vector3.new(0,2.5,0)
            end
        elseif input.KeyCode==Enum.KeyCode.LeftBracket then 
            for _,part in ipairs(plates) do 
                part.CFrame=part.CFrame-Vector3.new(0,2.5,0)
            end
        end
    end
end)
wait(0.3)

while true do
	for _,v in ipairs(game:GetService("Lighting"):GetDescendants()) do
		if v:IsA("PostEffect") then
			v.Enabled = false
		end
	end
	local des = workspace:GetDescendants()
	for i=1,#des do
		check(des[i])
	end
	wait(0.3)

	removeDups(workspace:GetChildren())

	wait(600)
end
		end,
	})
	local Section = LocalTab:CreateSection("if you die btools are gone")
	local Button = LocalTab:CreateButton({
		Name = "btools",
		Callback = function()
			Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 4

		end,
	})


Rayfield:LoadConfiguration()
