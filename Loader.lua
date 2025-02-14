-- Homebrew Loader --
-- ~ Brew Softworks

--[ UI Instances ]--
local Instances = {
	Homebrew = Instance.new("ScreenGui"),
	Frame = Instance.new("Frame"),
	UICorner = Instance.new("UICorner"),
	TextLabel = Instance.new("TextLabel"),
	ImageLabel = Instance.new("ImageLabel"),
	TextLabel_2 = Instance.new("TextLabel"),
	TextLabel_3 = Instance.new("TextLabel"),
	Sound = Instance.new("Sound"),
}

Instances.Homebrew.Name = "Homebrew"
Instances.Homebrew.Parent = game:GetService("CoreGui")

Instances.Frame.Name = "Frame"
Instances.Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.Frame.Size = UDim2.new(0, 366, 0, 138)
Instances.Frame.BorderColor3 = Color3.new(0, 0, 0)
Instances.Frame.BorderSizePixel = 0
Instances.Frame.BackgroundTransparency = 1
Instances.Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.Frame.Parent = Instances.Homebrew

Instances.UICorner.Name = "UICorner"
Instances.UICorner.CornerRadius = UDim.new(0, 4)
Instances.UICorner.Parent = Instances.Frame

Instances.TextLabel.Name = "TextLabel"
Instances.TextLabel.Size = UDim2.new(0, 352, 0, 20)
Instances.TextLabel.BorderColor3 = Color3.new(0, 0, 0)
Instances.TextLabel.BorderSizePixel = 0
Instances.TextLabel.BackgroundTransparency = 1
Instances.TextLabel.Position = UDim2.new(0.0191256832, 0, 0, 0)
Instances.TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.TextLabel.TextColor3 = Color3.new(1, 1, 1)
Instances.TextLabel.Text = "Homebrew Launcher Homebrew Launcher Homebrew Launc"
Instances.TextLabel.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.TextLabel.TextTransparency = 1
Instances.TextLabel.TextXAlignment = Enum.TextXAlignment.Left
Instances.TextLabel.Parent = Instances.Frame

Instances.ImageLabel.Name = "ImageLabel"
Instances.ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.ImageLabel.Size = UDim2.new(0, 100, 0, 100)
Instances.ImageLabel.BorderColor3 = Color3.new(0, 0, 0)
Instances.ImageLabel.BorderSizePixel = 0
Instances.ImageLabel.BackgroundTransparency = 1
Instances.ImageLabel.Position = UDim2.new(0.155480728, 0, 0.558545768, 0)
Instances.ImageLabel.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.ImageLabel.ImageTransparency = 1
Instances.ImageLabel.Image = "http://www.roblox.com/asset/?id=125507007499350"
Instances.ImageLabel.Parent = Instances.Frame

Instances.TextLabel_2.Name = "TextLabel"
Instances.TextLabel_2.Size = UDim2.new(0, 239, 0, 94)
Instances.TextLabel_2.BorderColor3 = Color3.new(0, 0, 0)
Instances.TextLabel_2.BorderSizePixel = 0
Instances.TextLabel_2.BackgroundTransparency = 1
Instances.TextLabel_2.Position = UDim2.new(0.327868849, 0, 0.195652172, 0)
Instances.TextLabel_2.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
Instances.TextLabel_2.Text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
Instances.TextLabel_2.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.TextLabel_2.TextWrapped = true
Instances.TextLabel_2.TextTransparency = 1
Instances.TextLabel_2.Parent = Instances.Frame

Instances.TextLabel_3.Name = "TextLabel"
Instances.TextLabel_3.Size = UDim2.new(0, 239, 0, 17)
Instances.TextLabel_3.BorderColor3 = Color3.new(0, 0, 0)
Instances.TextLabel_3.BorderSizePixel = 0
Instances.TextLabel_3.BackgroundTransparency = 1
Instances.TextLabel_3.Position = UDim2.new(0.327868849, 0, 0.876811624, 0)
Instances.TextLabel_3.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
Instances.TextLabel_3.Text = "@mikkoftl ~ Brew Softworks"
Instances.TextLabel_3.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.TextLabel_3.TextWrapped = true
Instances.TextLabel_3.TextTransparency = 1
Instances.TextLabel_3.Parent = Instances.Frame

Instances.Sound.Name = "Sound"
Instances.Sound.RollOffMode = Enum.RollOffMode.InverseTapered
Instances.Sound.SoundId = "rbxassetid://5072915476"
Instances.Sound.Parent = Instances.Homebrew
Instances.Sound:Play()

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
wait(1)

--[ Loader ]--
pcall(task.spawn(function() -- BOOM SHAKALAKA!!
    if game.GameId == 4096039463 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Brew-Softworks/Homebrew/refs/heads/main/Freedom%20War/osrc.lua"))()
    end
end))

Instances.Homebrew:Destroy()
