local tweenService = game:GetService("TweenService")

local Library = {}

function Library:New(name, vers)
	local GUI = {CurrentTab = nil}
	-- StarterGui.ScreenGui
	GUI["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
	GUI["1"]["Enabled"] = true;

	-- StarterGui.ScreenGui.Main
	GUI["2"] = Instance.new("Frame", GUI["1"]);
	GUI["2"]["BorderSizePixel"] = 0;
	GUI["2"]["BackgroundColor3"] = Color3.fromRGB(24, 28, 34);
	GUI["2"]["Size"] = UDim2.new(0, 800, 0, 500);
	GUI["2"]["Position"] = UDim2.new(0.2439180314540863, 0, 0.1913580298423767, 0);
	GUI["2"]["Name"] = [[Main]];

	-- StarterGui.ScreenGui.Main.Frame
	GUI["3"] = Instance.new("Frame", GUI["2"]);
	GUI["3"]["BackgroundColor3"] = Color3.fromRGB(19, 21, 25);
	GUI["3"]["Size"] = UDim2.new(0, 250, 1, 0);

	-- StarterGui.ScreenGui.Main.Frame.UICorner
	GUI["4"] = Instance.new("UICorner", GUI["3"]);
	GUI["4"]["CornerRadius"] = UDim.new(0, 32);

	-- StarterGui.ScreenGui.Main.Frame.ClientName
	GUI["5"] = Instance.new("TextLabel", GUI["3"]);
	GUI["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	GUI["5"]["FontFace"] = Font.new([[rbxassetid://12187365977]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	GUI["5"]["TextSize"] = 36;
	GUI["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	GUI["5"]["AutomaticSize"] = Enum.AutomaticSize.XY;
	GUI["5"]["Text"] = name;
	GUI["5"]["Name"] = [[ClientName]];
	GUI["5"]["BackgroundTransparency"] = 1;
	GUI["5"]["Position"] = UDim2.new(0, 0, 0, 19)

	-- StarterGui.ScreenGui.Main.Frame.Hiding
	GUI["6"] = Instance.new("Frame", GUI["3"]);
	GUI["6"]["BorderSizePixel"] = 0;
	GUI["6"]["BackgroundColor3"] = Color3.fromRGB(19, 21, 25);
	GUI["6"]["Size"] = UDim2.new(-0.9200000166893005, 250, 1, 0);
	GUI["6"]["Position"] = UDim2.new(0.9200000166893005, 0, 0, 0);
	GUI["6"]["Name"] = [[Hiding]];

	-- StarterGui.ScreenGui.Main.Frame.Navigation
	GUI["7"] = Instance.new("ScrollingFrame", GUI["3"]);
	GUI["7"]["Active"] = true;
	GUI["7"]["BorderSizePixel"] = 0;
	GUI["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	GUI["7"]["BackgroundTransparency"] = 1;
	GUI["7"]["Size"] = UDim2.new(0, 212, 0, 420);
	GUI["7"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
	GUI["7"]["ScrollBarThickness"] = 0;
	GUI["7"]["Position"] = UDim2.new(0, 19, 0, 19);
	GUI["7"]["Name"] = [[Navigation]];

	-- StarterGui.ScreenGui.Main.Frame.Navigation.UIListLayout
	GUI["8"] = Instance.new("UIListLayout", GUI["7"]);
	GUI["8"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	-- StarterGui.ScreenGui.Main.Frame.Navigation.Tab
	GUI["9"] = Instance.new("Frame", GUI["7"]);
	GUI["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	GUI["9"]["BackgroundTransparency"] = 1;
	GUI["9"]["Size"] = UDim2.new(1, 0, 0, 50);
	GUI["9"]["Name"] = [[Tab]];

	-- StarterGui.ScreenGui.Main.Frame.ClientVersion
	GUI["c"] = Instance.new("TextLabel", GUI["3"]);
	GUI["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	GUI["c"]["FontFace"] = Font.new([[rbxassetid://12187365977]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	GUI["c"]["TextSize"] = 16;
	GUI["c"]["TextColor3"] = Color3.fromRGB(53, 166, 201);
	GUI["c"]["AutomaticSize"] = Enum.AutomaticSize.XY;
	GUI["c"]["Text"] = vers
	GUI["c"]["Name"] = [[ClientVersion]];
	GUI["c"]["BackgroundTransparency"] = 1;
	GUI["c"]["Position"] = UDim2.new(0, 0, 0, 19)
	-- StarterGui.ScreenGui.Main.UICorner
	GUI["d"] = Instance.new("UICorner", GUI["2"]);
	GUI["d"]["CornerRadius"] = UDim.new(0, 32);
	
	-- StarterGui.ScreenGui.Main.Modules
	GUI["e"] = Instance.new("ScrollingFrame", GUI["2"]);
	GUI["e"]["Active"] = true;
	GUI["e"]["BorderSizePixel"] = 0;
	GUI["e"]["ScrollBarImageTransparency"] = 1;
	GUI["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	GUI["e"]["BackgroundTransparency"] = 1;
	GUI["e"]["Size"] = UDim2.new(0, 512, 0, 462);
	GUI["e"]["ScrollBarImageColor3"] = Color3.fromRGB(72, 149, 254);
	GUI["e"]["ScrollBarThickness"] = 2;
	GUI["e"]["Position"] = UDim2.new(0, 269, 0, 19);
	GUI["e"]["Name"] = [[Modules]];
	task.spawn(function()
		local watermarkTween = tweenService:Create(GUI["5"], TweenInfo.new(0.5), {
			Position = UDim2.new(0, 19, 0, 19);
		}):Play()
		tweenService:Create(GUI["c"], TweenInfo.new(1),{
			Position = UDim2.new(0, (GUI["5"].AbsoluteSize.X) + 24, 0, 19);
		}):Play()
	end)
	
	function GUI:AddTab(name, icon)
		local Tab = {Active = false, Components = {}}
		
		-- StarterGui.ScreenGui.Main.Frame.Navigation.Tab
		Tab["9"] = Instance.new("Frame", GUI["7"]);
		Tab["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Tab["9"]["BackgroundTransparency"] = 1;
		Tab["9"]["Size"] = UDim2.new(1, 0, 0, 50);
		Tab["9"]["Name"] = [[Tab]];
		
		-- StarterGui.ScreenGui.Main.Frame.Navigation.Tab.Frame
		Tab["c"] = Instance.new("Frame", Tab["9"]);
		Tab["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Tab["c"]["Size"] = UDim2.new(0, 0, 1, 0);
		Tab["c"]["Visible"] = false

		-- StarterGui.ScreenGui.Main.Frame.Navigation.Tab.Frame.UICorner
		Tab["d"] = Instance.new("UICorner", Tab["c"]);
		Tab["d"]["CornerRadius"] = UDim.new(0, 16);

		-- StarterGui.ScreenGui.Main.Frame.Navigation.Tab.Frame.UIGradient
		Tab["e"] = Instance.new("UIGradient", Tab["c"]);
		Tab["e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 230, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 171, 0))};
		Tab["e"]["Enabled"] = true
		
		-- StarterGui.ScreenGui.Main.Frame.Navigation.Tab.Icon
		Tab["a"] = Instance.new("ImageLabel", Tab["9"]);
		Tab["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Tab["a"]["Image"] = [[rbxassetid://]] .. icon;
		Tab["a"]["Size"] = UDim2.new(0, 32, 0, 32);
		Tab["a"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
		Tab["a"]["Name"] = [[Icon]];
		Tab["a"]["BackgroundTransparency"] = 1;
		Tab["a"]["Position"] = UDim2.new(0, 0, 0, 9);
		

		-- StarterGui.ScreenGui.Main.Frame.Navigation.Tab.TextLabel
		Tab["b"] = Instance.new("TextLabel", Tab["9"]);
		Tab["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Tab["b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		Tab["b"]["FontFace"] = Font.new([[rbxassetid://12187365977]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		Tab["b"]["TextSize"] = 21;
		Tab["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		Tab["b"]["AutomaticSize"] = Enum.AutomaticSize.XY;
		Tab["b"]["Text"] = name;
		Tab["b"]["BackgroundTransparency"] = 1;
		Tab["b"]["Position"] = UDim2.new(0, 43.66877782, 0.28829270601272583, 0);
		
		function Tab:AddComponent(options)
			local name = options.Name or "Component"
			local description = options.Description or "This is a description"
			local Component = {
				Amounts = 0, Toggled = false, Modules = {}
			} 
				
			-- StarterGui.ScreenGui.Main.Modules.Component
			Component["f"] = Instance.new("Frame", GUI["e"]);
			Component["f"]["BorderSizePixel"] = 0;
			Component["f"]["BackgroundColor3"] = Color3.fromRGB(18, 22, 28);
			Component["f"]["Size"] = UDim2.new(1, 0, 0, 75);
			Component["f"]["Name"] = [[Component]];
			Component["f"]["Visible"] = false

			-- StarterGui.ScreenGui.Main.Modules.Component.Title
			Component["10"] = Instance.new("TextLabel", Component["f"]);
			Component["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Component["10"]["FontFace"] = Font.new([[rbxassetid://12187365977]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Component["10"]["TextSize"] = 30;
			Component["10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
			Component["10"]["AutomaticSize"] = Enum.AutomaticSize.XY;
			Component["10"]["Text"] = name
			Component["10"]["Name"] = [[Title]];
			Component["10"]["BackgroundTransparency"] = 1;
			Component["10"]["Position"] = UDim2.new(0, 8, 0, 8);
			Component["10"]["Visible"] = false

			-- StarterGui.ScreenGui.Main.Modules.Component.Description
			Component["11"] = Instance.new("TextLabel", Component["f"]);
			Component["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Component["11"]["FontFace"] = Font.new([[rbxassetid://12187365977]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Component["11"]["TextSize"] = 16;
			Component["11"]["TextColor3"] = Color3.fromRGB(110, 110, 110);
			Component["11"]["AutomaticSize"] = Enum.AutomaticSize.XY;
			Component["11"]["Text"] = description
			Component["11"]["Name"] = [[Description]];
			Component["11"]["BackgroundTransparency"] = 1;
			Component["11"]["Position"] = UDim2.new(0, 8, 0, 51);
			Component["11"]["Visible"] = false

			-- StarterGui.ScreenGui.Main.Modules.Component.Container
			Component["12"] = Instance.new("Frame", Component["f"]);
			Component["12"]["BorderSizePixel"] = 0;
			Component["12"]["BackgroundColor3"] = Color3.fromRGB(18, 22, 28);
			Component["12"]["Size"] = UDim2.new(1, 0, 0, (30 * Component.Amounts));
			Component["12"]["Position"] = UDim2.new(0, 0, 1, 0);
			Component["12"]["Visible"] = false
			
			-- StarterGui.ScreenGui.Main.Modules.Component.Container.UIListLayout
			Component["13"] = Instance.new("UIListLayout", Component["12"]);
			Component["13"]["Padding"] = UDim.new(0, 8);
			Component["13"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

			-- StarterGui.ScreenGui.Main.Modules.Component.Container.UIPadding
			Component["14"] = Instance.new("UIPadding", Component["12"]);
			Component["14"]["PaddingRight"] = UDim.new(0, 8);
			Component["14"]["PaddingBottom"] = UDim.new(0, 8);
			Component["14"]["PaddingLeft"] = UDim.new(0, 8);
			
			function Component:ActivateModules()
				task.spawn(function()
					tweenService:Create(Component["12"], TweenInfo.new(0.5), {
						Size = UDim2.new(1, 0, 0, (30 * Component.Amounts));
					}):Play()
					for i,v in pairs(Component.Modules) do
						v:Activate()
					end
				end)

			end
			
			function Component:DeactivateModules()
				task.spawn(function()
					tweenService:Create(Component["12"], TweenInfo.new(0.5), {
						Size = UDim2.new(1, 0, 0, 0);
					}):Play()
				end)
				for i,v in pairs(Component.Modules) do
					v:Deactivate()
				end
			end
			
			function Component:IncreaseModules(modules)
				Component.Amounts = Component.Amounts + 1
				table.insert(Component.Modules, modules)
			end
			
			function Component:ToggleThe()
				Component.Toggled = not Component.Toggled
				if Component.Toggled then
					Component:ActivateModules()
				else
					Component:DeactivateModules()
				end
			end
			
			function Component:Deactivate()
				print("Hello!")
				Component["f"]["Visible"] = false
				Component["10"]["Visible"] = false
				Component["11"]["Visible"] = false
				Component["12"]["Visible"] = false
			end
			
			function Component:Activate()
				Component["f"]["Visible"] = true
				Component["10"]["Visible"] = true
				Component["11"]["Visible"] = true
				Component["12"]["Visible"] = true
			end

			function Component:Label(options)
				local Text = options.Text or "Label."
				local Label = {}
				-- StarterGui.ScreenGui.Main.Modules.Component.Container.Label
				Label["1f"] = Instance.new("TextLabel", Component["12"]);
				Label["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Label["1f"]["FontFace"] = Font.new([[rbxassetid://12187365977]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Label["1f"]["TextSize"] = 20;
				Label["1f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Label["1f"]["AutomaticSize"] = Enum.AutomaticSize.XY;
				Label["1f"]["Text"] = Text;
				Label["1f"]["Name"] = [[Label]];
				Label["1f"]["BackgroundTransparency"] = 1;
				Label["1f"]["Visible"] = false
				
				function Label:Activate()
					Label["1f"]["Visible"] = true
				end
				
				function Label:Deactivate()
					Label["1f"]["Visible"] = false
				end
				
				Component:IncreaseModules(Label)
			end
			
			function Component:Toggle(options)
				local Enabled = options.Enabled or false
				local Name = options.Name or "Toggle"
				local Callback = options.Callback or function(boolean) end
				local Toggle = {State = Enabled}
				-- StarterGui.ScreenGui.Main.Modules.Component.Container.Toggle
				Toggle["15"] = Instance.new("Frame", Component["12"]);
				Toggle["15"]["BorderSizePixel"] = 0;
				Toggle["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["15"]["BackgroundTransparency"] = 1;
				Toggle["15"]["Size"] = UDim2.new(1, 0, 0, 20);
				Toggle["15"]["Name"] = [[Toggle]];
				Toggle["15"]["Visible"] = false

				-- StarterGui.ScreenGui.Main.Modules.Component.Container.Toggle.ToggleName
				Toggle["16"] = Instance.new("TextLabel", Toggle["15"]);
				Toggle["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["16"]["FontFace"] = Font.new([[rbxassetid://12187365977]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Toggle["16"]["TextSize"] = 20;
				Toggle["16"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["16"]["AutomaticSize"] = Enum.AutomaticSize.XY;
				Toggle["16"]["Text"] = [[Example Toggle:]];
				Toggle["16"]["Name"] = [[ToggleName]];
				Toggle["16"]["BackgroundTransparency"] = 1;
				Toggle["16"]["Visible"] = false
				
				-- StarterGui.ScreenGui.Main.Modules.Component.Container.Toggle.Frame
				Toggle["17"] = Instance.new("Frame", Toggle["15"]);
				Toggle["17"]["BackgroundColor3"] = Color3.fromRGB(38, 48, 58);
				Toggle["17"]["Size"] = UDim2.new(0, 50, 1, 0);
				Toggle["17"]["Position"] = UDim2.new(0, 436, 0, 0);

				-- StarterGui.ScreenGui.Main.Modules.Component.Container.Toggle.Frame.UICorner
				Toggle["18"] = Instance.new("UICorner", Toggle["17"]);
				Toggle["18"]["CornerRadius"] = UDim.new(0, 20);

				-- StarterGui.ScreenGui.Main.Modules.Component.Container.Toggle.Frame.Frame
				Toggle["19"] = Instance.new("Frame", Toggle["17"]);
				Toggle["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["19"]["Size"] = UDim2.new(0, 18, 0, 18);
				Toggle["19"]["Position"] = Toggle and UDim2.new(0,29,0,1) or UDim2.new(0, 1, 0, 1);

				-- StarterGui.ScreenGui.Main.Modules.Component.Container.Toggle.Frame.Frame.UICorner
				Toggle["1a"] = Instance.new("UICorner", Toggle["19"]);
				Toggle["1a"]["CornerRadius"] = UDim.new(0, 20);
				
				function Toggle:Activate()
					Toggle["16"]["Visible"] = true
					Toggle["15"]["Visible"] = true
					Toggle["17"]["Visible"] = true
					Toggle["19"]["Visible"] = true
				end

				function Toggle:Deactivate()
					Toggle["16"]["Visible"] = false
					Toggle["15"]["Visible"] = false
					Toggle["17"]["Visible"] = false
					Toggle["19"]["Visible"] = true
				end
				
				Toggle["15"].InputBegan:Connect(function(input, gpe)
					print("Hello!")
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						Toggle.State = not Toggle.State
						if Toggle.State then
							tweenService:Create(Toggle["19"], TweenInfo.new(0.2), {
								Position = UDim2.new(0, 29, 0, 1)
							}):Play()
						else 
							tweenService:Create(Toggle["19"], TweenInfo.new(0.2), {
								Position = UDim2.new(0, 1, 0, 1)
							}):Play()
						end
						Callback(Toggle.State)
					end
				end)

				Component:IncreaseModules(Toggle)
			end
			
			function Component:Slider(options)
				
				local Slider = {
					Name = options.name, Min = options.min, Max = options.max, Value = options.value, Callback = options.callback
				}
				-- StarterGui.ScreenGui.Main.Modules.Component.Container.Slider
				-- StarterGui.ScreenGui.Main.Modules.Component.Container.Slider
				Slider["1b"] = Instance.new("Frame", Component["12"]);
				Slider["1b"]["BorderSizePixel"] = 0;
				Slider["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["1b"]["BackgroundTransparency"] = 1;
				Slider["1b"]["Size"] = UDim2.new(1, 0, 0, 20);
				Slider["1b"]["Name"] = [[Slider]];

				-- StarterGui.ScreenGui.Main.Modules.Component.Container.Slider.Label
				Slider["1c"] = Instance.new("TextLabel", Slider["1b"]);
				Slider["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["1c"]["FontFace"] = Font.new([[rbxassetid://12187365977]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Slider["1c"]["TextSize"] = 20;
				Slider["1c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["1c"]["AutomaticSize"] = Enum.AutomaticSize.XY;
				Slider["1c"]["Text"] = Slider.Name;
				Slider["1c"]["Name"] = [[Label]];
				Slider["1c"]["BackgroundTransparency"] = 1;
				Slider["1c"]["Visible"] = false

				-- StarterGui.ScreenGui.Main.Modules.Component.Container.Slider.Frame
				Slider["1d"] = Instance.new("Frame", Slider["1b"]);
				Slider["1d"]["BackgroundColor3"] = Color3.fromRGB(38, 48, 58);
				Slider["1d"]["Size"] = UDim2.new(0, 200, 0, 5);
				Slider["1d"]["Position"] = UDim2.new(0, 286, 0, 7);
				Slider["1d"]["Visible"] = false

				-- StarterGui.ScreenGui.Main.Modules.Component.Container.Slider.Frame.UICorner
				Slider["1e"] = Instance.new("UICorner", Slider["1d"]);


				-- StarterGui.ScreenGui.Main.Modules.Component.Container.Slider.Frame.Frame
				Slider["1f"] = Instance.new("Frame", Slider["1d"]);
				Slider["1f"]["BackgroundColor3"] = Color3.fromRGB(57, 72, 87);
				Slider["1f"]["Size"] = UDim2.new(math.clamp((Slider.Value / Slider.Max), 0, 1), 0, 1,0);
				Slider["1f"]["Visible"] = false

				-- StarterGui.ScreenGui.Main.Modules.Component.Container.Slider.Frame.Frame.UICorner
				Slider["20"] = Instance.new("UICorner", Slider["1f"]);


				-- StarterGui.ScreenGui.Main.Modules.Component.Container.Slider.Frame
				Slider["21"] = Instance.new("Frame", Slider["1d"]);
				Slider["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["21"]["Size"] = UDim2.new(0, 20, 0, 20);
				Slider["21"]["Position"] = UDim2.new(math.clamp((Slider.Value / Slider.Max), 0, 1), 0, 0, -7);
				Slider["21"]["Visible"] = false
			
				
				Slider["24"] = Instance.new("TextLabel", Slider["1b"]);
				Slider["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["24"]["FontFace"] = Font.new([[rbxassetid://12187365977]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Slider["24"]["TextSize"] = 20;
				Slider["24"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["24"]["AutomaticSize"] = Enum.AutomaticSize.XY;
				Slider["24"]["Text"] = Slider.Value;
				Slider["24"]["Name"] = [[Text]];
				Slider["24"]["BackgroundTransparency"] = 1;
				Slider["24"]["Position"] = UDim2.new(0, 250, 0, 0)
				Slider["24"]["Visible"] = false

				-- StarterGui.ScreenGui.Main.Modules.Component.Container.Slider.Frame.UICorner
				Slider["22"] = Instance.new("UICorner", Slider["21"]);
				Slider["22"]["CornerRadius"] = UDim.new(0, 20);
				
				Slider["1d"].InputBegan:Connect(function(input, gpe)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						local SizeScale = math.clamp((input.Position.X - Slider["1d"].AbsolutePosition.X) / Slider["1d"].AbsoluteSize.X, 0, 1)
						Slider.Value = (Slider.Min + ((Slider.Max - Slider.Min) * SizeScale))
						Slider["24"]["Text"] = tostring(math.round(Slider.Value))
						task.spawn(function()
							tweenService:Create(Slider["1f"], TweenInfo.new(0.25), {
								Size = UDim2.new(SizeScale, 0, 1, 0)
							}):Play()
							tweenService:Create(Slider["21"], TweenInfo.new(0.25), {
								Position = UDim2.new(SizeScale, 0, 0, -7)
							}):Play()
							print(SizeScale)
						end)
						Slider.Callback(Slider.Value)
					end
				end)
				
				function Slider:Deactivate()
					Slider["1c"]["Visible"] = false
					Slider["1d"]["Visible"] = false
					Slider["1f"]["Visible"] = false
					Slider["21"]["Visible"] = false
					Slider["24"]["Visible"] = false
				end
				
				function Slider:Activate()
					Slider["1c"]["Visible"] = true
					Slider["1d"]["Visible"] = true
					Slider["1f"]["Visible"] = true
					Slider["21"]["Visible"] = true
					Slider["24"]["Visible"] = true
				end
				
				Component:IncreaseModules(Slider)
			end
			
			table.insert(Tab.Components, Component)
			
			
			Component["f"].InputBegan:Connect(function(input, gpe)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					Component:ToggleThe()
				end
			end)
			return Component
		end
		
		function Tab:Activate()
			if not Tab.Active then
				print("Activating " .. name)
				if GUI.CurrentTab ~= nil then
					GUI.CurrentTab:Deactivate()
				end
				Tab.Active = true
				tweenService:Create(Tab["a"], TweenInfo.new(0.5), {Position = UDim2.new(0,15,0,9)}):Play()
				tweenService:Create(Tab["b"], TweenInfo.new(0.5), {Position = UDim2.new(0, 58.66877782, 0.28829270601272583, 0)}):Play()
				Tab["c"]["Visible"] = true
				tweenService:Create(Tab["c"], TweenInfo.new(0.5), {Size = UDim2.new(0, Tab["b"].AbsoluteSize.X + 80, 1, 0)}):Play()
				for i, v in pairs(Tab.Components)  do
					v:Activate()
				end
				GUI.CurrentTab = Tab
			end
		end
		
		function Tab:Deactivate()
			if Tab.Active then
				print(name .. " is deactiviating...")
				Tab.Active = false
				tweenService:Create(Tab["a"], TweenInfo.new(0.5), {Position = UDim2.new(0,0,0,9)}):Play()
				tweenService:Create(Tab["b"], TweenInfo.new(0.5), {Position = UDim2.new(0.20598480105400085, 0, 0.28829270601272583, 0)}):Play()
				Tab["c"]["Visible"] = true
				tweenService:Create(Tab["c"], TweenInfo.new(0.5), {Size = UDim2.new(0, 0, 1, 0)}):Play()
				for i, v in pairs(Tab.Components)  do
					v:Deactivate()
				end
			end
		end
		
		Tab["9"].InputBegan:Connect(function(input, gpe)
			if gpe then return end
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				Tab:Activate()
			end
		end)
		
		
		return Tab
	end
	return GUI
end	
