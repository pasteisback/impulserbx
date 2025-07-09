local impinject = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local colored1 = Instance.new("Frame")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local colored2 = Instance.new("Frame")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local txt1 = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local txt2 = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")

impinject.Name = "impinject"
impinject.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
impinject.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
impinject.DisplayOrder = 999999999
impinject.ResetOnSpawn = false

main.Name = "main"
main.Parent = impinject
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.BackgroundTransparency = 1.000
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.857568264, 0, 0.86809814, 0)
main.Size = UDim2.new(0.13151364, 0, 0.0920245424, 0)

colored1.Name = "colored1"
colored1.Parent = main
colored1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
colored1.BorderColor3 = Color3.fromRGB(0, 0, 0)
colored1.BorderSizePixel = 0
colored1.Position = UDim2.new(0.32793799, 0, -0.961373568, 0)
colored1.Rotation = 90.000
colored1.Size = UDim2.new(0.334253669, 0, 3.004879, 0)
colored1.Style = Enum.FrameStyle.ChatGreen

UIAspectRatioConstraint.Parent = colored1
UIAspectRatioConstraint.AspectRatio = 0.328

colored2.Name = "colored2"
colored2.Parent = main
colored2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
colored2.BorderColor3 = Color3.fromRGB(0, 0, 0)
colored2.BorderSizePixel = 0
colored2.Position = UDim2.new(0.346868098, 0, -0.894333243, 0)
colored2.Rotation = -90.000
colored2.Size = UDim2.new(0.299917012, 0, 3.01599026, 0)
colored2.Style = Enum.FrameStyle.ChatGreen

UIAspectRatioConstraint_2.Parent = colored2
UIAspectRatioConstraint_2.AspectRatio = 0.293

txt1.Name = "txt1"
txt1.Parent = main
txt1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
txt1.BackgroundTransparency = 1.000
txt1.BorderColor3 = Color3.fromRGB(0, 0, 0)
txt1.BorderSizePixel = 0
txt1.Position = UDim2.new(0.0255896226, 0, 0.162601054, 0)
txt1.Size = UDim2.new(0.945549011, 0, 0.394806892, 0)
txt1.Font = Enum.Font.Unknown
txt1.Text = "Injected!"
txt1.TextColor3 = Color3.fromRGB(0, 0, 0)
txt1.TextScaled = true
txt1.TextSize = 14.000
txt1.TextWrapped = true

UITextSizeConstraint.Parent = txt1
UITextSizeConstraint.MaxTextSize = 35

UIAspectRatioConstraint_3.Parent = txt1
UIAspectRatioConstraint_3.AspectRatio = 7.052

txt2.Name = "txt2"
txt2.Parent = main
txt2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
txt2.BackgroundTransparency = 1.000
txt2.BorderColor3 = Color3.fromRGB(0, 0, 0)
txt2.BorderSizePixel = 0
txt2.Position = UDim2.new(0, 0, 0.557408988, 0)
txt2.Size = UDim2.new(0.999999523, 0, 0.375921458, 0)
txt2.Font = Enum.Font.Unknown
txt2.Text = "Thanks for using Impulse daddy."
txt2.TextColor3 = Color3.fromRGB(0, 0, 0)
txt2.TextScaled = true
txt2.TextSize = 14.000
txt2.TextWrapped = true

UITextSizeConstraint_2.Parent = txt2
UITextSizeConstraint_2.MaxTextSize = 20

UIAspectRatioConstraint_4.Parent = txt2
UIAspectRatioConstraint_4.AspectRatio = 7.833

UIAspectRatioConstraint_5.Parent = main
UIAspectRatioConstraint_5.AspectRatio = 2.944

local function tween()
	local script = Instance.new('LocalScript', impinject)

	local player = game:GetService("Players").LocalPlayer
	local gui = player:WaitForChild("PlayerGui"):WaitForChild("impinject")
	local mainFrame = gui:WaitForChild("main")
	
	mainFrame.Position = UDim2.new(1.2, 0, 0.868, 0)
	mainFrame.Visible = true
	
	local stayPosition = UDim2.new(0.858, 0, 0.868, 0)
	
	local tweenIn = game:GetService("TweenService"):Create(
		mainFrame,
		TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), 
		{Position = stayPosition}
	)
	wait(3)
	tweenIn:Play()
	
	tweenIn.Completed:Wait()
	wait(6.3)
	
	local tweenOut = game:GetService("TweenService"):Create(
		mainFrame,
		TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
		{Position = UDim2.new(1.2, 0, 0.868, 0)}
	)
	tweenOut:Play()
	
	tweenOut.Completed:Wait()
	mainFrame:Destroy()
end
coroutine.wrap(tween)()
