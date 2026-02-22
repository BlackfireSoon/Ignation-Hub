local Converted = {
	["_IgnGui"] = Instance.new("ScreenGui");
	["_IgnModule"] = Instance.new("LocalScript");
	["_Window"] = Instance.new("CanvasGroup");
	["_Bar"] = Instance.new("Frame");
	["_UIStroke"] = Instance.new("UIStroke");
	["_TextLabel"] = Instance.new("TextLabel");
	["_CloseButton"] = Instance.new("ImageButton");
	["_UICorner"] = Instance.new("UICorner");
	["_HideButton"] = Instance.new("ImageButton");
	["_UICorner1"] = Instance.new("UICorner");
	["_UICorner2"] = Instance.new("UICorner");
	["_UIStroke1"] = Instance.new("UIStroke");
	["_UIStroke2"] = Instance.new("UIStroke");
	["_Tab"] = Instance.new("Frame");
	["_UIGradient"] = Instance.new("UIGradient");
	["_UIListLayout"] = Instance.new("UIListLayout");
	["_UIPadding"] = Instance.new("UIPadding");
	["_UIGradient1"] = Instance.new("UIGradient");
	["_Base"] = Instance.new("UIAspectRatioConstraint");
	["_Button"] = Instance.new("Frame");
	["_Label"] = Instance.new("TextLabel");
	["_Icon"] = Instance.new("ImageButton");
	["_UICorner3"] = Instance.new("UICorner");
	["_ClickDetector"] = Instance.new("TextButton");
	["_UICorner4"] = Instance.new("UICorner");
	["_UICorner5"] = Instance.new("UICorner");
	["_TextBox"] = Instance.new("Frame");
	["_Label1"] = Instance.new("TextLabel");
	["_TextBox1"] = Instance.new("TextBox");
	["_UICorner6"] = Instance.new("UICorner");
	["_UIStroke3"] = Instance.new("UIStroke");
	["_Slider"] = Instance.new("Frame");
	["_Label2"] = Instance.new("TextLabel");
	["_TextBox2"] = Instance.new("TextBox");
	["_UICorner7"] = Instance.new("UICorner");
	["_UIStroke4"] = Instance.new("UIStroke");
	["_Bar1"] = Instance.new("Frame");
	["_UICorner8"] = Instance.new("UICorner");
	["_Point"] = Instance.new("Frame");
	["_UICorner9"] = Instance.new("UICorner");
	["_UIStroke5"] = Instance.new("UIStroke");
	["_ClickDetector1"] = Instance.new("TextButton");
	["_UICorner10"] = Instance.new("UICorner");
	["_LongTextBox"] = Instance.new("Frame");
	["_Label3"] = Instance.new("TextLabel");
	["_TextBox3"] = Instance.new("TextBox");
	["_UICorner11"] = Instance.new("UICorner");
	["_UIStroke6"] = Instance.new("UIStroke");
	["_Toggle"] = Instance.new("Frame");
	["_Label4"] = Instance.new("TextLabel");
	["_Icon1"] = Instance.new("ImageButton");
	["_UICorner12"] = Instance.new("UICorner");
	["_ClickDetector2"] = Instance.new("TextButton");
	["_UICorner13"] = Instance.new("UICorner");
	["_CodeBox"] = Instance.new("Frame");
	["_Label5"] = Instance.new("TextLabel");
	["_TextBox4"] = Instance.new("TextBox");
	["_UICorner14"] = Instance.new("UICorner");
	["_UIStroke7"] = Instance.new("UIStroke");
}

-- Properties:

Converted["_IgnGui"].IgnoreGuiInset = true
Converted["_IgnGui"].ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
Converted["_IgnGui"].ResetOnSpawn = false
Converted["_IgnGui"].Name = "IgnGui"
Converted["_IgnGui"].Parent = game:GetService("CoreGui")

-- Fake Module Scripts:

local fake_module_scripts = {}


-- Fake Local Scripts:

local Lib = {}

