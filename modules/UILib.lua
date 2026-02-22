local url = setclipboard('https://discord.gg/EbYAXG7tDt')
local request = (syn and syn.request) or (http and http.request) or http_request
local discordCode = "dBFQ39MzyM"

if request then
    request({
        Url = 'http://127.0.0.1:6463/rpc?v=1',
        Method = 'POST',
        Headers = {['Content-Type'] = 'application/json', ['Origin'] = 'https://discord.com'},
        Body = game:GetService("HttpService"):JSONEncode({
            cmd = 'INVITE_BROWSER',
            args = {code = discordCode},
            nonce = game:GetService("HttpService"):GenerateGUID(false)
        })
    })
end

-- Instances: 59 | Scripts: 1 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.IgnGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[IgnGui]];
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.IgnGui.IgnModule
G2L["2"] = Instance.new("LocalScript", G2L["1"]);
G2L["2"]["Name"] = [[IgnModule]];


-- StarterGui.IgnGui.IgnModule.Window
G2L["3"] = Instance.new("CanvasGroup", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(85, 125, 255);
G2L["3"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["3"]["Size"] = UDim2.new(0, 160, 0, 24);
G2L["3"]["Position"] = UDim2.new(0, 30, 0, 30);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Name"] = [[Window]];


-- StarterGui.IgnGui.IgnModule.Window.Bar
G2L["4"] = Instance.new("Frame", G2L["3"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(85, 125, 255);
G2L["4"]["ClipsDescendants"] = true;
G2L["4"]["Size"] = UDim2.new(1, 0, 0, 24);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Name"] = [[Bar]];
G2L["4"]["BackgroundTransparency"] = 1;


-- StarterGui.IgnGui.IgnModule.Window.Bar.UIStroke
G2L["5"] = Instance.new("UIStroke", G2L["4"]);
G2L["5"]["Transparency"] = 0.2;


-- StarterGui.IgnGui.IgnModule.Window.Bar.TextLabel
G2L["6"] = Instance.new("TextLabel", G2L["4"]);
G2L["6"]["TextWrapped"] = true;
G2L["6"]["TextStrokeTransparency"] = 0.8;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["TextSize"] = 18;
G2L["6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["Size"] = UDim2.new(1, -45, 1, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = [[Ignation UI]];
G2L["6"]["Position"] = UDim2.new(0, 9, 0, 0);


-- StarterGui.IgnGui.IgnModule.Window.Bar.CloseButton
G2L["7"] = Instance.new("ImageButton", G2L["4"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["7"]["Image"] = [[rbxassetid://6302778252]];
G2L["7"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Name"] = [[CloseButton]];
G2L["7"]["Position"] = UDim2.new(1, 0, 0, 0);


-- StarterGui.IgnGui.IgnModule.Window.Bar.CloseButton.UICorner
G2L["8"] = Instance.new("UICorner", G2L["7"]);
G2L["8"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IgnGui.IgnModule.Window.Bar.HideButton
G2L["9"] = Instance.new("ImageButton", G2L["4"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["9"]["Image"] = [[rbxassetid://82235228007110]];
G2L["9"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Name"] = [[HideButton]];
G2L["9"]["Position"] = UDim2.new(1, -16, 0, 0);


-- StarterGui.IgnGui.IgnModule.Window.Bar.HideButton.UICorner
G2L["a"] = Instance.new("UICorner", G2L["9"]);
G2L["a"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IgnGui.IgnModule.Window.UICorner
G2L["b"] = Instance.new("UICorner", G2L["3"]);
G2L["b"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IgnGui.IgnModule.Window.UIStroke
G2L["c"] = Instance.new("UIStroke", G2L["3"]);
G2L["c"]["Transparency"] = 0.6;


-- StarterGui.IgnGui.IgnModule.Window.UIStroke
G2L["d"] = Instance.new("UIStroke", G2L["3"]);
G2L["d"]["Transparency"] = 0.9;
G2L["d"]["Thickness"] = 2;


-- StarterGui.IgnGui.IgnModule.Window.Tab
G2L["e"] = Instance.new("Frame", G2L["3"]);
G2L["e"]["Visible"] = false;
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 22);
G2L["e"]["ClipsDescendants"] = true;
G2L["e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["e"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["e"]["Position"] = UDim2.new(0, 0, 0, 24);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Name"] = [[Tab]];
G2L["e"]["BackgroundTransparency"] = 0.079;


-- StarterGui.IgnGui.IgnModule.Window.Tab.UIGradient
G2L["f"] = Instance.new("UIGradient", G2L["e"]);
G2L["f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};


-- StarterGui.IgnGui.IgnModule.Window.Tab.UIListLayout
G2L["10"] = Instance.new("UIListLayout", G2L["e"]);
G2L["10"]["Padding"] = UDim.new(0, 5);
G2L["10"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IgnGui.IgnModule.Window.Tab.UIPadding
G2L["11"] = Instance.new("UIPadding", G2L["e"]);
G2L["11"]["PaddingTop"] = UDim.new(0, 6);
G2L["11"]["PaddingRight"] = UDim.new(0, 6);
G2L["11"]["PaddingLeft"] = UDim.new(0, 6);
G2L["11"]["PaddingBottom"] = UDim.new(0, 6);


-- StarterGui.IgnGui.IgnModule.Window.UIGradient
G2L["12"] = Instance.new("UIGradient", G2L["3"]);
G2L["12"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(177, 177, 177))};


-- StarterGui.IgnGui.IgnModule.Base
G2L["13"] = Instance.new("UIAspectRatioConstraint", G2L["2"]);
G2L["13"]["Name"] = [[Base]];


-- StarterGui.IgnGui.IgnModule.Base.Button
G2L["14"] = Instance.new("Frame", G2L["13"]);
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(85, 125, 255);
G2L["14"]["Size"] = UDim2.new(1, 0, 0, 22);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Name"] = [[Button]];
G2L["14"]["BackgroundTransparency"] = 1;


-- StarterGui.IgnGui.IgnModule.Base.Button.Label
G2L["15"] = Instance.new("TextLabel", G2L["14"]);
G2L["15"]["TextWrapped"] = true;
G2L["15"]["Interactable"] = false;
G2L["15"]["TextStrokeTransparency"] = 0.8;
G2L["15"]["ZIndex"] = 2;
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["TextSize"] = 16;
G2L["15"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["15"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["BackgroundTransparency"] = 1;
G2L["15"]["Size"] = UDim2.new(1, -38, 1, 0);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Text"] = [[Button]];
G2L["15"]["Name"] = [[Label]];
G2L["15"]["Position"] = UDim2.new(0, 6, 0, 0);


-- StarterGui.IgnGui.IgnModule.Base.Button.Icon
G2L["16"] = Instance.new("ImageButton", G2L["14"]);
G2L["16"]["Interactable"] = false;
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["BackgroundTransparency"] = 1;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["ZIndex"] = 2;
G2L["16"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["16"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Name"] = [[Icon]];
G2L["16"]["Position"] = UDim2.new(1, -6, 0.5, 0);


-- StarterGui.IgnGui.IgnModule.Base.Button.Icon.UICorner
G2L["17"] = Instance.new("UICorner", G2L["16"]);
G2L["17"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IgnGui.IgnModule.Base.Button.ClickDetector
G2L["18"] = Instance.new("TextButton", G2L["14"]);
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["TextTransparency"] = 1;
G2L["18"]["TextSize"] = 1;
G2L["18"]["AutoButtonColor"] = false;
G2L["18"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["18"]["BackgroundTransparency"] = 0.95;
G2L["18"]["Size"] = UDim2.new(1, -2, 1, 0);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = [[]];
G2L["18"]["Name"] = [[ClickDetector]];


-- StarterGui.IgnGui.IgnModule.Base.Button.ClickDetector.UICorner
G2L["19"] = Instance.new("UICorner", G2L["18"]);
G2L["19"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.IgnGui.IgnModule.Base.Button.UICorner
G2L["1a"] = Instance.new("UICorner", G2L["14"]);
G2L["1a"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IgnGui.IgnModule.Base.CodeBox
G2L["1b"] = Instance.new("Frame", G2L["13"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(85, 125, 255);
G2L["1b"]["Size"] = UDim2.new(1, 0, 0, 100);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Name"] = [[CodeBox]];
G2L["1b"]["LayoutOrder"] = 2;
G2L["1b"]["BackgroundTransparency"] = 1;


-- StarterGui.IgnGui.IgnModule.Base.CodeBox.Label
G2L["1c"] = Instance.new("TextLabel", G2L["1b"]);
G2L["1c"]["TextWrapped"] = true;
G2L["1c"]["Interactable"] = false;
G2L["1c"]["TextStrokeTransparency"] = 0.8;
G2L["1c"]["ZIndex"] = 2;
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["TextSize"] = 16;
G2L["1c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["BackgroundTransparency"] = 1;
G2L["1c"]["Size"] = UDim2.new(1, -10, 0, 16);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Text"] = [[Text]];
G2L["1c"]["Name"] = [[Label]];
G2L["1c"]["Position"] = UDim2.new(0, 6, 0, 2);


-- StarterGui.IgnGui.IgnModule.Base.CodeBox.TextBox
G2L["1d"] = Instance.new("TextBox", G2L["1b"]);
G2L["1d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1d"]["PlaceholderColor3"] = Color3.fromRGB(140, 140, 140);
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["TextWrapped"] = true;
G2L["1d"]["TextSize"] = 16;
G2L["1d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1d"]["MultiLine"] = true;
G2L["1d"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["1d"]["ClearTextOnFocus"] = false;
G2L["1d"]["PlaceholderText"] = [[print("Hello, World!")]];
G2L["1d"]["Size"] = UDim2.new(1, -13, 0, 80);
G2L["1d"]["Position"] = UDim2.new(0, 6, 1, -1);
G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["Text"] = [[print("Hello, World!")]];
G2L["1d"]["BackgroundTransparency"] = 0.75;


-- StarterGui.IgnGui.IgnModule.Base.CodeBox.TextBox.UICorner
G2L["1e"] = Instance.new("UICorner", G2L["1d"]);
G2L["1e"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IgnGui.IgnModule.Base.CodeBox.TextBox.UIStroke
G2L["1f"] = Instance.new("UIStroke", G2L["1d"]);
G2L["1f"]["Transparency"] = 0.79;
G2L["1f"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.IgnGui.IgnModule.Base.LongTextBox
G2L["20"] = Instance.new("Frame", G2L["13"]);
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(85, 125, 255);
G2L["20"]["Size"] = UDim2.new(1, 0, 0, 36);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Name"] = [[LongTextBox]];
G2L["20"]["LayoutOrder"] = 2;
G2L["20"]["BackgroundTransparency"] = 1;


-- StarterGui.IgnGui.IgnModule.Base.LongTextBox.Label
G2L["21"] = Instance.new("TextLabel", G2L["20"]);
G2L["21"]["TextWrapped"] = true;
G2L["21"]["Interactable"] = false;
G2L["21"]["TextStrokeTransparency"] = 0.8;
G2L["21"]["ZIndex"] = 2;
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["TextSize"] = 16;
G2L["21"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["FontFace"] = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["21"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["BackgroundTransparency"] = 1;
G2L["21"]["Size"] = UDim2.new(1, -10, 0, 16);
G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Text"] = [[Text]];
G2L["21"]["Name"] = [[Label]];
G2L["21"]["Position"] = UDim2.new(0, 6, 0, 2);


-- StarterGui.IgnGui.IgnModule.Base.LongTextBox.TextBox
G2L["22"] = Instance.new("TextBox", G2L["20"]);
G2L["22"]["PlaceholderColor3"] = Color3.fromRGB(140, 140, 140);
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["TextWrapped"] = true;
G2L["22"]["TextSize"] = 16;
G2L["22"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22"]["TextScaled"] = true;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["FontFace"] = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["22"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["22"]["ClearTextOnFocus"] = false;
G2L["22"]["PlaceholderText"] = [[...]];
G2L["22"]["Size"] = UDim2.new(1, -13, 0, 16);
G2L["22"]["Position"] = UDim2.new(0, 6, 1, -1);
G2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["Text"] = [[Hello, World!]];
G2L["22"]["BackgroundTransparency"] = 0.75;


-- StarterGui.IgnGui.IgnModule.Base.LongTextBox.TextBox.UICorner
G2L["23"] = Instance.new("UICorner", G2L["22"]);
G2L["23"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IgnGui.IgnModule.Base.LongTextBox.TextBox.UIStroke
G2L["24"] = Instance.new("UIStroke", G2L["22"]);
G2L["24"]["Transparency"] = 0.79;
G2L["24"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.IgnGui.IgnModule.Base.Slider
G2L["25"] = Instance.new("Frame", G2L["13"]);
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(85, 125, 255);
G2L["25"]["Size"] = UDim2.new(1, 0, 0, 36);
G2L["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["Name"] = [[Slider]];
G2L["25"]["LayoutOrder"] = 3;
G2L["25"]["BackgroundTransparency"] = 1;


-- StarterGui.IgnGui.IgnModule.Base.Slider.Label
G2L["26"] = Instance.new("TextLabel", G2L["25"]);
G2L["26"]["TextWrapped"] = true;
G2L["26"]["Interactable"] = false;
G2L["26"]["TextStrokeTransparency"] = 0.8;
G2L["26"]["ZIndex"] = 2;
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["TextSize"] = 16;
G2L["26"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["FontFace"] = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["26"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["BackgroundTransparency"] = 1;
G2L["26"]["Size"] = UDim2.new(1, -48, 0, 16);
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Text"] = [[Slider]];
G2L["26"]["Name"] = [[Label]];
G2L["26"]["Position"] = UDim2.new(0, 6, 0, 2);


-- StarterGui.IgnGui.IgnModule.Base.Slider.TextBox
G2L["27"] = Instance.new("TextBox", G2L["25"]);
G2L["27"]["PlaceholderColor3"] = Color3.fromRGB(140, 140, 140);
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["TextWrapped"] = true;
G2L["27"]["TextSize"] = 16;
G2L["27"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27"]["TextScaled"] = true;
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["FontFace"] = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["27"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["27"]["ClearTextOnFocus"] = false;
G2L["27"]["PlaceholderText"] = [[0]];
G2L["27"]["Size"] = UDim2.new(0, 32, 0, 16);
G2L["27"]["Position"] = UDim2.new(1, -6, 0, 0);
G2L["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["Text"] = [[12]];
G2L["27"]["BackgroundTransparency"] = 0.75;


-- StarterGui.IgnGui.IgnModule.Base.Slider.TextBox.UICorner
G2L["28"] = Instance.new("UICorner", G2L["27"]);
G2L["28"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IgnGui.IgnModule.Base.Slider.TextBox.UIStroke
G2L["29"] = Instance.new("UIStroke", G2L["27"]);
G2L["29"]["Transparency"] = 0.79;
G2L["29"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["29"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.IgnGui.IgnModule.Base.Slider.Bar
G2L["2a"] = Instance.new("Frame", G2L["25"]);
G2L["2a"]["BorderSizePixel"] = 0;
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2a"]["Size"] = UDim2.new(1, -14, 0, 3);
G2L["2a"]["Position"] = UDim2.new(0, 6, 1, -11);
G2L["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["Name"] = [[Bar]];
G2L["2a"]["BackgroundTransparency"] = 0.79;


-- StarterGui.IgnGui.IgnModule.Base.Slider.Bar.UICorner
G2L["2b"] = Instance.new("UICorner", G2L["2a"]);
G2L["2b"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IgnGui.IgnModule.Base.Slider.Bar.Point
G2L["2c"] = Instance.new("Frame", G2L["2a"]);
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2c"]["Size"] = UDim2.new(0, 7, 0, 10);
G2L["2c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["Name"] = [[Point]];


-- StarterGui.IgnGui.IgnModule.Base.Slider.Bar.Point.UICorner
G2L["2d"] = Instance.new("UICorner", G2L["2c"]);
G2L["2d"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IgnGui.IgnModule.Base.Slider.Bar.Point.UIStroke
G2L["2e"] = Instance.new("UIStroke", G2L["2c"]);
G2L["2e"]["Transparency"] = 0.87;
G2L["2e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.IgnGui.IgnModule.Base.Slider.ClickDetector
G2L["2f"] = Instance.new("TextButton", G2L["25"]);
G2L["2f"]["BorderSizePixel"] = 0;
G2L["2f"]["TextTransparency"] = 1;
G2L["2f"]["TextSize"] = 1;
G2L["2f"]["AutoButtonColor"] = false;
G2L["2f"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2f"]["BackgroundTransparency"] = 1;
G2L["2f"]["Size"] = UDim2.new(1, -2, 1, 0);
G2L["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f"]["Text"] = [[]];
G2L["2f"]["Name"] = [[ClickDetector]];


-- StarterGui.IgnGui.IgnModule.Base.Slider.ClickDetector.UICorner
G2L["30"] = Instance.new("UICorner", G2L["2f"]);
G2L["30"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.IgnGui.IgnModule.Base.TextBox
G2L["31"] = Instance.new("Frame", G2L["13"]);
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(85, 125, 255);
G2L["31"]["Size"] = UDim2.new(1, 0, 0, 22);
G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Name"] = [[TextBox]];
G2L["31"]["LayoutOrder"] = 1;
G2L["31"]["BackgroundTransparency"] = 1;


-- StarterGui.IgnGui.IgnModule.Base.TextBox.Label
G2L["32"] = Instance.new("TextLabel", G2L["31"]);
G2L["32"]["TextWrapped"] = true;
G2L["32"]["Interactable"] = false;
G2L["32"]["TextStrokeTransparency"] = 0.8;
G2L["32"]["ZIndex"] = 2;
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["TextSize"] = 16;
G2L["32"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["FontFace"] = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["32"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["BackgroundTransparency"] = 1;
G2L["32"]["Size"] = UDim2.new(1, -74, 1, 0);
G2L["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["Text"] = [[ShortText]];
G2L["32"]["Name"] = [[Label]];
G2L["32"]["Position"] = UDim2.new(0, 6, 0, 0);


-- StarterGui.IgnGui.IgnModule.Base.TextBox.TextBox
G2L["33"] = Instance.new("TextBox", G2L["31"]);
G2L["33"]["PlaceholderColor3"] = Color3.fromRGB(140, 140, 140);
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["TextWrapped"] = true;
G2L["33"]["TextSize"] = 16;
G2L["33"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["33"]["TextScaled"] = true;
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["FontFace"] = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["33"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["33"]["ClearTextOnFocus"] = false;
G2L["33"]["PlaceholderText"] = [[...]];
G2L["33"]["Size"] = UDim2.new(0, 64, 0, 16);
G2L["33"]["Position"] = UDim2.new(1, -6, 0.5, 0);
G2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["Text"] = [[Hello!]];
G2L["33"]["BackgroundTransparency"] = 0.75;


-- StarterGui.IgnGui.IgnModule.Base.TextBox.TextBox.UICorner
G2L["34"] = Instance.new("UICorner", G2L["33"]);
G2L["34"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IgnGui.IgnModule.Base.TextBox.TextBox.UIStroke
G2L["35"] = Instance.new("UIStroke", G2L["33"]);
G2L["35"]["Transparency"] = 0.79;
G2L["35"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.IgnGui.IgnModule.Base.Toggle
G2L["36"] = Instance.new("Frame", G2L["13"]);
G2L["36"]["BorderSizePixel"] = 0;
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(85, 125, 255);
G2L["36"]["Size"] = UDim2.new(1, 0, 0, 22);
G2L["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["Name"] = [[Toggle]];
G2L["36"]["LayoutOrder"] = 4;
G2L["36"]["BackgroundTransparency"] = 1;


-- StarterGui.IgnGui.IgnModule.Base.Toggle.Label
G2L["37"] = Instance.new("TextLabel", G2L["36"]);
G2L["37"]["TextWrapped"] = true;
G2L["37"]["Interactable"] = false;
G2L["37"]["TextStrokeTransparency"] = 0.8;
G2L["37"]["ZIndex"] = 2;
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["TextSize"] = 16;
G2L["37"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["37"]["FontFace"] = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["37"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["37"]["BackgroundTransparency"] = 1;
G2L["37"]["Size"] = UDim2.new(1, -38, 1, 0);
G2L["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["37"]["Text"] = [[Toggle]];
G2L["37"]["Name"] = [[Label]];
G2L["37"]["Position"] = UDim2.new(0, 6, 0, 0);


-- StarterGui.IgnGui.IgnModule.Base.Toggle.Icon
G2L["38"] = Instance.new("ImageButton", G2L["36"]);
G2L["38"]["Interactable"] = false;
G2L["38"]["BorderSizePixel"] = 0;
G2L["38"]["BackgroundTransparency"] = 1;
G2L["38"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["38"]["ZIndex"] = 2;
G2L["38"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["38"]["Image"] = [[rbxassetid://115234285192864]];
G2L["38"]["Size"] = UDim2.new(0, 24, 0, 24);
G2L["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["38"]["Name"] = [[Icon]];
G2L["38"]["Position"] = UDim2.new(1, -6, 0.5, 0);


-- StarterGui.IgnGui.IgnModule.Base.Toggle.Icon.UICorner
G2L["39"] = Instance.new("UICorner", G2L["38"]);
G2L["39"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IgnGui.IgnModule.Base.Toggle.ClickDetector
G2L["3a"] = Instance.new("TextButton", G2L["36"]);
G2L["3a"]["BorderSizePixel"] = 0;
G2L["3a"]["TextTransparency"] = 1;
G2L["3a"]["TextSize"] = 1;
G2L["3a"]["AutoButtonColor"] = false;
G2L["3a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3a"]["BackgroundTransparency"] = 1;
G2L["3a"]["Size"] = UDim2.new(1, -2, 1, 0);
G2L["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["Text"] = [[]];
G2L["3a"]["Name"] = [[ClickDetector]];


-- StarterGui.IgnGui.IgnModule.Base.Toggle.ClickDetector.UICorner
G2L["3b"] = Instance.new("UICorner", G2L["3a"]);
G2L["3b"]["CornerRadius"] = UDim.new(0, 4);
local Lib = {}

-- StarterGui.IgnGui.IgnModule
function C_2()
local script = G2L["2"];
	
	
	local Gui = script.Parent
	
	local TweenService = game:GetService('TweenService')
	local InputService = game:GetService('UserInputService')
	local Base = script.Base
	
	WindowCount = 0
	FrameCount = 0
	
	function load(str:string)
		local _,ret = pcall(function()
			loadstring(str)
		end)
		return ret
	end
	
	function FitText(Label:TextLabel)
		Label.TextScaled = false
		Label.TextScaled = not Label.TextFits
	end
	
	local UIdragify = loadstring(game:HttpGet('https://raw.githubusercontent.com/BlackfireSoon/Ignation-Hub/refs/heads/main/modules/UIdrag.luau'))()
	
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
	
	
	function step(number: number, step: number): number
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
end;

C_2()
    return Lib
