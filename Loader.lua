
local Instances = {
	Homebrew = Instance.new("ScreenGui"),
	Sound = Instance.new("Sound"),
	Frame = Instance.new("Frame"),
	UICorner = Instance.new("UICorner"),
	ImageLabel = Instance.new("ImageLabel"),
	UICorner_2 = Instance.new("UICorner"),
	Frame_2 = Instance.new("Frame"),
	UICorner_3 = Instance.new("UICorner"),
	Frame_3 = Instance.new("Frame"),
	UICorner_4 = Instance.new("UICorner"),
}

Instances.Homebrew.Name = "Homebrew"
Instances.Homebrew.Parent = game:GetService("CoreGui")

Instances.Sound.Name = "Sound"
Instances.Sound.RollOffMode = Enum.RollOffMode.InverseTapered
Instances.Sound.SoundId = "rbxassetid://5072915476"
Instances.Sound.Parent = Instances.Homebrew
Instances.Sound:Play()

Instances.Frame.Name = "Frame"
Instances.Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.Frame.ZIndex = 3
Instances.Frame.Size = UDim2.new(0, 275, 0, 273)
Instances.Frame.BorderColor3 = Color3.new(0, 0, 0)
Instances.Frame.BorderSizePixel = 0
Instances.Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.Frame.BackgroundColor3 = Color3.fromRGB(24,24,24)
Instances.Frame.Parent = Instances.Homebrew
Instances.Frame.BackgroundTransparency = 1

Instances.UICorner.Name = "UICorner"
Instances.UICorner.CornerRadius = UDim.new(0, 9999999)
Instances.UICorner.Parent = Instances.Frame

Instances.ImageLabel.Name = "ImageLabel"
Instances.ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.ImageLabel.ZIndex = 3
Instances.ImageLabel.Size = UDim2.new(0, 189, 0, 198)
Instances.ImageLabel.BorderColor3 = Color3.new(0, 0, 0)
Instances.ImageLabel.BorderSizePixel = 0
Instances.ImageLabel.BackgroundTransparency = 1
Instances.ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.ImageLabel.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.ImageLabel.Image = "http://www.roblox.com/asset/?id=125507007499350"
Instances.ImageLabel.Parent = Instances.Frame
Instances.ImageLabel.ImageTransparency = 1

Instances.UICorner_2.Name = "UICorner"
Instances.UICorner_2.CornerRadius = UDim.new(0, 9999999)
Instances.UICorner_2.Parent = Instances.ImageLabel

Instances.Frame_2.Name = "Frame"
Instances.Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.Frame_2.ZIndex = 2
Instances.Frame_2.Size = UDim2.new(0, 277, 0, 275)
Instances.Frame_2.BorderColor3 = Color3.new(0, 0, 0)
Instances.Frame_2.BorderSizePixel = 0
Instances.Frame_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.Frame_2.BackgroundColor3 = Color3.new(1, 1, 1)
Instances.Frame_2.Parent = Instances.Homebrew
Instances.Frame_2.BackgroundTransparency = 1

Instances.UICorner_3.Name = "UICorner"
Instances.UICorner_3.CornerRadius = UDim.new(0, 9999999)
Instances.UICorner_3.Parent = Instances.Frame_2

Instances.Frame_3.Name = "Frame"
Instances.Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.Frame_3.Size = UDim2.new(0, 279, 0, 277)
Instances.Frame_3.BorderColor3 = Color3.new(0, 0, 0)
Instances.Frame_3.BorderSizePixel = 0
Instances.Frame_3.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.Frame_3.BackgroundColor3 = Color3.fromRGB(24,24,24)
Instances.Frame_3.Parent = Instances.Homebrew
Instances.Frame_3.BackgroundTransparency = 1

Instances.UICorner_4.Name = "UICorner"
Instances.UICorner_4.CornerRadius = UDim.new(0, 9999999)
Instances.UICorner_4.Parent = Instances.Frame_3

coroutine.wrap(function()
	local script = Instance.new("LocalScript", Instances.Frame)
	local circle = script.Parent
	local radius = (circle.AbsoluteSize.X / 2) - 10
	local text = "HOMEBREWHOMEBREWHOMEBREW"
	local totalChars = #text
	local angleStep = 360 / totalChars
	
	for i = 1, totalChars do
		local angle = math.rad(i * angleStep)
		local x = math.cos(angle) * radius
		local y = math.sin(angle) * radius
	
		local shadow = Instance.new("TextLabel")
		shadow.Text = text:sub(i, i)
		shadow.Parent = circle
		shadow.Size = UDim2.new(0, 16, 0, 16)
		shadow.BackgroundTransparency = 1
		shadow.TextTransparency = 1
		shadow.TextColor3 = Color3.new(0, 0, 0)
		shadow.Font = Enum.Font.Ubuntu
		shadow.TextScaled = true
		shadow.Position = UDim2.new(0.5, x + 1, 0.5, y + 1)
		shadow.AnchorPoint = Vector2.new(0.5, 0.5)
		shadow.Rotation = math.deg(angle) + 90
        shadow.ZIndex = 4
	
		local label = Instance.new("TextLabel")
		label.Text = text:sub(i, i)
		label.Parent = circle
		label.Size = UDim2.new(0, 14, 0, 14)
		label.BackgroundTransparency = 1
		label.TextTransparency = 1
		label.TextColor3 = Color3.new(1, 1, 1)
		label.Font = Enum.Font.Ubuntu
		label.TextScaled = true
		label.Position = UDim2.new(0.5, x, 0.5, y)
		label.AnchorPoint = Vector2.new(0.5, 0.5)
		label.Rotation = math.deg(angle) + 90
        label.ZIndex = 4
	end
	
end)()

coroutine.wrap(function()
	local script = Instance.new("LocalScript", Instances.Homebrew)
	local TweenService = game:GetService("TweenService")
	local Objects = {}
	
	for _, uiobject in pairs(script.Parent:GetDescendants()) do
		if uiobject:IsA("GuiObject") then
			table.insert(Objects, uiobject)
		end
	end
	
	local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out) -- 0.5 seconds duration
	
	for _, object in pairs(Objects) do
		local goal = {}
		if object:IsA("ImageLabel") then
			goal.ImageTransparency = 0
		elseif object:IsA("TextLabel") then
			goal.TextTransparency = .7
		elseif object:IsA("Frame") then
			goal.BackgroundTransparency = 0
		end
	
		local tween = TweenService:Create(object, tweenInfo, goal)
		tween:Play()
	end
end)()
wait(3)

--[ Loader ]--
pcall(task.spawn(function() -- BOOM SHAKALAKA!!
    if game.GameId == 4096039463 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Brew-Softworks/Homebrew/refs/heads/main/Freedom%20War/osrc.lua"))()
    end
end))

coroutine.wrap(function()
	local script = Instance.new("LocalScript", Instances.Homebrew)
	local TweenService = game:GetService("TweenService")
	local Objects = {}
	
	for _, uiobject in pairs(script.Parent:GetDescendants()) do
		if uiobject:IsA("GuiObject") then
			table.insert(Objects, uiobject)
		end
	end
	
	local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out) -- 0.5 seconds duration
	
	for _, object in pairs(Objects) do
		local goal = {}
		if object:IsA("ImageLabel") then
			goal.ImageTransparency = 1
		elseif object:IsA("TextLabel") then
			goal.TextTransparency = 1
		elseif object:IsA("Frame") then
			goal.BackgroundTransparency = 1
		end
	
		local tween = TweenService:Create(object, tweenInfo, goal)
		tween:Play()
	end
end)()
wait(3)
Instances.Homebrew:Destroy()
