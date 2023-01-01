if game.PlaceId == 286090429 then 
	getgenv().SecureMode = true
	local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()


	local Window = Rayfield:CreateWindow({
		Name = "RyhanHub",
		LoadingTitle = "RyhanHub Interface Suite",
		LoadingSubtitle = "by Ryhan",
		ConfigurationSaving = {
			Enabled = true,
			FolderName = nil, 
			FileName = "Ryhan Hub"
		},
			Discord = {
				Enabled = false,
				Invite = "thejakepapao",
				RememberJoins = true 
			},
		KeySystem = true,
		KeySettings = {
			Title = "Ryhan Hub",
			Subtitle = "Key System",
			Note = "Join the discord (discord.gg/thejakepapao)",
			FileName = "RyhanKey",
			SaveKey = true,
			GrabKeyFromSite = false,
			Key = "tiktok"
		}
	})


	local MainTab = Window:CreateTab("Main", 4483362458)
	local localTab = Window:CreateTab("Misc", 4483362458) 
	local CreditTab = Window:CreateTab("Credit", 4483362458) 
	local Label = CreditTab:CreateLabel("Made by Ryhan/DIOOO#9999")
	local Label = MainTab:CreateLabel("Press e to lock and UNLOCK e")
	local Label = MainTab:CreateLabel("Esp is auto update")
	local Label = MainTab:CreateLabel("just use aimlock for to get off hard guns")

	local Section = localTab:CreateSection("Press e to lock press e to unlock")
	local Button = localTab:CreateButton({
		Name = "Aimlock",
		Callback = function()
			local plrs = game:GetService("Players")
local TeamBased = true ; local teambasedswitch = "o"
local presskeytoaim = true; local aimkey = "e"
local raycast = false

local espupdatetime = 5; autoesp = false

local lockaim = true; local lockangle = 5

local Gui = Instance.new("ScreenGui")
local Move = Instance.new("Frame")
local Main = Instance.new("Frame")

local st1 = Instance.new("TextLabel")
local st1_2 = Instance.new("TextLabel")
local st1_3 = Instance.new("TextLabel")
local Name = Instance.new("TextLabel")
Gui.Name = "Gui"
Gui.Parent = plrs.LocalPlayer:WaitForChild("PlayerGui")






-- Scripts:
local plrsforaim = {}

local lplr = game:GetService("Players").LocalPlayer
Move.Draggable = true
Gui.ResetOnSpawn = false
Gui.Name = "Chat"
Gui.DisplayOrder = 999

	Gui.Parent = plrs.LocalPlayer.PlayerGui


f = {}
local espforlder

f.addesp = function()
	if espforlder then
	else
		espforlder = Instance.new("Folder")
		espforlder.Parent = game.Workspace.CurrentCamera
	end
	for i, v in pairs(espforlder:GetChildren()) do
		v:Destroy()
	end
	for _, plr in pairs(plrs:GetChildren()) do
		if plr.Character and plr.Character.Humanoid.Health > 0 and plr.Name ~= lplr.Name then
			if TeamBased == true then
				if plr.Team.Name ~= plrs.LocalPlayer.Team.Name  then
					local e = espforlder:FindFirstChild(plr.Name)
					if not e then
						local bill = Instance.new("BillboardGui", espforlder)
						bill.Name = plr.Name
						bill.AlwaysOnTop = true
						bill.Size = UDim2.new(1,0,1,0)
						bill.Adornee = plr.Character.Head
						local Frame = Instance.new('Frame',bill)
						Frame.Active = true    
						Frame.BackgroundColor3 = Color3.new(0.541176, 0.168627, 0.886275)
						Frame.BackgroundTransparency = 0
						Frame.BorderSizePixel = 0
						Frame.AnchorPoint = Vector2.new(.5, .5)
						Frame.Position = UDim2.new (0.5,0,0.5,0)
						Frame.Size = UDim2.new (1,0,1,0)
						Frame.Rotation = 0
						plr.Character.Humanoid.Died:Connect(function()
							bill:Destroy()
						end)
					end
				end
			else
				local e = espforlder:FindFirstChild(plr.Name)
				if not e then
					--print("Added esp")
					local bill = Instance.new("BillboardGui", espforlder)
					bill.Name = plr.Name
					bill.AlwaysOnTop = true
					bill.Size = UDim2.new(1,0,1,0)
					bill.Adornee = plr.Character.Head
					local Frame = Instance.new('Frame',bill)
					Frame.Active = true
					Frame.BackgroundColor3 = Color3.new(0.541176, 0.168627, 0.886275)
					Frame.BackgroundTransparency = 0
					Frame.BorderSizePixel = 0
					Frame.AnchorPoint = Vector2.new(.5, .5)
					Frame.Position = UDim2.new (0.5,0,0.5,0)
					Frame.Size = UDim2.new (1,0,1,0)
					Frame.Rotation = 0
					plr.Character.Humanoid.Died:Connect(function()
						bill:Destroy()
					end)
				end
			end
			
			
		end
	end
end
local cam = game.Workspace.CurrentCamera

local mouse = lplr:GetMouse()
local switch = false
local key = "k"
local aimatpart = nil
mouse.KeyDown:Connect(function(a)
	if a == "t" then
		print("worked1")
		
	elseif a == "u" then
		if raycast == true then
			raycast = false
		else
			raycast = true
		end
	elseif a == "l" then
		if autoesp == false then
			autoesp = true
		else
			autoesp = false
		end
	end
	if a == "j" then
		if mouse.Target then
			mouse.Target:Destroy()
		end
	end
	if a == key then
		if switch == false then
			switch = true
		else
			switch = false
			if aimatpart ~= nil then
				aimatpart = nil
			end
		end
	elseif a == teambasedswitch then
		if TeamBased == true then
			TeamBased = false
			teambasedstatus.Text = tostring(TeamBased)
		else
			TeamBased = true
			teambasedstatus.Text = tostring(TeamBased)
		end
	elseif a == aimkey then
		if not aimatpart then
			local maxangle = math.rad(20)
			for i, plr in pairs(plrs:GetChildren()) do
				if plr.Name ~= lplr.Name and plr.Character and plr.Character.Head and plr.Character.Humanoid and plr.Character.Humanoid.Health > 1 then
					if TeamBased == true then
						if plr.Team.Name ~= lplr.Team.Name then
							local an = checkfov(plr.Character.Head)
							if an < maxangle then
								maxangle = an
								aimatpart = plr.Character.Head
							end
						end
					else
						local an = checkfov(plr.Character.Head)
							if an < maxangle then
								maxangle = an
								aimatpart = plr.Character.Head
							end
							print(plr)
					end
					plr.Character.Humanoid.Died:Connect(function()
						if aimatpart.Parent == plr.Character or aimatpart == nil then
							aimatpart = nil
						end
					end)
				end
			end
		else
			aimatpart = nil
		end
	end
end)

function getfovxyz (p0, p1, deg)
	local x1, y1, z1 = p0:ToOrientation()
	local cf = CFrame.new(p0.p, p1.p)
	local x2, y2, z2 = cf:ToOrientation()
	if deg then
	else
		return Vector3.new((x1-x2), (y1-y2), (z1-z2))
	end
end

function getaimbotplrs()
	plrsforaim = {}
	for i, plr in pairs(plrs:GetChildren()) do
		if plr.Character and plr.Character.Humanoid and plr.Character.Humanoid.Health > 0 and plr.Name ~= lplr.Name and plr.Character.Head then
			
			if TeamBased == true then
				if plr.Team.Name ~= lplr.Team.Name then
					local cf = CFrame.new(game.Workspace.CurrentCamera.CFrame.p, plr.Character.Head.CFrame.p)
					local r = Ray.new(cf, cf.LookVector * 10000)
					local ign = {}
					for i, v in pairs(plrs.LocalPlayer.Character:GetChildren()) do
						if v:IsA("BasePart") then
							table.insert(ign , v)
						end
					end
					local obj = game.Workspace:FindPartOnRayWithIgnoreList(r, ign)
					if obj.Parent == plr.Character and obj.Parent ~= lplr.Character then
						table.insert(plrsforaim, obj)
					end
				end
			else
				local cf = CFrame.new(game.Workspace.CurrentCamera.CFrame.p, plr.Character.Head.CFrame.p)
				local r = Ray.new(cf, cf.LookVector * 10000)
				local ign = {}
				for i, v in pairs(plrs.LocalPlayer.Character:GetChildren()) do
					if v:IsA("BasePart") then
						table.insert(ign , v)
					end
				end
				local obj = game.Workspace:FindPartOnRayWithIgnoreList(r, ign)
				if obj.Parent == plr.Character and obj.Parent ~= lplr.Character then
					table.insert(plrsforaim, obj)
				end
			end
			
			
		end
	end
end

function aimat(part)
	cam.CFrame = CFrame.new(cam.CFrame.p, part.CFrame.p)
end
function checkfov (part)
	local fov = getfovxyz(game.Workspace.CurrentCamera.CFrame, part.CFrame)
	local angle = math.abs(fov.X) + math.abs(fov.Y)
	return angle
end

game:GetService("RunService").RenderStepped:Connect(function()
	if aimatpart then
		aimat(aimatpart)
		if aimatpart.Parent == plrs.LocalPlayer.Character then
			aimatpart = nil
		end
	end
	
	

		if raycast == true and switch == false and not aimatpart then
			getaimbotplrs()
			aimatpart = nil
			local maxangle = 999
			for i, v in ipairs(plrsforaim) do
				if v.Parent ~= lplr.Character then
					local an = checkfov(v)
					if an < maxangle and v ~= lplr.Character.Head then
						maxangle = an
						aimatpart = v
						print(v:GetFullName())
						v.Parent.Humanoid.Died:connect(function()
							aimatpart = nil
						end)
					end
				end
			end
		
	end
end)
delay(0, function()
	while wait(espupdatetime) do
		if autoesp == true then
			pcall(function()
			f.addesp()
			end)
		end
	end
end)
		end,
	})
	local Section = localTab:CreateSection("ESP")
	local Button = localTab:CreateButton({
		Name = "ESP",
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

	local Section = MainTab:CreateSection("Inf Jumps frr")
	local Button = MainTab:CreateButton({
		Name = "Inf jump",
		Callback = function()
			local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';
 
_G.JumpHeight = 50;
 
function Action(Object, Function) if Object ~= nil then Function(Object); end end
 
UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
		end,
	})
	local Section = localTab:CreateSection("press e to noclip")
	local Button = localTab:CreateButton({
		Name = "No clip |e|",
		Callback = function()
			local StealthMode = true 

			local Indicator
			
			if not StealthMode then
				local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
				Indicator = Instance.new("TextLabel", ScreenGui)
				Indicator.AnchorPoint = Vector2.new(0, 1)
				Indicator.Position = UDim2.new(0, 0, 1, 0)
				Indicator.Size = UDim2.new(0, 200, 0, 50)
				Indicator.BackgroundTransparency = 1
				Indicator.TextScaled = true
				Indicator.TextStrokeTransparency = 0
				Indicator.TextColor3 = Color3.new(0, 0, 0)
				Indicator.TextStrokeColor3 = Color3.new(1, 1, 1)
				Indicator.Text = "Noclip: Enabled"
			end
			
			local noclip = false
			local player = game.Players.LocalPlayer
			local character = player.Character or player.CharacterAdded:Wait()
			
			local mouse = player:GetMouse()
			
			mouse.KeyDown:Connect(function(key)
				if key == "e" then
					noclip = not noclip
			
					if not StealthMode then
						Indicator.Text = "Noclip: " .. (noclip and "Enabled" or "Disabled")
					end
				end
			end)
			
			while true do
				player = game.Players.LocalPlayer
				character = player.Character
			
				if noclip then
					for _, v in pairs(character:GetDescendants()) do
						pcall(function()
							if v:IsA("BasePart") then
								v.CanCollide = false
							end
						end)
					end
				end
			
				game:GetService("RunService").Stepped:wait()
			end
		end,
	})






end
Rayfield:LoadConfiguration()
