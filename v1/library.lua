-- the noat ui library
-- author - noat
local G2L = {}; -- lol
local tween_service = game:GetService("TweenService")
local Library = {};
local UserInput = game:GetService("UserInputService")

function Library:New(name, version, description, icon)
	local Core = {
		CurrentTab = nil, Activated = true
	}
	-- StarterGui.NoatGui
	G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
	G2L["1"]["Name"] = [[NoatGui]];
	G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

	-- StarterGui.NoatGui.MainFrame
	G2L["2"] = Instance.new("Frame", G2L["1"]);
	G2L["2"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
	G2L["2"]["Size"] = UDim2.new(0, 804, 0, 455);
	G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2"]["Position"] = UDim2.new(0.2580024003982544, 0, 0.21851849555969238, 0);
	G2L["2"]["Name"] = [[MainFrame]];

	-- StarterGui.NoatGui.MainFrame.Logo
	G2L["3"] = Instance.new("ImageLabel", G2L["2"]);
	G2L["3"]["BorderSizePixel"] = 0;
	G2L["3"]["ScaleType"] = Enum.ScaleType.Fit;
	G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["3"]["Image"] = if icon then icon else [[rbxassetid://13161465302]];
	G2L["3"]["Size"] = UDim2.new(0, 65, 0, 65);
	G2L["3"]["Name"] = [[Logo]];
	G2L["3"]["BackgroundTransparency"] = 1;
	G2L["3"]["Position"] = UDim2.new(0.019900497049093246, 0, 0.035164836794137955, 0);

	-- StarterGui.NoatGui.MainFrame.ScriptName
	G2L["4"] = Instance.new("TextLabel", G2L["2"]);
	G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	G2L["4"]["TextSize"] = 30;
	G2L["4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["4"]["Size"] = UDim2.new(0, 80, 0, 28);
	G2L["4"]["Text"] = name;
	G2L["4"]["Name"] = [[ScriptName]];
	G2L["4"]["BackgroundTransparency"] = 1;
	G2L["4"]["Position"] = UDim2.new(0.11691542714834213, 0, 0.035164836794137955, 0);

	-- StarterGui.NoatGui.MainFrame.Description
	G2L["5"] = Instance.new("TextLabel", G2L["2"]);
	G2L["5"]["BackgroundColor3"] = Color3.fromRGB(201, 201, 21);
	G2L["5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["5"]["TextSize"] = 16;
	G2L["5"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
	G2L["5"]["Size"] = UDim2.new(0, 80, 0, 18);
	G2L["5"]["Text"] = description
	G2L["5"]["Name"] = [[Description]];
	G2L["5"]["BackgroundTransparency"] = 1;
	G2L["5"]["Position"] = UDim2.new(0.11691541969776154, 0, 0.13846154510974884, 0);

	-- StarterGui.NoatGui.MainFrame.ScriptVersion
	G2L["6"] = Instance.new("TextLabel", G2L["2"]);
	G2L["6"]["BackgroundColor3"] = Color3.fromRGB(201, 201, 21);
	G2L["6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["6"]["TextSize"] = 16;
	G2L["6"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
	G2L["6"]["Size"] = UDim2.new(0, 80, 0, 18);
	G2L["6"]["Text"] = [[Version: ]] .. version;
	G2L["6"]["Name"] = [[ScriptVersion]];
	G2L["6"]["BackgroundTransparency"] = 1;
	G2L["6"]["Position"] = UDim2.new(0.11691541969776154, 0, 0.09890110790729523, 0);

	-- StarterGui.NoatGui.MainFrame.TabNavigation
	G2L["7"] = Instance.new("ScrollingFrame", G2L["2"]);
	G2L["7"]["Active"] = true;
	G2L["7"]["ScrollBarImageTransparency"] = 1;
	G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["7"]["VerticalScrollBarInset"] = Enum.ScrollBarInset.ScrollBar;
	G2L["7"]["BackgroundTransparency"] = 1;
	G2L["7"]["Size"] = UDim2.new(0, 211, 0, 337);
	G2L["7"]["ScrollBarImageColor3"] = Color3.fromRGB(201, 11, 11);
	G2L["7"]["ScrollBarThickness"] = 5;
	G2L["7"]["Position"] = UDim2.new(0.019900497049093246, 0, 0.224175825715065, 0);
	G2L["7"]["Name"] = [[TabNavigation]];

	-- StarterGui.NoatGui.MainFrame.TabNavigation.UIListLayout
	G2L["8"] = Instance.new("UIListLayout", G2L["7"]);
	G2L["8"]["Padding"] = UDim.new(0, 8);
	G2L["8"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
	
	-- StarterGui.NoatGui.MainFrame.TabModules
	G2L["11"] = Instance.new("ScrollingFrame", G2L["2"]);
	G2L["11"]["Active"] = true;
	G2L["11"]["ScrollBarImageTransparency"] = 1;
	G2L["11"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
	G2L["11"]["Size"] = UDim2.new(0, 547, 0, 337);
	G2L["11"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["11"]["BorderColor3"] = Color3.fromRGB(101, 101, 101);
	G2L["11"]["Position"] = UDim2.new(0.29975125193595886, 0, 0.224175825715065, 0);
	G2L["11"]["Name"] = [[TabModules]];

	-- StarterGui.NoatGui.MainFrame.TabModules.UIListLayout
	G2L["12"] = Instance.new("UIListLayout", G2L["11"]);
	G2L["12"]["Padding"] = UDim.new(0, 8);
	G2L["12"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	-- StarterGui.NoatGui.MainFrame.TabModules.UIPadding
	G2L["13"] = Instance.new("UIPadding", G2L["11"]);
	G2L["13"]["PaddingTop"] = UDim.new(0, 12);
	G2L["13"]["PaddingRight"] = UDim.new(0, 8);
	G2L["13"]["PaddingBottom"] = UDim.new(0, 8);
	G2L["13"]["PaddingLeft"] = UDim.new(0, 12);

	function Core:Close()
		G2L["1"]["Enabled"] = false
		Core.Activated = false
	end
	
	function Core:Open()
		G2L["1"]["Enabled"] = true
		Core.Activated = true
	end
	
	
	function Core:AddTab(tabName)
		local Tab = {
			Active = false, Hover = false, Items = {}
		}
		
		-- StarterGui.NoatGui.MainFrame.TabNavigation.Tab
		Tab["9"] = Instance.new("Frame", G2L["7"]);
		Tab["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Tab["9"]["BackgroundTransparency"] = 1;
		Tab["9"]["Size"] = UDim2.new(1, 0, 0, 32);
		Tab["9"]["Position"] = UDim2.new(0, 0, -0.04395604506134987, 0);
		Tab["9"]["Name"] = [[Tab]];

		-- StarterGui.NoatGui.MainFrame.TabNavigation.Tab.Icon
		Tab["a"] = Instance.new("ImageLabel", Tab["9"]);
		Tab["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Tab["a"]["Image"] = [[rbxassetid://13161564416]];
		Tab["a"]["Size"] = UDim2.new(0, 32, 1, 0);
		Tab["a"]["Name"] = [[Icon]];
		Tab["a"]["ImageColor3"] = Color3.fromRGB(100, 100, 100)
		Tab["a"]["BackgroundTransparency"] = 1;

		-- StarterGui.NoatGui.MainFrame.TabNavigation.Tab.TabName
		Tab["b"] = Instance.new("TextLabel", Tab["9"]);
		Tab["b"]["SizeConstraint"] = Enum.SizeConstraint.RelativeYY;
		Tab["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Tab["b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		Tab["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		Tab["b"]["TextSize"] = 16;
		Tab["b"]["TextColor3"] = Color3.fromRGB(100, 100, 100)
		Tab["b"]["Size"] = UDim2.new(1, 0, 1, 0);
		Tab["b"]["Text"] = tabName;
		Tab["b"]["Name"] = [[TabName]];
		Tab["b"]["BackgroundTransparency"] = 1;
		Tab["b"]["Position"] = UDim2.new(0, 40, 0, 0);

		-- StarterGui.NoatGui.MainFrame.TabNavigation.Tab.Activated
		Tab["c"] = Instance.new("Frame", Tab["9"]);
		Tab["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Tab["c"]["Size"] = UDim2.new(0, 0, 0, 0)
		Tab["c"]["Position"] = UDim2.new(0.9900000691413879, 0, 0, 0);
		Tab["c"]["Name"] = [[Activated]];
		
		Tab["9"].MouseEnter:Connect(function(x, y)
			if not Tab.Active then
				tween_service:Create(Tab["c"], TweenInfo.new(0.5), {Size = UDim2.new(0.017, 0, 1, 0)}):Play()
			end
		end)
		
		Tab["9"].MouseLeave:Connect(function(x, y)
			if not Tab.Active then
				tween_service:Create(Tab["c"], TweenInfo.new(0.5), {Size = UDim2.new(0, 0, 0, 0)}):Play()
			end
		end)
		
		Tab["9"].InputBegan:Connect(function(input, gpe)
			if gpe then return end
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				Tab:Activate()
			end
		end)
		
		function Tab:Activate()
			if not Tab.Active then
				print("Activating " .. tabName)
				if Core.CurrentTab ~= nil then
					Core.CurrentTab:Deactivate()
				end
				Tab.Active = true
				tween_service:Create(Tab["a"], TweenInfo.new(0.5), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
				tween_service:Create(Tab["b"], TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
				tween_service:Create(Tab["c"], TweenInfo.new(0.5), {Size = UDim2.new(0.017, 0, 1, 0)}):Play()
				for i, v in pairs(Tab.Items)  do
					v:Activate()
				end
				Core.CurrentTab = Tab
			end
		end
		
		function Tab:Deactivate()
			if Tab.Active then
				print(tabName .. " is deactiviating...")
				Tab.Active = false
				tween_service:Create(Tab["a"], TweenInfo.new(0.5), {ImageColor3 = Color3.fromRGB(100, 100, 100)}):Play()
				tween_service:Create(Tab["b"], TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(100, 100, 100)}):Play()
				tween_service:Create(Tab["c"], TweenInfo.new(0.5), {Size = UDim2.new(0, 0, 0, 0)}):Play()
				for i, v in pairs(Tab.Items)  do
					v:Deactivate()
				end
			end
		end
		
		function Tab:Label(name) 
			local Label = {}
			-- StarterGui.NoatGui.MainFrame.TabModules.Label
			Label["1c"] = Instance.new("TextLabel", G2L["11"]);
			Label["1c"]["TextWrapped"] = true;
			Label["1c"]["TextYAlignment"] = Enum.TextYAlignment.Top;
			Label["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Label["1c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			Label["1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Label["1c"]["TextSize"] = 16;
			Label["1c"]["TextColor3"] = Color3.fromRGB(101, 101, 101);
			Label["1c"]["AnchorPoint"] = Vector2.new(0, 0.5);
			Label["1c"]["AutomaticSize"] = Enum.AutomaticSize.XY;
			Label["1c"]["Text"] = name;
			Label["1c"]["Name"] = [[Label]];
			Label["1c"]["BackgroundTransparency"] = 1;
			Label["1c"]["Visible"] = false
			
			print(name)
			
			function Label:Activate()
				Label["1c"]["Visible"] = true
			end
			
			function Label:Deactivate()
				Label["1c"]["Visible"] = false
			end
			
			function Label:SetText(name)
				Label["1c"]["Text"] = name
			end
			
			table.insert(Tab.Items, Label)
			return Label
		end
		
		function Tab:Toggle(name, toggle, callback)
			local Toggle = {Name = name, State = toggle, Function = callback}
			-- StarterGui.NoatGui.MainFrame.TabModules.Toggle
			Toggle["14"] = Instance.new("Frame", G2L["11"]);
			Toggle["14"]["BorderSizePixel"] = 0;
			Toggle["14"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
			Toggle["14"]["Size"] = UDim2.new(0, 522, 0, 68);
			Toggle["14"]["Position"] = UDim2.new(0.021937843412160873, 0, 0.019582686945796013, 0);
			Toggle["14"]["Name"] = [[Toggle]];
			Toggle["14"]["Visible"] = false

			-- StarterGui.NoatGui.MainFrame.TabModules.Toggle.UIPadding
			Toggle["15"] = Instance.new("UIPadding", Toggle["14"]);
			Toggle["15"]["PaddingTop"] = UDim.new(0, 8);
			Toggle["15"]["PaddingRight"] = UDim.new(0, 8);
			Toggle["15"]["PaddingBottom"] = UDim.new(0, 8);
			Toggle["15"]["PaddingLeft"] = UDim.new(0, 8);

			-- StarterGui.NoatGui.MainFrame.TabModules.Toggle.ImageLabel
			Toggle["16"] = Instance.new("ImageLabel", Toggle["14"]);
			Toggle["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Toggle["16"]["Image"] = [[rbxassetid://13163838552]];
			Toggle["16"]["Size"] = UDim2.new(0, 52, 1, 0);
			Toggle["16"]["BackgroundTransparency"] = 1;
			Toggle["16"]["Visible"] = false;

			-- StarterGui.NoatGui.MainFrame.TabModules.Toggle.TextLabel
			Toggle["17"] = Instance.new("TextLabel", Toggle["14"]);
			Toggle["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Toggle["17"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			Toggle["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Toggle["17"]["TextSize"] = 24;
			Toggle["17"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
			Toggle["17"]["Size"] = UDim2.new(0, 200, 0, 50);
			Toggle["17"]["Text"] = name;
			Toggle["17"]["BackgroundTransparency"] = 1;
			Toggle["17"]["Position"] = UDim2.new(0, 58, 0, 0);
			Toggle["17"]["Visible"] = false

			-- StarterGui.NoatGui.MainFrame.TabModules.Toggle.TickBox
			Toggle["18"] = Instance.new("Frame", Toggle["14"]);
			Toggle["18"]["BorderSizePixel"] = 0;
			Toggle["18"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
			Toggle["18"]["Size"] = UDim2.new(0, 60, 0, 25);
			Toggle["18"]["Position"] = UDim2.new(0, 434, 0, 13);
			Toggle["18"]["Name"] = [[TickBox]];
			Toggle["18"]["Visible"] = false;

			-- StarterGui.NoatGui.MainFrame.TabModules.Toggle.TickBox.UICorner
			Toggle["19"] = Instance.new("UICorner", Toggle["18"]);
			Toggle["19"]["CornerRadius"] = UDim.new(0, 16);

			-- StarterGui.NoatGui.MainFrame.TabModules.Toggle.TickBox.Frame
			Toggle["1a"] = Instance.new("Frame", Toggle["18"]);
			Toggle["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Toggle["1a"]["Size"] = UDim2.new(0, 19, 0, 19);
			Toggle["1a"]["Position"] = UDim2.new(0, 4, 0, 3);
			Toggle["1a"]["Visible"] = false

			-- StarterGui.NoatGui.MainFrame.TabModules.Toggle.TickBox.Frame.UICorner
			Toggle["1b"] = Instance.new("UICorner", Toggle["1a"]);
			
			function Toggle:Activate()
				Toggle["14"]["Visible"] = true
				Toggle["16"]["Visible"] = true
				Toggle["17"]["Visible"] = true
				Toggle["18"]["Visible"] = true
				Toggle["1a"]["Visible"] = true
			end
			
			function Toggle:Deactivate()
				Toggle["14"]["Visible"] = false
				Toggle["16"]["Visible"] = false
				Toggle["17"]["Visible"] = false
				Toggle["18"]["Visible"] = false
				Toggle["1a"]["Visible"] = false
			end
			
			Toggle["14"].MouseEnter:Connect(function(x, y)
				tween_service:Create(Toggle["14"], TweenInfo.new(0.5), {BackgroundColor3 = Color3.fromRGB(100, 100, 100)}):Play()
			end)
			
			Toggle["14"].MouseLeave:Connect(function(x, y)
				tween_service:Create(Toggle["14"], TweenInfo.new(0.5), {BackgroundColor3 = Color3.fromRGB(51, 51, 51)}):Play()
			end)
			
			Toggle["14"].InputBegan:Connect(function(input, gpe)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					print("Hey, i am called!")
					Toggle.State = not Toggle.State
					if Toggle.State then
						tween_service:Create(Toggle["1a"], TweenInfo.new(0.5), {
							Position = UDim2.new(0, 36, 0, 3)
						}):Play()
					else
						tween_service:Create(Toggle["1a"], TweenInfo.new(0.5), {
							Position = UDim2.new(0, 4, 0, 3)
						}):Play()
					end
					Toggle.Function(Toggle.State)
				end
				--if input == Enum.UserInputType.MouseButton1 then

				--end
			end)
			
			table.insert(Tab.Items, Toggle)
			
			return Toggle
		end
		
		function Tab:Slider(name, min, max, value, callback)
			local Slider = {Name = name, Minimum = min, Maximum = max, Value = value, Callback = callback}
			-- StarterGui.NoatGui.MainFrame.TabModules.Slider
			Slider["1d"] = Instance.new("Frame", G2L["11"]);
			Slider["1d"]["BorderSizePixel"] = 0;
			Slider["1d"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
			Slider["1d"]["Size"] = UDim2.new(0, 522, 0, 68);
			Slider["1d"]["Position"] = UDim2.new(0.021937843412160873, 0, 0.019582686945796013, 0);
			Slider["1d"]["Name"] = [[Slider]];
			Slider["1d"]["Visible"] = false

			-- StarterGui.NoatGui.MainFrame.TabModules.Slider.UIPadding
			Slider["1e"] = Instance.new("UIPadding", Slider["1d"]);
			Slider["1e"]["PaddingTop"] = UDim.new(0, 8);
			Slider["1e"]["PaddingRight"] = UDim.new(0, 8);
			Slider["1e"]["PaddingBottom"] = UDim.new(0, 8);
			Slider["1e"]["PaddingLeft"] = UDim.new(0, 8);

			-- StarterGui.NoatGui.MainFrame.TabModules.Slider.Name
			Slider["1f"] = Instance.new("TextLabel", Slider["1d"]);
			Slider["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Slider["1f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			Slider["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Slider["1f"]["TextSize"] = 24;
			Slider["1f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
			Slider["1f"]["Size"] = UDim2.new(0, 200, 0, 29);
			Slider["1f"]["Text"] = [[Slider...]];
			Slider["1f"]["Name"] = [[Name]];
			Slider["1f"]["BackgroundTransparency"] = 1;
			Slider["1f"]["Visible"] = false

			-- StarterGui.NoatGui.MainFrame.TabModules.Slider.SliderBar
			Slider["20"] = Instance.new("Frame", Slider["1d"]);
			Slider["20"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
			Slider["20"]["Size"] = UDim2.new(1, 0, 0, 4);
			Slider["20"]["Position"] = UDim2.new(0, 0, 0, 48);
			Slider["20"]["Name"] = [[SliderBar]];
			Slider["20"]["Visible"] = false

			-- StarterGui.NoatGui.MainFrame.TabModules.Slider.SliderBar.UICorner
			Slider["21"] = Instance.new("UICorner", Slider["20"]);


			-- StarterGui.NoatGui.MainFrame.TabModules.Slider.SliderBar.SliderProgress
			Slider["22"] = Instance.new("Frame", Slider["20"]);
			Slider["22"]["BorderSizePixel"] = 0;
			Slider["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			local progressSize = math.clamp((Slider.Maximum - Slider.Minimum) / Slider.Value, 0, 1)
			Slider["22"]["Size"] = UDim2.new(progressSize, 0, 1, 0);
			Slider["22"]["Name"] = [[SliderProgress]];
			Slider["22"]["Visible"] = false

			-- StarterGui.NoatGui.MainFrame.TabModules.Slider.SliderBar.SliderProgress.UICorner
			Slider["23"] = Instance.new("UICorner", Slider["22"]);


			-- StarterGui.NoatGui.MainFrame.TabModules.Slider.Value
			Slider["24"] = Instance.new("TextLabel", Slider["1d"]);
			Slider["24"]["TextYAlignment"] = Enum.TextYAlignment.Top;
			Slider["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Slider["24"]["TextXAlignment"] = Enum.TextXAlignment.Right;
			Slider["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Slider["24"]["TextSize"] = 24;
			Slider["24"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
			Slider["24"]["Size"] = UDim2.new(0.11857707798480988, 0, 0.4038461446762085, 0);
			Slider["24"]["Text"] = tostring(Slider.Value);
			Slider["24"]["Name"] = [[Value]];
			Slider["24"]["BackgroundTransparency"] = 1;
			Slider["24"]["Position"] = UDim2.new(0.879666268825531, 0, -0.018099550157785416, 0);
			Slider["24"]["Visible"] = false
			
			function Slider:Activate()
				Slider["1d"]["Visible"] = true
				Slider["1f"]["Visible"] = true
				Slider["20"]["Visible"] = true
				Slider["22"]["Visible"] = true
				Slider["24"]["Visible"] = true
			end
			
			function Slider:Deactivate()
				Slider["1d"]["Visible"] = false
				Slider["1f"]["Visible"] = false
				Slider["20"]["Visible"] = false
				Slider["22"]["Visible"] = false
				Slider["24"]["Visible"] = false
			end
			
			Slider["1d"].MouseEnter:Connect(function(x, y)
				tween_service:Create(Slider["1d"], TweenInfo.new(.5), {BackgroundColor3 = Color3.fromRGB(100, 100, 100)}):Play()
			end)
			Slider["1d"].MouseLeave:Connect(function(x, y)
				tween_service:Create(Slider["1d"], TweenInfo.new(.5), {BackgroundColor3 = Color3.fromRGB(51, 51, 51)}):Play()
			end)
			Slider["1d"].InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					local SizeScale = math.clamp((input.Position.X - Slider["1d"].AbsolutePosition.X) / Slider["1d"].AbsoluteSize.X, 0, 1)
					Slider.Value = (Slider.Minimum + ((Slider.Maximum - Slider.Minimum) * SizeScale))
					Slider["24"]["Text"] = string.format("%.1f", Slider.Value)
					tween_service:Create(Slider["22"], TweenInfo.new(0.5), {Size = UDim2.new(SizeScale, 0, 1, 0)}):Play()
					Slider.Callback(Slider.Value)
				end
			end)
			
			table.insert(Tab.Items, Slider)
			
			return Slider
		end
	
		
		return Tab
	end
	UserInput.InputBegan:Connect(function(input, gameProcessed)
		if input.KeyCode == Enum.KeyCode.RightControl then
			if Core.Activated then
				Core:Close()
			else
				Core:Open()
			end
		end
	end)
	return Core
end
		
return Library