local function TQOTINL_fake_script() -- Fake Script: StarterGui.IgnGui.IgnModule
    local script = Instance.new("LocalScript")
    script.Name = "IgnModule"
    script.Parent = Converted["_IgnGui"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	
	
	local Gui = script.Parent
	
	local TweenService = game:GetService('TweenService')
	local InputService = game:GetService('UserInputService')
	local Base = script.Base
	
	local WindowCount = 0
	local FrameCount = 0
	
	local function load(str:string)
		local _,ret = pcall(function()
			loadstring(str)
		end)
	end
	
	local function FitText(Label:TextLabel)
		Label.TextScaled = false
		Label.TextScaled = not Label.TextFits
	end
	
	local loaded = load('https://raw.githubusercontent.com/BlackfireSoon/Ignation-Hub/refs/heads/main/modules/UIdrag.luau')
	local UIdragify = loaded and loaded() or require(game.ReplicatedStorage.UIdrag)
	
	
	function Lib:CreateWindow(Name:string, Color:Color3): CanvasGroup
	
		if not Gui:FindFirstChildOfClass('CanvasGroup') then
			--Intro
		end
	
		local Window = script:FindFirstChild('Window'):Clone()
		local Bar = Window:FindFirstChild('Bar')
		local Tab = Window:FindFirstChild('Tab')
	
		Window.Name = Name
		Window.BackgroundColor3 = Color
		Window.Parent = Gui
		Bar.TextLabel.Text = Name
		FitText(Bar.TextLabel)
		Bar.BackgroundColor3 = Color
	
		Window.Position = UDim2.new(0, 30 + (180 * WindowCount), 0, 64)
		WindowCount += 1
	
		UIdragify(Window)
	
		local Toggling = false
		local function ToggleWindow(show: boolean)
			if show == nil then 
				show = not Tab.Visible end
			if Toggling then 
				return end
	
			if show then
				Bar.HideButton.Image = 'rbxassetid://82235228007110'
				Window.AutomaticSize = Enum.AutomaticSize.Y
				Tab.Visible = true
				Toggling = true
	
				local targetHeight = Window.AbsoluteSize.Y 
	
				Window.AutomaticSize = Enum.AutomaticSize.None
				Window.Size = UDim2.new(0, 160, 0, 24)
	
				local tween = TweenService:Create(
					Window,
					TweenInfo.new(0.24, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
					{Size = UDim2.new(0, 160, 0, targetHeight)}
				)
	
				tween:Play()
				tween.Completed:Wait()
				if Tab.Visible then 
					Window.AutomaticSize = Enum.AutomaticSize.Y 
					Toggling = false
				end
	
			else
				Window.AutomaticSize = Enum.AutomaticSize.None
				Toggling = true
				Bar.HideButton.Image = 'rbxassetid://97347592181196'
	
				local tween = TweenService:Create(
					Window,
					TweenInfo.new(0.24, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
					{Size = UDim2.new(0, 160, 0, 24)}
				)
	
				tween:Play()
				tween.Completed:Wait()
				if not show then 
					Tab.Visible = false 
				end
				Toggling = false
			end
		end
		Bar.HideButton.MouseButton1Click:Connect(ToggleWindow)
		ToggleWindow()
	
		local function CloseWindow()
			Window.AutomaticSize = Enum.AutomaticSize.None
			Toggling = true
	
			local tween = TweenService:Create(
				Window,
				TweenInfo.new(0.24, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
				{Size = UDim2.new(0, 160, 0, 0)}
			)
	
			tween:Play()
			tween.Completed:Wait()
			Window:Destroy()
		end
		Bar.CloseButton.MouseButton1Click:Connect(CloseWindow)
	
		return Window, Gui, ToggleWindow, CloseWindow
	end
	
	function Lib:CreateButton(Window:CanvasGroup, Name:string, IconId:number, Callback: ()->()): Frame
		local Frame = Base.Button:Clone()
		Window = Window or Gui:FindFirstChildOfClass('CanvasGroup')
		Frame.Parent = Window:FindFirstChild('Tab')
	
		FrameCount += 1
		Frame.LayoutOrder = FrameCount
	
		local HoverAnim = TweenService:Create(
			Frame.ClickDetector,
			TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
			{BackgroundTransparency = 0.85}
		)
		local DeHoverAnim = TweenService:Create(
			Frame.ClickDetector,
			TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
			{BackgroundTransparency = 0.95}
		)
	
		Frame.Label.Text = Name or 'Button'
		FitText(Frame.Label)
		Frame.Name = Name or 'Button'
		Frame.Icon.Image = 'rbxassetid://' .. (IconId or 0)
		Frame.ClickDetector.MouseButton1Click:Connect(Callback)
	
		Frame.ClickDetector.MouseEnter:Connect(function()
			HoverAnim:Play()
		end)
		Frame.ClickDetector.MouseLeave:Connect(function()
			DeHoverAnim:Play()
		end)
		Frame.ClickDetector.MouseButton1Click:Connect(function()
			Frame.ClickDetector.BackgroundTransparency = 0.5
			HoverAnim:Play()
		end)
	
		return Frame
	end
	
	local assets = {
		BoolFalse = 'rbxassetid://125177989737726',
		BoolTrue = 'rbxassetid://115234285192864',
	}
	
	function Lib:CreateToggle(Window:CanvasGroup, Name:string, State:boolean, Callback: ()->()): Frame
		local Frame = Base.Toggle:Clone()
		Window = Window or Gui:FindFirstChildOfClass('CanvasGroup')
		Frame.Parent = Window:FindFirstChild('Tab')
	
		FrameCount += 1
		Frame.LayoutOrder = FrameCount
	
		local HoverAnim = TweenService:Create(
			Frame.ClickDetector,
			TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
			{BackgroundTransparency = 0.9}
		)
		local DeHoverAnim = TweenService:Create(
			Frame.ClickDetector,
			TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
			{BackgroundTransparency = 1}
		)
	
		Frame.Label.Text = Name or 'Toggle'
		FitText(Frame.Label)
		Frame.Name = Name or 'Toggle'
	
		local function Toggle()
			State = not State
			Frame.Icon.Image = assets[State and 'BoolTrue' or 'BoolFalse']
		end
		Toggle()
	
		Frame.ClickDetector.MouseButton1Click:Connect(function()
			Toggle()
			Callback(State)
		end)
	
		Frame.ClickDetector.MouseEnter:Connect(function()
			HoverAnim:Play()
		end)
		Frame.ClickDetector.MouseLeave:Connect(function()
			DeHoverAnim:Play()
		end)
		Frame.ClickDetector.MouseButton1Click:Connect(function()
			Frame.ClickDetector.BackgroundTransparency = 0.5
			HoverAnim:Play()
		end)
	
		return Frame
	end
	
	function Lib:CreateTextBox(Window:CanvasGroup, Name:string, Text:string, Properties:{Large:boolean, Placeholder:string, Code:boolean}, Callback: ()->(), Changed: ()->())
		Properties = Properties or {}
	
		local Frame
		if Properties.Code then
			Frame = Base.CodeBox:Clone()
		elseif Properties.Large then
			Frame = Base.LongTextBox:Clone()
		else
			Frame = Base.TextBox:Clone()
		end
		Window = Window or Gui:FindFirstChildOfClass('CanvasGroup')
		Frame.Parent = Window:FindFirstChild('Tab')
	
		FrameCount += 1
		Frame.LayoutOrder = FrameCount
	
		Frame.Name = Name or 'TextBox'
		Frame.Label.Text = Name or 'TextBox'
		FitText(Frame.Label)
	
		Frame.TextBox.Text = Text or ''
		Frame.TextBox.PlaceholderText = Properties.Placeholder or '...'
	
		Frame.TextBox.FocusLost:Connect(function()
			Callback(Frame.TextBox.Text)
		end)
	
		Frame.TextBox.Changed:Connect(function()
			pcall(function()
				Changed(Frame.TextBox.Text)
			end)
		end)
	
		Frame.TextBox:GetPropertyChangedSignal('Text'):Connect(function()
			if Properties.Code then
				Frame.TextBox.TextScaled = false
				Frame.TextBox.TextScaled = not Frame.TextBox.TextFits
			end
		end)
	
		return Frame
	end
	
	
	local function step(number: number, step: number): number
		if step == 0 then return number end 
		return math.round(number / step) * step
	end
	
	function Lib:CreateSlider(Window:CanvasGroup, Name:string, Value:number, Properties:{Step:number, Max:number, Min:number}, Callback: ()->())
		Properties = Properties or {}
		local Frame = Base.Slider:Clone()
		local Slider = Frame.Bar
		local Pointer = Slider.Point
	
		Window = Window or Gui:FindFirstChildOfClass('CanvasGroup')
		Frame.Parent = Window:FindFirstChild('Tab')
	
		FrameCount += 1
		local CurrentFrameCount = FrameCount
		Frame.LayoutOrder = CurrentFrameCount
	
		Frame.Name = Name or 'Slider'
		Frame.Label.Text = Name or 'Slider'
		FitText(Frame.Label)
	
		Frame.TextBox.Text = Value or 0
	
		local function UpdateSlider()
			local MousePos = InputService:GetMouseLocation().X
			local BarPos = Slider.AbsolutePosition.X
			local BarSize = Slider.AbsoluteSize.X
	
			local Percent = math.clamp((MousePos - BarPos) / BarSize, 0, 1)
			Pointer.Position = UDim2.new(Percent, 0, 0.5, 0)
	
			local Min = Properties.Min or 0
			local Max = Properties.Max or 100
			local FinalValue = step(math.floor(Min + (Max - Min) * Percent), Properties.Step or 1)
			Frame.TextBox.Text = tostring(FinalValue)
	
			Callback(FinalValue)
		end
	
		Frame.ClickDetector.MouseButton1Down:Connect(function()
			UpdateSlider()
			local MoveConnection
			local ReleaseConnection
	
			MoveConnection = InputService.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					UpdateSlider()
				end
			end)
	
			ReleaseConnection = InputService.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					MoveConnection:Disconnect()
					ReleaseConnection:Disconnect()
				end
			end)
		end)
	
		local HoverAnim = TweenService:Create(
			Frame.ClickDetector,
			TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
			{BackgroundTransparency = 0.9}
		)
		local DeHoverAnim = TweenService:Create(
			Frame.ClickDetector,
			TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
			{BackgroundTransparency = 1}
		)
	
		Frame.ClickDetector.MouseEnter:Connect(function()
			HoverAnim:Play()
		end)
		Frame.ClickDetector.MouseLeave:Connect(function()
			DeHoverAnim:Play()
		end)
	
		return Frame
	end
	
	_G.IgnUILib = Lib
	function _G:GetIgnUILib(StartUpSoundId:number)
		_G.IgnSoundId = StartUpSoundId
		return Lib
	end
end

coroutine.wrap(TQOTINL_fake_script)()

return Lib
