if game.PlaceId == (8540346411) then
    
local hum = game.Players.LocalPlayer.Character.HumanoidRootPart
local currentX = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X
local currentY = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
local currentZ = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
	Name = "#Tide Hub - Rebirth Champions X",
	LoadingTitle = "Loading #Tide Hub",
	LoadingSubtitle = "By | fortunatesouls#8803",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil,
		FileName = "TideHub"
	},
        Discord = {
        	Enabled = false,
        	Invite = "n2QxZaMMtC",
        	RememberJoins = true
        },
	KeySystem = false,
	KeySettings = {
		Title = "Tide Hub Key System",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/n2QxZaMMtC)",
		FileName = "TideKey",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = "#TideHub"
	}
})

local Tab = Window:CreateTab("Credits", 7072706216)

local Button = Tab:CreateButton({
   Name = "Copy Discord Link",
   Callback = function()
    setclipboard("https://discord.gg/n2QxZaMMtC")
   end,
})

Tab:CreateParagraph({Title = "fortunatesouls#8803", Content = "Main Script Developer / OWNER"})

local Tab = Window:CreateTab("Player", 7072724538)

local Slider = Tab:CreateSlider({
	Name = "Change Walkspeed",
	Range = {16, 170},
	Increment = 5,
	Suffix = "Walkspeed",
	CurrentValue = 10,
	Flag = "Slider1",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end,
})

local Slider = Tab:CreateSlider({
	Name = "Change Jumppower",
	Range = {50, 200},
	Increment = 10,
	Suffix = "Jumppower",
	CurrentValue = 10,
	Flag = "Slider1",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end,
})

local Slider = Tab:CreateSlider({
	Name = "Change Field Of View",
	Range = {70, 120},
	Increment = 1,
	Suffix = "FOV",
	CurrentValue = 70,
	Flag = "Slider1",
	Callback = function(Value)
		game.Workspace.CurrentCamera.FieldOfView = Value
	end,
})

local Tab = Window:CreateTab("Teleports", 7072718631)

local Button = Tab:CreateButton({
	Name = "Christmas Event Area",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-685.560059, 6.99718809, 1303.31616, 0.939506292, -7.12683956e-08, 0.342531681, 9.66435891e-08, 1, -5.7013299e-08, -0.342531681, 8.66678462e-08, 0.939506292)
		wait(0.001)
        local args = {
            [1] = "Christmas"
        }
        game:GetService("ReplicatedStorage").Events.WorldBoost:FireServer(unpack(args))
        wait(0.001)
        local args = {
            [1] = "Christmas"
        }
        game:GetService("ReplicatedStorage").Events.StoreWorldBoost:FireServer(unpack(args))
    end,
})

local Button = Tab:CreateButton({
	Name = "New Years 2023 Event",
	Callback = function()
	    hum.CFrame = CFrame.new(257.648926, 8.35011005, 4.03359079, 0.807554185, 0, 0.589793503, 0, 1, 0, -0.589793503, 0, 0.807554185)
	    local args = {
            [1] = "2023"
        }
        game:GetService("ReplicatedStorage").Functions.RequestMap:InvokeServer(unpack(args))
        wait(0.005)
        local args = {
            [1] = "2023"
        }
        game:GetService("ReplicatedStorage").Functions.RetrievedMap:InvokeServer(unpack(args))
        wait(0.005)
        local args = {
            [1] = "2023"
        }
        game:GetService("ReplicatedStorage").Events.WorldBoost:FireServer(unpack(args))
        wait(0.005)
        local args = {
            [1] = "2023"
        }
        game:GetService("ReplicatedStorage").Events.StoreWorldBoost:FireServer(unpack(args))
	end,
})

local Tab = Window:CreateTab("Farming", 7072707588)
local Toggle = Tab:CreateToggle({
	Name = "Christmas Present Autofarm",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
            getgenv().presentautofarm = true
            while getgenv().presentautofarm ~= false do
            wait(1)
            for i, v in pairs(game:GetService("Workspace").Scripts.PresentsCollect.Storage:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                    firetouchinterest(hum, v.Parent, 0)
                end
            end
        end
    else
        getgenv().presentautofarm = false
        end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Christmas Present Autofarm #2",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
            getgenv().presentautofarm2 = true
            while getgenv().presentautofarm2 ~= false do
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(currentX, currentY, currentZ)
            
            if game:GetService("Workspace").Scripts.PresentsCollect.Storage.Present.primary then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Scripts.PresentsCollect.Storage.Present.primary.CFrame
            end
        end
    else
        getgenv().presentautofarm2 = false
        end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Tap",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
            getgenv().autotap = true
            while getgenv().autotap ~= false do
                wait(0.00000000001) -- You Can Change Wait Time 0.0000000001 - 0.000000000000000000000000000000000000001
                game:GetService("ReplicatedStorage").Events.Click3:FireServer()
            end
    else
        getgenv().autotap = false
    end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Rebirth",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    getgenv().autorebirth = true
        while getgenv().autorebirth ~= false do
            wait(0.1)
            local args = {
                [1] = 1
            }
            game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
        end
    else
        getgenv().autorebirth = false
    end
	end,
})

local Tab = Window:CreateTab("Christmas Event 2022", 7072707588)

local Toggle = Tab:CreateToggle({
	Name = "Auto Hatch Snow Egg [ COST 100 PRESENTS ]",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    getgenv().autohatch = true
		    while getgenv().autohatch ~= false do
		        wait(0.5)
		        local args = {
                    [1] = "Snow",
                    [2] = "Single"
            }
            game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(unpack(args))
		    end
        else
            getgenv().autohatch = false
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Hatch Christmas Egg [ COST 1,000 PRESENTS ]",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    getgenv().autohatch = true
		    while getgenv().autohatch ~= false do
		        wait(0.5)
		        local args = {
                    [1] = "Christmas",
                    [2] = "Single"
            }
            game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(unpack(args))
		    end
	        else
	            getgenv().autohatch = false
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Hatch Frozen Egg [ COST 5,000 PRESENTS ]",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    getgenv().autohatch = true
		    while getgenv().autohatch ~= false do
		        wait(0.5)
		        local args = {
                    [1] = "Frozen",
                    [2] = "Single"
            }
            game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(unpack(args))
		    end
	        else
	            getgenv().autohatch = false
		end
	end,
})

local Paragraph = Tab:CreateParagraph({Title = "Safe Auto Hatching Below", Content = "Please Use These For A Lower Ban Chance, Only 1 Of My 13 Alts Was Banned."})

local Button = Tab:CreateButton({
	Name = "Unanchor [ USE THIS IF SAFE HATCH DOESNT AUTO TP TO GROUND ]",
	Callback = function()
		hum.Anchored = false
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "[ SAFE ] Auto Hatch Snow Egg",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    getgenv().safehatch = true
		    while getgenv().safehatch ~= false do
		        wait(1)
		        hum.CFrame = CFrame.new(-741.838562, -4.97477913, 1344.33179, -0.112090379, -0.0185150448, 0.993525505, 1.94007285e-07, 0.999826372, 0.0186324883, -0.993697882, 0.00208871043, -0.1120709)
		        hum.Anchored = true
		        wait(0.09)
		        local args = {
                    [1] = "Snow",
                    [2] = "Single"
                }
                game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(unpack(args))
		    end
	        else
	            hum.Anchored = false
	            hum.Anchored = false
	            getgenv().safehatch = false
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "[ SAFE ] Auto Hatch Christmas Egg",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    getgenv().safehatch = true
		    while getgenv().safehatch ~= false do
		        hum.CFrame = CFrame.new(-746.003113, -9.40524673, 1320.64905, -0.0334342532, 0.00797738321, 0.99940908, -5.95869487e-08, 0.999968171, -0.00798184704, -0.999440849, -0.00026692453, -0.03343319)
		        hum.Anchored = true
		        wait(0.2)
		        local args = {
                    [1] = "Christmas",
                    [2] = "Single"
                }
                game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(unpack(args))
		    end
	        else
	            hum.Anchored = false
	            getgenv().safehatch = false
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "[ SAFE ] Auto Hatch Frozen Egg",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    getgenv().safehatch = true
		    while getgenv().safehatch ~= false do
		        hum.CFrame = CFrame.new(-743.747253, -10.1659565, 1309.33728, -0.0624286421, -0.0481612943, 0.99688673, 5.96403993e-08, 0.998835027, 0.0482554249, -0.998049378, 0.00301256776, -0.062355909)
		        hum.Anchored = true
		        wait(0.2)
		        local args = {
                    [1] = "Frozen",
                    [2] = "Single"
                }
                game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(unpack(args))
		    end
	        else
	            hum.Anchored = false
	            getgenv().safehatch = false
		end
	end,
})

local Button = Tab:CreateButton({
	Name = "Claim Christmas Chest [ GROUP MEMBERS ONLY ]",
	Callback = function()
	    local args = {
            [1] = "Christmas"
    }
    game:GetService("ReplicatedStorage").Events.Chest:FireServer(unpack(args))
	end,
})

local Button = Tab:CreateButton({
	Name = "Claim Christmas Pass",
	Callback = function()
	    local args = {
            [1] = "normal",
            [2] = 1
    }
    game:GetService("ReplicatedStorage").Functions.ChristmasPass:InvokeServer(unpack(args))
    wait(1.5)
    local args = {
            [1] = "normal",
            [2] = 2
    }
    game:GetService("ReplicatedStorage").Functions.ChristmasPass:InvokeServer(unpack(args))
    wait(1.5)
    local args = {
            [1] = "normal",
            [2] = 3
    }
    game:GetService("ReplicatedStorage").Functions.ChristmasPass:InvokeServer(unpack(args))
    wait(1.5)
    local args = {
            [1] = "normal",
            [2] = 4
    }
    game:GetService("ReplicatedStorage").Functions.ChristmasPass:InvokeServer(unpack(args))
    wait(1.5)
    local args = {
            [1] = "normal",
            [2] = 5
    }
    game:GetService("ReplicatedStorage").Functions.ChristmasPass:InvokeServer(unpack(args))
    wait(1.5)
    local args = {
            [1] = "normal",
            [2] = 6
    }
    game:GetService("ReplicatedStorage").Functions.ChristmasPass:InvokeServer(unpack(args))
    wait(1.5)
    local args = {
            [1] = "normal",
            [2] = 7
    }
    game:GetService("ReplicatedStorage").Functions.ChristmasPass:InvokeServer(unpack(args))
    wait(1.5)
    local args = {
            [1] = "normal",
            [2] = 8
    }
    game:GetService("ReplicatedStorage").Functions.ChristmasPass:InvokeServer(unpack(args))
    wait(1.5)
    local args = {
            [1] = "normal",
            [2] = 9
    }
    game:GetService("ReplicatedStorage").Functions.ChristmasPass:InvokeServer(unpack(args))
    wait(1.5)
	end,
})
end

if game.PlaceId == (1862413075) then
    if game.PlaceId == (1862413075) then
        local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
        local Window = Rayfield:CreateWindow({
        Name = "#Tide Hub - Farming Simulator",
        LoadingTitle = "Loading #Tide Hub",
        LoadingSubtitle = "By | fortunatesouls#8803",
        ConfigurationSaving = {
            Enabled = true,
            FolderName = nil,
            FileName = "TideHub"
        },
            Discord = {
                Enabled = false,
                Invite = "n2QxZaMMtC",
                RememberJoins = true
            },
        KeySystem = false,
        KeySettings = {
            Title = "Tide Hub Key System",
            Subtitle = "Key System",
            Note = "Join the discord (discord.gg/n2QxZaMMtC)",
            FileName = "TideKey",
            SaveKey = true,
            GrabKeyFromSite = false,
            Key = "#TideHub"
        }
    })
    
    local Tab = Window:CreateTab("Credits", 7072706216)
    
    local Button = Tab:CreateButton({
       Name = "Copy Discord Link",
       Callback = function()
        setclipboard("https://discord.gg/n2QxZaMMtC")
       end,
    })
    
    Tab:CreateParagraph({Title = "fortunatesouls#8803", Content = "Main Script Developer / OWNER"})
    
    local Tab = Window:CreateTab("Player", 7072724538)
    
    local Slider = Tab:CreateSlider({
        Name = "Change Walkspeed",
        Range = {16, 170},
        Increment = 5,
        Suffix = "Walkspeed",
        CurrentValue = 10,
        Flag = "Slider1",
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end,
    })
    
    local Slider = Tab:CreateSlider({
        Name = "Change Jumppower",
        Range = {50, 200},
        Increment = 10,
        Suffix = "Jumppower",
        CurrentValue = 10,
        Flag = "Slider1",
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end,
    })
    
    local Slider = Tab:CreateSlider({
        Name = "Change Field Of View",
        Range = {70, 120},
        Increment = 1,
        Suffix = "FOV",
        CurrentValue = 70,
        Flag = "Slider1",
        Callback = function(Value)
            game.Workspace.CurrentCamera.FieldOfView = Value
        end,
    })
    
    local Tab = Window:CreateTab("Teleports", 7072718631)
    local Label = Tab:CreateLabel("There Are No Teleports For This Game At The Moment. :(")
    
    local Tab = Window:CreateTab("Farming", 7072707588)
    local Toggle = Tab:CreateToggle({
        Name = "Auto Pick",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            if Value then
            getgenv().autowheat = true
            while getgenv().autowheat == true do
                wait(0.1)
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Farming Hoe").FireTool:FireServer()
            end
        else
            getgenv().autowheat = false
            end
        end,
    })
    
    local Toggle = Tab:CreateToggle({
        Name = "Auto Sell",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
        if Value then
            getgenv().autosell = true
            while getgenv().autosell == true do
                game:GetService("Workspace").Stores.SellPoints.Normal.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                wait(0.1)
                game:GetService("Workspace").Stores.SellPoints.Normal.Circle.CFrame = CFrame.new(0,0,0)
            end
        else
            getgenv().autosell = false
        end
        end,
    })
    
    local Toggle = Tab:CreateToggle({
        Name = "Auto Sell [ FOR VEHICLES ONLY ]",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            if Value then
            getgenv().autosell = true
            while getgenv().autosell == true do
                game:GetService("Workspace").Stores.SellPoints.Vehicle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                wait(0.1)
                game:GetService("Workspace").Stores.SellPoints.Vehicle.CFrame = CFrame.new(0,0,0)
            end
        else
            getgenv().autosell = false
        end
        end,
    })
    end
end

if game.PlaceId == (2512643572) then
    -- Vars
    local eggType = "eggType"
    local currentX = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X
    local currentY = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
    local currentZ = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
    
    local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
    local Window = Rayfield:CreateWindow({
        Name = "#Tide Hub - Bubble Gum Simulator",
	    LoadingTitle = "Loading #Tide Hub",
	    LoadingSubtitle = "By | fortunatesouls#8803",
	    ConfigurationSaving = {
	        Enabled = true,
		    FolderName = nil,
		    FileName = "TideHub"
	},
	Discord = {
	    Enabled = false,
        Invite = "n2QxZaMMtC",
        RememberJoins = true
    },
	KeySystem = false,
	KeySettings = {
		Title = "Tide Hub Key System",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/n2QxZaMMtC)",
		FileName = "TideKey",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = "#TideHub"
	}
})

local Tab = Window:CreateTab("Credits", 7072706216)

local Button = Tab:CreateButton({
   Name = "Copy Discord Link",
   Callback = function()
    setclipboard("https://discord.gg/n2QxZaMMtC")
   end,
})

Tab:CreateParagraph({Title = "fortunatesouls#8803", Content = "Main Script Developer / OWNER"})

local Tab = Window:CreateTab("Player", 7072724538)

local Slider = Tab:CreateSlider({
	Name = "Change Walkspeed",
	Range = {16, 420},
	Increment = 5,
	Suffix = "Walkspeed",
	CurrentValue = 10,
	Flag = "Slider1",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end,
})

local Slider = Tab:CreateSlider({
	Name = "Change Jumppower",
	Range = {50, 500},
	Increment = 10,
	Suffix = "Jumppower",
	CurrentValue = 10,
	Flag = "Slider1",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end,
})

local Slider = Tab:CreateSlider({
	Name = "Change Field Of View",
	Range = {70, 120},
	Increment = 1,
	Suffix = "FOV",
	CurrentValue = 70,
	Flag = "Slider1",
	Callback = function(Value)
		game.Workspace.CurrentCamera.FieldOfView = Value
	end,
})

local Tab = Window:CreateTab("Teleports", 7072718631)
local Label = Tab:CreateLabel("There Are No Teleports For This Game At The Moment. :(")

local Tab = Window:CreateTab("Farming", 7072707588)

local Button = Tab:CreateButton({
	Name = "Teleport To Christmas World [ DO THIS BEFORE SNOWFLAKE AUTOFARM ]",
	Callback = function()
	    local args = {
            [1] = "Teleport",
            [2] = "EventSpawn"
        } 
        game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Snowflake Autofarm",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(snowflakeAutofarm)
		if snowflakeAutofarm then
		    getgenv().snowflake = true
		    while getgenv().snowflake ~= false do
		        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-147.846375, 293.228729, 1632.64258, 0.876551747, 1.50350807e-08, -0.481307596, -3.80400422e-08, 1, -3.8040092e-08, 0.481307596, 5.16530712e-08, 0.876551747)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-147.684891, 292.926849, 1627.04419, 0.996541262, -3.4747341e-08, -0.0830991119, 3.80400103e-08, 1, 3.80400813e-08, 0.0830991119, -4.10696011e-08, 0.996541262)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-140.60849, 292.926849, 1624.55286, 0.66275245, 3.27469007e-09, -0.748838544, 3.80401382e-08, 1, 3.80400884e-08, 0.748838544, -5.36970859e-08, 0.66275245)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-133.495193, 292.728729, 1618.25684, 0.662776589, -3.27301297e-09, -0.748817205, -3.80400742e-08, 1, -3.80401026e-08, 0.748817205, 5.36971534e-08, 0.662776589)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-124.852089, 293.060303, 1609.99316, 0.757938802, 4.01744682e-09, -0.65232569, -3.80400778e-08, 1, -3.80402057e-08, 0.65232569, 5.36466693e-08, 0.757938802)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-120.438194, 279.617096, 1603.20837, 0.832337201, -1.05777413e-08, -0.554269552, 3.80400706e-08, 1, 3.80400209e-08, 0.554269552, -5.27465787e-08, 0.832337201)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-113.037636, 273.880859, 1594.87073, 0.77595818, -2.18158096e-11, -0.630784333, -1.04357053e-11, 1, -4.74226734e-11, 0.630784333, 4.33806914e-11, 0.77595818)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-106.823471, 265.82486, 1586.94739, 0.795889974, -2.12715479e-12, -0.605441272, 2.52701472e-14, 1, -3.48017643e-12, 0.605441272, 2.75453792e-12, 0.795889974)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-97.8157959, 253.260117, 1576.71484, 0.354075879, -6.47701198e-11, -0.935216725, 2.29674851e-12, 1, -6.83872473e-11, 0.935216725, 2.20663175e-11, 0.354075879)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-87.4442749, 249.323944, 1570.44385, 0.517941713, -4.37553032e-12, -0.855415881, 4.73075843e-13, 1, -4.82865093e-12, 0.855415881, 2.09628322e-12, 0.517941713)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-76.6746902, 246.30896, 1565.27722, -0.0751533061, 4.0791388e-08, -0.997171998, 3.80401417e-08, 1, 3.80401239e-08, 0.997171998, -3.50737217e-08, -0.0751533061)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-66.7171326, 243.641159, 1563.74609, 0.147182956, 3.20269926e-08, -0.989109278, 3.80400742e-08, 1, 3.80401275e-08, 0.989109278, -4.32246487e-08, 0.147182956)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-56.1990585, 244.934723, 1562.11804, 0.0859412849, 3.46301832e-08, -0.99630022, 3.80401204e-08, 1, 3.80401417e-08, 0.99630022, -4.11685974e-08, 0.0859412849)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-46.2854576, 246.091583, 1560.8396, 0.110562384, -2.04505995e-11, -0.993869185, -1.62520969e-11, 1, -2.23847069e-11, 0.993869185, 1.86273653e-11, 0.110562384)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-42.0584373, 253.734375, 1560.41577, 0.100891612, -9.22792082e-15, -0.994897425, -3.27121047e-17, 1, -9.27856577e-15, 0.994897425, 9.68674608e-16, 0.100891612)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-36.0884857, 254.81633, 1559.81543, 0.0999685973, -3.42066394e-16, -0.994990587, -4.44795533e-20, 1, -3.43793044e-16, 0.994990587, 3.44127649e-17, 0.0999685973)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-30.6183662, 254.816681, 1559.26709, 0.0998725668, -8.95688745e-19, -0.995000243, -1.75748435e-21, 1, -9.00365831e-19, 0.995000243, 9.16705466e-20, 0.0998725668)
                wait(0.07)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(currentX, currentY, currentZ)
                
                if game:GetService("Workspace").ChristmasMap.Houses.House.Activation.Root then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").ChristmasMap.Houses.House.Activation.Root.CFrame
                    end
                    wait()
		    end
                else
                    getgenv().snowflake = false
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Blow",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    getgenv().bubbleBlow = true
		    while getgenv().bubbleBlow ~= false do
		        local args = {
		            [1] = "BlowBubble"
		        }
                game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
                wait()
		    end
		else
		    getgenv().bubbleBlow = false
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Sell",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    getgenv().autoSell = true
		    while getgenv().autoSell ~= false do
		        local args = {
		            [1] = "SellBubble",
                    [2] = "Sell"
		        }
                game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
                wait()
		    end
	    else
	        getgenv().autoSell = false
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Sell [ Candy World ]",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    getgenv().autoSell = true
		    while getgenv().autoSell ~= false do
		        local args = {
                    [1] = "SellBubble",
                    [2] = "CandySell"
                }
                game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
                wait()
            end
        
        else
            getgenv().autoSell = false
end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Sell [ Beach World ]",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    getgenv().autoSell = true
            while getgenv().autoSell ~= false do
                local args = {
                    [1] = "SellBubble",
                    [2] = "BeachSell"
                }
                game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
                wait()
            end
        else
            getgenv().autoSell = false
end
	end,
})

local Tab = Window:CreateTab("Misc", 7059346373)

local Button = Tab:CreateButton({
	Name = "Boost FPS",
	Callback = function()
		print("Deleted Over 20 In-Game Model's.")
		game:GetService("Workspace").Platforms:Destroy()
		game:GetService("Workspace").PickupSpawns:Destroy()
		game:GetService("Workspace").Cutscenes:Destroy()
		game:GetService("Workspace").Pickups:Destroy()
		game:GetService("Workspace").Bubbles:Destroy()
		game:GetService("Workspace").Pets:Destroy()
		game:GetService("Workspace").Model:Destroy()
		game:GetService("Workspace").BubbleBoard:Destroy()
		game:GetService("Workspace").Sign:Destroy()
		game:GetService("Workspace").HatchBoard:Destroy()
		game:GetService("Workspace").VIPSign:Destroy()
		game:GetService("Workspace").GuessThatPet:Destroy()
		game:GetService("Workspace").Sign:Destroy()
		game:GetService("Workspace").Fireworks:Destroy()
		game:GetService("Workspace").EggSigns:Destroy()
		game:GetService("Workspace").TwitchSign:Destroy()
		game:GetService("Workspace").CreditsBoard:Destroy()
		game:GetService("Workspace").RankBoard:Destroy()
		game:GetService("Workspace").Sign:Destroy()
		game:GetService("Workspace").GumMachine:Destroy()
		game:GetService("Workspace").Podiums:Destroy()
		game:GetService("Workspace").TwitchSign:Destroy()
		game:GetService("Workspace").VIPDoor:Destroy()
		game:GetService("Workspace").GamesDoor:Destroy()
		game:GetService("Workspace").Worlds.Overworld.Sign:Destroy()
		game:GetService("Workspace").Worlds.Overworld.Mountains.Model:Destroy()
		game:GetService("Workspace").Trampolines:Destroy()
		game:GetService("Workspace").Worlds.Overworld.Mountains.Model:Destroy()
		game:GetService("Workspace").Worlds.Overworld.Sign:Destroy()
		game:GetService("Workspace").WorldDoor:Destroy()
		game:GetService("Workspace").Worlds.Overworld.Ground.Part:Destroy()
		game:GetService("Workspace").Worlds.Overworld.Mountains.Model:Destroy()
		game:GetService("Workspace").Model.MeshPart:Destroy()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spin To Win",
	Callback = function()
	    local args = {
	        [1] = "SpinToWin"
        } 
        game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
	end,
})
end

if game.PlaceId == (142823291) then

local crateName = "crateName"
local hum = game.Players.LocalPlayer.Character.HumanoidRootPart
local workspaceC = workspace:GetChildren()	
local currentX = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X
local currentY = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
local currentZ = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
	Name = "#Tide Hub - Murder Mystery 2",
	LoadingTitle = "Loading #Tide Hub",
	LoadingSubtitle = "By | fortunatesouls#8803",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil,
		FileName = "TideHub"
	},
        Discord = {
        	Enabled = false,
        	Invite = "n2QxZaMMtC",
        	RememberJoins = true
        },
	KeySystem = false,
	KeySettings = {
		Title = "Tide Hub Key System",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/n2QxZaMMtC)",
		FileName = "TideKey",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = "#TideHub"
	}
})

local Tab = Window:CreateTab("Credits")

local Button = Tab:CreateButton({
   Name = "Copy Discord Link",
   Callback = function()
    setclipboard("https://discord.gg/n2QxZaMMtC")
   end,
})

Tab:CreateParagraph({Title = "fortunatesouls#8803", Content = "Main Script Developer / OWNER"})

local Tab = Window:CreateTab("Main")

local Button = Tab:CreateButton({
	Name = "Grab Gun",
	Callback = function()
	    if workspace:FindFirstChild("GunDrop") ~= nil then
	        
	        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild("GunDrop").CFrame	
		    wait(.55)	
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(currentX, currentY, currentZ)
			
			else
			    Rayfield:Notify({
                Title = "Grab Gun Failed",
                Content = "The Gun Is Not Dropped At The Moment.",
                Duration = 6.5,
                Image = 69,
                Actions = {
                Ignore = {
                Name = "Ok",
                Callback = function()
                print("Gun Grab Failed")
            end
		},
	},
})
end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Grab Gun",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    getgenv().autograb = true
		    while getgenv().autograb ~= false do
		        wait(0.5)
		        if workspace:FindFirstChild("GunDrop") ~= nil then
		            
		            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild("GunDrop").CFrame	
		            wait(.55)	
			        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(currentX, currentY, currentZ)
		        end
		    end
		    else
		        getgenv().autograb = false
		    end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Notify Roles",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(c)
		getgenv().notifyRoleToggle = c
		
		while notifyRoleToggle do
		    task.wait()
		    if notifyRoleToggle == true then
		        for _, v in next, game:GetService("Players"):GetPlayers() do
                        if v.Backpack:FindFirstChild("Knife") or v.Character:FindFirstChild("Knife") then
                            Rayfield:Notify({
                                Title = "Murderer Notification",
                                Content = "The Murderer Is " ..v.Name,
                                Duration = 4,
                                Image = 69,
                                Actions = {
                                    Ignore = {
                                        Name = "Okay!",
                                        Callback = function()
                                            print("---")
            end
		},
	},
})
                            print("murderer is " ..v.Name)
                        end
	                if v.Backpack:FindFirstChild("Gun") or v.Character:FindFirstChild("Gun") then
	                    Rayfield:Notify({
                            Title = "Sherrif Notification",
                            Content = "The Sherrif Is " ..v.Name,
                            Duration = 4,
                            Image = 60,
                            Actions = {
                                Ignore = {
                                Name = "Okay!",
                                Callback = function()
                                print("____")
                end
		},
	},
})
	end
end
task.wait(30)
elseif notifyRoleToggle == false then
    break
	end
end
	end,
})

local Button = Tab:CreateButton({
	Name = "Elf Bodyguard",
	Callback = function()
		game:GetService("Workspace").Lobby.Elfs.ElfGift.Elf.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	end,
})

local Tab = Window:CreateTab("Player")

local Slider = Tab:CreateSlider({
	Name = "Change Walkspeed",
	Range = {16, 170},
	Increment = 5,
	Suffix = "Walkspeed",
	CurrentValue = 10,
	Flag = "Slider1",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end,
})

local Slider = Tab:CreateSlider({
	Name = "Change Jumppower",
	Range = {50, 200},
	Increment = 10,
	Suffix = "Jumppower",
	CurrentValue = 10,
	Flag = "Slider1",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end,
})

local Slider = Tab:CreateSlider({
	Name = "Change Field Of View",
	Range = {70, 120},
	Increment = 1,
	Suffix = "FOV",
	CurrentValue = 70,
	Flag = "Slider1",
	Callback = function(Value)
		game.Workspace.CurrentCamera.FieldOfView = Value
	end,
})

local Tab = Window:CreateTab("Teleports")

local plrs = {}
local selectedPlr

for _, v in next, game:GetService("Players"):GetPlayers() do
    if v.Name ~= game.Players.LocalPlayer.Name then
        table.insert(plrs, v.Name)
    end
end

local Dropdown = Tab:CreateDropdown({
	Name = "Select Player",
	Options = plrs,
	CurrentOption = "nil",
	Flag = "players",
	Callback = function(x)
	  	  selectedPlr = x
	end,
})

local Button = Tab:CreateButton({
	Name = "Teleport To Selected Player",
	Callback = function()
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[selectedPlr].Character.HumanoidRootPart.CFrame
	end,
})

local Button = Tab:CreateButton({
	Name = "[TELEPORT] Spawn",
	Callback = function()
		print("Teleported To Spawn")
		wait(0.01)
		hum.CFrame = CFrame.new(-153.537415, 142.774963, -0.539376974, -0.0355111398, -4.25320279e-10, -0.999369264, -5.08040832e-10, 1, -4.07536199e-10, 0.999369264, 4.93248331e-10, -0.0355111398)
	end,
})

local Button = Tab:CreateButton({
	Name = "Teleport To Murderer",
	Callback = function()
	    for _, v in next, game:GetService("Players"):GetPlayers() do
	        if v.Backpack:FindFirstChild("Knife") or v.Character:FindFirstChild("Knife") then
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
            end
        end
	end,
})

local Button = Tab:CreateButton({
	Name = "Teleport To Sherrif",
	Callback = function()
	    for _, v in next, game:GetService("Players"):GetPlayers() do
	        if v.Backpack:FindFirstChild("Gun") or v.Character:FindFirstChild("Gun") then
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
            end
        end
	end,
})


local Tab = Window:CreateTab("Auto Farming")

local Paragraph = Tab:CreateParagraph({Title = "!!! TIDE HUB WARNING !!!", Content = "We Are Not Lie-Able For In-game Bans, If You Get Banned This Is Your Fault."})

local Slider = Tab:CreateSlider({
	Name = "Coin Farming Speed",
	Range = {2.5, 10},
	Increment = 0.5,
	Suffix = "Farming Speed",
	CurrentValue = 2.5,
	Flag = "Slider1",
	Callback = function(speed)
		getgenv().farmingSpeed = speed
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Coin Autofarm",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    getgenv().coinfarming = true
		    while getgenv().coinfarming ~= false do
		        wait(getgenv().farmingSpeed)
		        for i,v in pairs(workspaceC) do	    
		            local vChildren = v:GetChildren()
		            for i,child in pairs(vChildren) do
		                if child.Name == "CoinContainer" then
		                    
		                    if child.Coin_Server:FindFirstChild("Coin") ~= nil then
		                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = child.Coin_Server.Coin.CFrame
		                    else
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(currentX, currentY, currentZ)
                            end
			            end
	                end
		        end
		    end
            else
                getgenv().coinfarming = false
		end
	end,
})

local Tab = Window:CreateTab("Event")
local Section = Tab:CreateSection("Christmas 2022 Event")

local Button = Tab:CreateButton({
	Name = "[USELESS] - Buy Christmas Evo Set",
	Callback = function()
	    local args = {
            [1] = 112956652
    }
    game:GetService("ReplicatedStorage").Remotes.Shop.GetPack:FireServer(unpack(args))
	end,
})


local Button = Tab:CreateButton({
	Name = "[USELESS] - Buy 1,000 Christmas Tokens",
	Callback = function()
	    local args = {
            [1] = "1000",
            [2] = "SnowTokens2022"
    }
    game:GetService("ReplicatedStorage").Remotes.Shop.PurchaseProduct:FireServer(unpack(args))
	end,
})

local Button = Tab:CreateButton({
	Name = "[USELESS] - Buy 4,000 Christmas Tokens",
	Callback = function()
	    local args = {
            [1] = "4000",
            [2] = "SnowTokens2022"
    }
    game:GetService("ReplicatedStorage").Remotes.Shop.PurchaseProduct:FireServer(unpack(args))
	end,
})

local Button = Tab:CreateButton({
	Name = "[USELESS] - Buy 8,000 Christmas Tokens",
	Callback = function()
	    local args = {
            [1] = "8000",
            [2] = "SnowTokens2022"
    }
    game:GetService("ReplicatedStorage").Remotes.Shop.PurchaseProduct:FireServer(unpack(args))
	end,
})

local Button = Tab:CreateButton({
	Name = "[USELESS] - Buy 20,000 Christmas Tokens",
	Callback = function()
	    local args = {
            [1] = "20000",
            [2] = "SnowTokens2022"
    }
    game:GetService("ReplicatedStorage").Remotes.Shop.PurchaseProduct:FireServer(unpack(args))
	end,
})

local Button = Tab:CreateButton({
	Name = "[USELESS] - Buy 65,000 Christmas Tokens",
	Callback = function()
	    local args = {
            [1] = "65000",
            [2] = "SnowTokens2022"
    }
    game:GetService("ReplicatedStorage").Remotes.Shop.PurchaseProduct:FireServer(unpack(args))
	end,
})

local Button = Tab:CreateButton({
	Name = "[USELESS] - Buy 140,000 Christmas Tokens",
	Callback = function()
	    local args = {
            [1] = "140000",
            [2] = "SnowTokens2022"
    }
    game:GetService("ReplicatedStorage").Remotes.Shop.PurchaseProduct:FireServer(unpack(args))
	end,
})
end

if game.PlaceId == (2788229376) then

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
	Name = "#Tide Hub - Da Hood [ Selling Tools ]",
	LoadingTitle = "Loading #Tide Hub",
	LoadingSubtitle = "By | fortunatesouls#8803",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil,
		FileName = "TideHub"
	},
        Discord = {
        	Enabled = false,
        	Invite = "n2QxZaMMtC",
        	RememberJoins = true
        },
	KeySystem = false,
	KeySettings = {
		Title = "Tide Hub Key System",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/n2QxZaMMtC)",
		FileName = "TideKey",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = "#TideHub"
	}
})

Rayfield:Notify({
    Title = "#Tide Hub - Notification",
    Content = "I'm Sorry For The Lack Of Features, I Will Add Some More Features In A Week Or So.",
    Duration = 10,
    Image = 69,
    Actions = { -- Notification Buttons
        Ignore = {
            Name = "Okay!",
            Callback = function()
                print("----------")
            end
		},
	},
})

local Tab = Window:CreateTab("Credits")

local Button = Tab:CreateButton({
   Name = "Copy Discord Link",
   Callback = function()
    setclipboard("https://discord.gg/n2QxZaMMtC")
   end,
})

Tab:CreateParagraph({Title = "fortunatesouls#8803", Content = "Main Script Developer / OWNER"})

local Tab = Window:CreateTab("Dropping Tools")

local Toggle = Tab:CreateToggle({
	Name = "Auto Drop",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    _G.autodrop = true
		    while _G.autodrop ~= false do
		        wait(1)
		        local args = {
                    [1] = "DropMoney",
                    [2] = "10000"
            }
            game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
		    end
		    
		    else
		        _G.autodrop = false
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Block",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    _G.autoblock = true
		    while _G.autoblock ~= false do
		        wait(1)
		        local args = {
                    [1] = "Block",
                    [2] = true
            }
            game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
		    end
		    
		    else
		        local args = {
                    [1] = "Block",
                    [2] = false
            }
            game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
            _G.autoblock = false
		end

	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Snowball Crash [ NOT FINISHED ]",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    _G.snowCrash = true
		    while _G.snowCrash ~= false do
		        wait(0.09)
		        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(297.382202, 106.791412, -621.970032, -0.999522209, -3.78825682e-09, 0.0309082307, -6.09226491e-09, 1, -7.44493391e-08, -0.0309082307, -7.46020703e-08, -0.999522209)
		        local args = {
                    [1] = "PickSnow"
            } 
            game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
		    end
		    
		    else
		        _G.snowCrash = false
		end
	end,
})
end

if game.PlaceId == (7560156054) then

local hum = game.Players.LocalPlayer.Character.HumanoidRootPart
local currentX = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X
local currentY = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
local currentZ = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
    
    local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
    local Window = Rayfield:CreateWindow({
        Name = "#Tide Hub - Clicker Simulator",
        LoadingTitle = "Loading #Tide Hub",
        LoadingSubtitle = "By | fortunatesouls#8803",
        ConfigurationSaving = {
            Enabled = true,
            FolderName = nil,
            FileName = "TideHub"
        },
            Discord = {
                Enabled = false,
                Invite = "n2QxZaMMtC",
                RememberJoins = true
            },
        KeySystem = false,
        KeySettings = {
            Title = "Tide Hub Key System",
            Subtitle = "Key System",
            Note = "Join the discord (discord.gg/n2QxZaMMtC)",
            FileName = "TideKey",
            SaveKey = true,
            GrabKeyFromSite = false,
            Key = "#TideHub"
        }
    })
    
    local Tab = Window:CreateTab("Credits", 7072706216)
    
    local Button = Tab:CreateButton({
       Name = "Copy Discord Link",
       Callback = function()
        setclipboard("https://discord.gg/n2QxZaMMtC")
       end,
    })
    
    Tab:CreateParagraph({Title = "fortunatesouls#8803", Content = "Main Script Developer / OWNER"})
    
    local Tab = Window:CreateTab("Main", 7072707588)
    
    local Button = Tab:CreateButton({
        Name = "Claim Snowflakes Chest",
        Callback = function()
            local args = {
                [1] = "Christmas"
        }
        game:GetService("ReplicatedStorage").SpecWork.Shared.Network.TeleportTo:InvokeServer(unpack(args))
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1013.59045, 207.007492, 12.6154356, -0.711412907, -4.71497579e-08, 0.702774227, -3.33405445e-08, 1, 3.33405268e-08, -0.702774227, 2.88006091e-10, -0.711412907)
        end,
    })
    
    local Toggle = Tab:CreateToggle({
        Name = "Auto Collect Random Gifts",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            if Value then
                getgenv().autoclaim = true
                while getgenv().autoclaim ~= false do
                    wait(30)
                    local args = {
                        [1] = "LocalScript",
                        [2] = "CollectGifts"
            }
            game:GetService("ReplicatedStorage").Events.ClientToServer.ClientToServerEvent:FireServer(unpack(args))
                end
        else
            getgenv().autoclaim = false
            end
        end,
    })
    
    local Toggle = Tab:CreateToggle({
        Name = "Auto Rebirth",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            if Value then
                getgenv().autorebirth = true
                while getgenv().autorebirth ~= false do
                    wait(0.5)
                    local args = {
                        [1] = "LocalScript",
                        [2] = "RequestRebirth",
                        [3] = 1,
                        [4] = false,
                        [5] = false
            }
            game:GetService("ReplicatedStorage").Events.ClientToServer.ClientToServerEvent:FireServer(unpack(args))
                end
        else
            getgenv().autorebirth = false
            end
        end,
    })
    
    local Tab = Window:CreateTab("Player", 7072724538)
    
    local Slider = Tab:CreateSlider({
        Name = "Change Walkspeed",
        Range = {16, 170},
        Increment = 5,
        Suffix = "Walkspeed",
        CurrentValue = 10,
        Flag = "Slider1",
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end,
    })
    
    local Slider = Tab:CreateSlider({
        Name = "Change Jumppower",
        Range = {50, 200},
        Increment = 10,
        Suffix = "Jumppower",
        CurrentValue = 10,
        Flag = "Slider1",
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end,
    })
    
    local Slider = Tab:CreateSlider({
        Name = "Change Field Of View",
        Range = {70, 120},
        Increment = 1,
        Suffix = "FOV",
        CurrentValue = 70,
        Flag = "Slider1",
        Callback = function(Value)
            game.Workspace.CurrentCamera.FieldOfView = Value
        end,
    })
    
    local Tab = Window:CreateTab("Teleports", 7072718631)
    
    local Button = Tab:CreateButton({
        Name = "Christmas 2022 Event",
        Callback = function()
            local args = {
                [1] = "Christmas"
        }
        game:GetService("ReplicatedStorage").SpecWork.Shared.Network.TeleportTo:InvokeServer(unpack(args))
        end,
    })
    
    local Tab = Window:CreateTab("Farming", 7072707588)
    
    local Toggle = Tab:CreateToggle({
        Name = "Snowflake Autofarm",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            if Value then
                getgenv().snowflakeautofarm = true
                while getgenv().snowflakeautofarm ~= false do
                wait(1)
                for i, v in pairs(game:GetService("Workspace").Zones.Christmas.Drops:GetDescendants()) do
                    if v.Name == "TouchInterest" and v.Parent then
                        firetouchinterest(hum, v.Parent, 0)
                    end
                end
            end
        else
            getgenv().snowflakeautofarm = false
            end
        end,
    })
    
    local Toggle = Tab:CreateToggle({
        Name = "Snowflake Autofarm #2",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            if Value then
                getgenv().snowflakeautofarm2 = true
                while getgenv().snowflakeautofarm2 ~= false do
                    wait(0.07)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(currentX, currentY, currentZ)
                    
                    if game:GetService("Workspace").Zones.Christmas.Drops.Drop.Snowflake then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Zones.Christmas.Drops.Drop.Snowflake.CFrame
                    end
                end
                else
                    getgenv().snowflakeautofarm2 = false
            end
        end,
    })

    local Paragraph = Tab:CreateParagraph({Title = "[ - SAFE - ] Snowflake Autofarm", Content = "!!!ONLY USE SAFE AUTOFARM FOR A LOWER CHANCE OF A BAN!!!"})
    
    local Toggle = Tab:CreateToggle({
        Name = "[ SAFE ] Snowflake Autofarm",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            if Value then
                getgenv().safeautofarm = true
                while getgenv().safeautofarm ~= false do
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-997.736084, 108.528824, 1.96740603, -0.840537071, -0.0174973421, 0.541471243, 1.16415322e-09, 0.999478281, 0.0322975889, -0.541753888, 0.0271473229, -0.84009)
                wait(0.065)
                for i, v in pairs(game:GetService("Workspace").Zones.Christmas.Drops:GetDescendants()) do
                    if v.Name == "TouchInterest" and v.Parent then
                        firetouchinterest(hum, v.Parent, 0)
                    end
                end
            end
        else
            getgenv().safeautofarm = false
            end
        end,
    })

    local Tab = Window:CreateTab("Christmas 2022 Event")
    
    local Toggle = Tab:CreateToggle({
        Name = "Auto Hatch Christmas Egg [ COST 1,000 SNOWFLAKES ]",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            if Value then
                getgenv().autohatch = true
                while getgenv().autohatch ~= false do
                    wait(0.5)
                    local args = {
                        [1] = "Client",
                        [2] = "PurchaseEgg2",
                        [3] = "Christmas",
                        [4] = false,
                        [5] = false
                    }
                    game:GetService("ReplicatedStorage").Events.ClientToServer.ClientToServerFunction:InvokeServer(unpack(args))
                end
            else
                getgenv().autohatch = false
            end
        end,
    })

    local Toggle = Tab:CreateToggle({
        Name = "Auto Hatch Christmas Egg [ COST 3,000 SNOWFLAKES ]",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            if Value then
                getgenv().autohatch2 = true
                while getgenv().autohatch2 ~= false do
                    wait(0.5)
                    local args = {
                        [1] = "Client",
                        [2] = "PurchaseEgg2",
                        [3] = "Christmas",
                        [4] = true,
                        [5] = false
                    }
                    game:GetService("ReplicatedStorage").Events.ClientToServer.ClientToServerFunction:InvokeServer(unpack(args))
                end
            else
                getgenv().autohatch2 = false
            end
        end,
    })

    local Paragraph = Tab:CreateParagraph({Title = "[ - SAFE - ] Auto Hatch", Content = "!!!ONLY USE SAFE HATCHING FOR A LOWER CHANCE OF A BAN!!!"})
    
    local Toggle = Tab:CreateToggle({
        Name = "[ SAFE ] Auto Hatch Christmas Egg [ COST 1,000 Snowflakes ]",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            if Value then
                getgenv().safeautohatch = true
                while getgenv().safeautohatch ~= false do
                    wait(0.05)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-997.736084, 108.528824, 1.96740603, -0.840537071, -0.0174973421, 0.541471243, 1.16415322e-09, 0.999478281, 0.0322975889, -0.541753888, 0.0271473229, -0.84009)
                    wait(0.5)
                    local args = {
                        [1] = "Client",
                        [2] = "PurchaseEgg2",
                        [3] = "Christmas",
                        [4] = false,
                        [5] = false
                    }
                    game:GetService("ReplicatedStorage").Events.ClientToServer.ClientToServerFunction:InvokeServer(unpack(args))
                end
            else
                getgenv().safeautohatch = false
            end
        end,
    })

    local Toggle = Tab:CreateToggle({
        Name = "[ SAFE ] Auto Hatch Christmas Egg [ COST 3,000 Snowflakes ]",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            if Value then
                getgenv().safeautohatch2 = true
                while getgenv().safeautohatch2 ~= false do
                    wait(0.05)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-997.736084, 108.528824, 1.96740603, -0.840537071, -0.0174973421, 0.541471243, 1.16415322e-09, 0.999478281, 0.0322975889, -0.541753888, 0.0271473229, -0.84009)
                    wait(0.5)
                    local args = {
                        [1] = "Client",
                        [2] = "PurchaseEgg2",
                        [3] = "Christmas",
                        [4] = true,
                        [5] = false
                    }
                    game:GetService("ReplicatedStorage").Events.ClientToServer.ClientToServerFunction:InvokeServer(unpack(args))
                end
            else
                getgenv().safeautohatch2 = false
            end
        end,
    })
end

if game.PlaceId == (3101667897) then

if game.Players.LocalPlayer.UserId == 2395613299 then
    game.Players.LocalPlayer:Kick(" \n You Are Banned From Tide Hub. : \n You Are Banned From #Tide Hub!")
end

local hum = game.Players.LocalPlayer.Character.HumanoidRootPart
local Executer = identifyexecutor()

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
	Name = "#Tide Hub - Legends Of Speed",
	LoadingTitle = "Loading #Tide Hub",
	LoadingSubtitle = "By | fortunatesouls#8803",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil,
		FileName = "TideHub"
	},
        Discord = {
        	Enabled = false,
        	Invite = "n2QxZaMMtC",
        	RememberJoins = true
        },
	KeySystem = false,
	KeySettings = {
		Title = "Tide Hub Key System",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/n2QxZaMMtC)",
		FileName = "TideKey",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = "#TideHub"
	}
})

local Tab = Window:CreateTab("Credits", 7072706216)

local Button = Tab:CreateButton({
   Name = "Copy Discord Link",
   Callback = function()
    setclipboard("https://discord.gg/n2QxZaMMtC")
   end,
})

Tab:CreateParagraph({Title = "fortunatesouls#8803", Content = "Main Script Developer / OWNER"})

local Tab = Window:CreateTab("Main", 7072707588)

local Paragraph = Tab:CreateParagraph({Title = "Your Executer Is:", Content = Executer})

local Button = Tab:CreateButton({
	Name = "Claim All Chest",
	Callback = function()
		wait(2)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-673.126892, 65.4947662, -266.883942, 3.23057175e-05, 0.707060337, -0.707153201, -1, 3.23057175e-05, -1.33812428e-05, 1.33812428e-05, 0.707153201, 0.707060337)
        		wait(4)
        		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-592.158936, 73.494812, 2141.2854, 5.96046448e-07, 0.0871878564, -0.996191859, -1, 5.96046448e-07, -5.66244125e-07, 5.66244125e-07, 0.996191859, 0.0871878266)
        		wait(5)
        		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2485.51147, 69.4947662, 3988.69727, 1.13844872e-05, -0.766070843, -0.642756104, -1, -1.13248825e-05, -4.14252281e-06, -4.14252281e-06, 0.642756104, -0.766070843)
        		wait(6)
	end,
})

local Button = Tab:CreateButton({
	Name = "Claim All Reward Chest",
	Callback = function()
		wait(2)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1613.69019, 23.329401, -494.816467, 1.2755394e-05, 0.965938866, -0.258770198, -0.99999994, 1.2755394e-05, -1.66893005e-06, 1.66893005e-06, 0.258770198, 0.965938926)
        		wait(4)
        		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2236.63989, 316.294739, 1014.28278, -5.96046448e-07, 0.0871878564, -0.996191859, -1, -5.96046448e-07, 5.66244125e-07, -5.66244125e-07, 0.996191859, 0.0871878266)
        		wait(5)
        		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1572.59412, 103.960609, 5678.76611, -0.00328338146, -0.984814405, 0.173580498, -0.999834418, 0.000123798847, -0.0182078481, 0.0179098323, -0.173611507, -0.984651804)
        		wait(6)
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Rebirth",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    getgenv().autorebirth = true
		    while getgenv().autorebirth ~= false do
		        wait(5)
		        local args = {
                    [1] = "rebirthRequest"
            }
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(unpack(args))
		    end
        else
            getgenv().autorebirth = false
		end
	end,
})

local Tab = Window:CreateTab("Player", 7072724538)

local Slider = Tab:CreateSlider({
	Name = "Change Walkspeed",
	Range = {16, 500},
	Increment = 5,
	Suffix = "Walkspeed",
	CurrentValue = 10,
	Flag = "Slider1",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end,
})

local Slider = Tab:CreateSlider({
	Name = "Change Jumppower",
	Range = {50, 500},
	Increment = 10,
	Suffix = "Jumppower",
	CurrentValue = 10,
	Flag = "Slider1",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end,
})

local Slider = Tab:CreateSlider({
	Name = "Change Field Of View",
	Range = {70, 120},
	Increment = 1,
	Suffix = "FOV",
	CurrentValue = 70,
	Flag = "Slider1",
	Callback = function(Value)
		game.Workspace.CurrentCamera.FieldOfView = Value
	end,
})

local Tab = Window:CreateTab("Teleports", 7072718631)

local Button = Tab:CreateButton({
	Name = "Grass Course [ LEVEL 5 ]",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-824.209778, 15.1971445, 128.850281, 0.201442644, 6.74832208e-08, 0.979500294, -6.15156814e-09, 1, -6.76304381e-08, -0.979500294, 7.59819141e-09, 0.201442644)
	end,
})

local Button = Tab:CreateButton({
	Name = "Frost Course [ LEVEL 15 ]",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(371.947296, 3.93948269, -17.7315865, -3.57627869e-06, -0.906621039, -0.421946198, -1.00000012, 3.27825546e-06, 7.74860382e-07, 7.74860382e-07, 0.421946198, -0.906621218)
	end,
})

local Button = Tab:CreateButton({
	Name = "Snow City",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9673.79102, 60.6541595, 3788.24927, 0, 1, -0, -1, 0, 0, 0, 0, 1)
	end,
})

local Tab = Window:CreateTab("Farming", 7072707588)

local Label = Tab:CreateLabel("Normal City Autofarms:")

local Toggle = Tab:CreateToggle({
	Name = "Orb Autofarm",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
            getgenv().orbautofarm = true
            while getgenv().orbautofarm ~= false do
            wait(1)
            for i, v in pairs(game:GetService("Workspace").orbFolder.City:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                    firetouchinterest(hum, v.Parent, 0)
                end
            end
        end
    else
        getgenv().orbautofarm = false
        end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Circle Autofarm",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    getgenv().circleautofarm = true
		    while getgenv().circleautofarm ~= false do
		        game:GetService("Workspace").Hoops.Hoop.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		        wait(0.1)
		        game:GetService("Workspace").Hoops.Hoop.CFrame = CFrame.new(0,0,0)
		        wait(0.0001)
		    end
		    else
		        getgenv().circleautofarm = false
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Circle Autofarm #2",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    getgenv().circleautofarm = true
		    while getgenv().circleautofarm ~= false do
		        wait(1)
		        for i, v in pairs(game:GetService("Workspace").Hoops:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                    firetouchinterest(hum, v.Parent, 0)
                end
            end
        end
		    else
		        getgenv().circleautofarm = false
		end
	end,
})

local Label = Tab:CreateLabel("Snow City Autofarms:")

local Toggle = Tab:CreateToggle({
	Name = "Orb Autofarm [ SNOW CITY ]",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
            getgenv().orbautofarm = true
            while getgenv().orbautofarm ~= false do
            wait(1)
            for i, v in pairs(game:GetService("Workspace").orbFolder["Snow City"]:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                    firetouchinterest(hum, v.Parent, 0)
                end
            end
        end
    else
        getgenv().orbautofarm = false
        end
	end,
})

local Label = Tab:CreateLabel("Magma City Autofarms:")

local Toggle = Tab:CreateToggle({
	Name = "Orb Autofarm [ MAGMA CITY ]",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
            getgenv().orbautofarm = true
            while getgenv().orbautofarm ~= false do
            wait(1)
            for i, v in pairs(game:GetService("Workspace").orbFolder["Magma City"]:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                    firetouchinterest(hum, v.Parent, 0)
                end
            end
        end
    else
        getgenv().orbautofarm = false
        end
	end,
})

local Label = Tab:CreateLabel("Legends Highway Autofarms:")

local Toggle = Tab:CreateToggle({
	Name = "Orb Autofarm [ LEGENDS HIGHWAY ]",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
            getgenv().orbautofarm = true
            while getgenv().orbautofarm ~= false do
            wait(1)
            for i, v in pairs(game:GetService("Workspace").orbFolder["Legends Highway"]:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                    firetouchinterest(hum, v.Parent, 0)
                end
            end
        end
    else
        getgenv().orbautofarm = false
        end
	end,
})

local Paragraph = Tab:CreateParagraph({Title = "Safe Autofarm's Below", Content = "!! ONLY USE THESE FOR A LESS % OF GETTING BANNED !!"})

local Toggle = Tab:CreateToggle({
	Name = "[ SAFE ] Orb Autofarm",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
            getgenv().orbautofarm = true
            while getgenv().orbautofarm ~= false do
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-675.887207, 69.2994995, 252.0224, -0.0305176154, -1.7795708e-08, -0.999534249, -5.29545225e-08, 1, -1.61872027e-08, 0.999534249, 5.24358619e-08, -0.0305176154)
            for i, v in pairs(game:GetService("Workspace").orbFolder.City:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                    firetouchinterest(hum, v.Parent, 0)
                end
            end
        end
    else
        getgenv().orbautofarm = false
        end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "[ SAFE ] Circle Autofarm",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    getgenv().circleautofarm = true
		    while getgenv().circleautofarm ~= false do
		        wait(0.01)
		        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-675.887207, 69.2994995, 252.0224, -0.0305176154, -1.7795708e-08, -0.999534249, -5.29545225e-08, 1, -1.61872027e-08, 0.999534249, 5.24358619e-08, -0.0305176154)
		        game:GetService("Workspace").Hoops.Hoop.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		        wait(0.1)
		        game:GetService("Workspace").Hoops.Hoop.CFrame = CFrame.new(0,0,0)
		        wait(0.0001)
		    end
		    else
		        getgenv().circleautofarm = false
		end
	end,
})
end

if game.PlaceId == (379614936) then

local hum = game.Players.LocalPlayer.Character.HumanoidRootPart

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
	Name = "#Tide Hub - Assassin",
	LoadingTitle = "Loading #Tide Hub",
	LoadingSubtitle = "By | fortunatesouls#8803",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil,
		FileName = "TideHub"
	},
        Discord = {
        	Enabled = false,
        	Invite = "n2QxZaMMtC",
        	RememberJoins = true
        },
	KeySystem = false,
	KeySettings = {
		Title = "Tide Hub Key System",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/n2QxZaMMtC)",
		FileName = "TideKey",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = "#TideHub"
	}
})

local Tab = Window:CreateTab("Credits", 7072706216)

local Button = Tab:CreateButton({
   Name = "Copy Discord Link",
   Callback = function()
    setclipboard("https://discord.gg/n2QxZaMMtC")
   end,
})

Tab:CreateParagraph({Title = "fortunatesouls#8803", Content = "Main Script Developer / OWNER"})

local Tab = Window:CreateTab("Main", 7072707588)

local Button = Tab:CreateButton({
	Name = "Auto Complete Obby [ GIVES NINJA KNIFE ]",
	Callback = function()
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2530.96753, 592.432617, -341.642853, 0.300670356, 0, -0.953728139, 0, 1, 0, 0.953728139, 0, 0.3006)
	end,
})

local Tab = Window:CreateTab("Player", 7072724538)

local Slider = Tab:CreateSlider({
	Name = "Change Walkspeed",
	Range = {16, 170},
	Increment = 5,
	Suffix = "Walkspeed",
	CurrentValue = 10,
	Flag = "Slider1",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end,
})

local Slider = Tab:CreateSlider({
	Name = "Change Jumppower",
	Range = {50, 200},
	Increment = 10,
	Suffix = "Jumppower",
	CurrentValue = 10,
	Flag = "Slider1",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end,
})

local Slider = Tab:CreateSlider({
	Name = "Change Field Of View",
	Range = {70, 120},
	Increment = 1,
	Suffix = "FOV",
	CurrentValue = 70,
	Flag = "Slider1",
	Callback = function(Value)
		game.Workspace.CurrentCamera.FieldOfView = Value
	end,
})

local Tab = Window:CreateTab("Teleports", 7072718631)

local Button = Tab:CreateButton({
	Name = "Spawn",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2387.33008, 597.197693, -399.568909, -0.0117532453, 4.80094862e-08, 0.999930918, -9.15685803e-08, 1, -4.90891026e-08, -0.999930918, -9.21392171e-08, -0.0117532453)
    end,
})

local Tab = Window:CreateTab("Farming", 7072707588)

local Button = Tab:CreateButton({
	Name = "Become Ghost [ MUST BE DEAD ]",
	Callback = function()
	    game:GetService("ReplicatedStorage").Remotes.RequestGhostSpawn:InvokeServer()
    end,
})

local Toggle = Tab:CreateToggle({
	Name = "Ghost Coin Autofarm",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
		    getgenv().ghostautofarm = true
		    while getgenv().ghostautofarm ~= false do
		        wait(1)
		        game:GetService("ReplicatedStorage").Remotes.RequestGhostSpawn:InvokeServer()
		        wait(0.001)
		        for i, v in pairs(game:GetService("Workspace").GhostCoins:GetDescendants()) do
		            if v.Name == "TouchInterest" and v.Parent then
		                firetouchinterest(hum, v.Parent, 0)
		                firetouchinterest(hum, v.Parent, 1)
		                end
		            end
		        end
        else
            getgenv().ghostautofarm = false
		    end
	end,
})
end

if game.PlaceId == (1537690962) then
    
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "#Tide Hub - Bee Swarm Simulator",
	LoadingTitle = "Loading #Tide Hub",
	LoadingSubtitle = "By | fortunatesouls#8803",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil,
		FileName = "Tide"
	},
        Discord = {
        	Enabled = false,
        	Invite = "n2QxZaMMtC",
        	RememberJoins = true
        },
	KeySystem = false,
	KeySettings = {
		Title = "Tide Key System",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/n2QxZaMMtC)",
		FileName = "TideKey",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = "#Tide-399499!94-o"
	}
})

Rayfield:Notify({
    Title = "Notification",
    Content = "There is no zone-bypasser for snowflake autofarm, it is normal for it to respawn at spawn.",
    Duration = 15,
    Image = 69,
    Actions = {
        Ignore = {
            Name = "Okay!",
            Callback = function()
                print("Snowflake Autofarm - Pressed Okay!")
            end
		},
	},
})

local Tab = Window:CreateTab("Credits")

local Button = Tab:CreateButton({
   Name = "Copy Discord Link",
   Callback = function()
    setclipboard("https://discord.gg/n2QxZaMMtC")
   end,
})

Tab:CreateParagraph({Title = "fortunatesouls#8803", Content = "Main Script Developer / OWNER"})

local Tab = Window:CreateTab("Main")

local Button = Tab:CreateButton({
	Name = "Claim Hive",
	Callback = function()
	    local args = {
            [1] = 4
        }
        game:GetService("ReplicatedStorage").Events.ClaimHive:FireServer(unpack(args))
        wait(0.05)
        game:GetService("ReplicatedStorage").Events.RetrievePlayerStats:InvokeServer()
    end,
})

local Tab = Window:CreateTab("Farming")

local Toggle = Tab:CreateToggle({
	Name = "Snowflake Autofarm",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(Value)
		if Value then
		    getgenv().SnowflakeAutofarm = true
		    while getgenv().SnowflakeAutofarm ~= false do
		        wait(2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Particles.Snowflakes.SnowflakePart.CFrame
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                wait(3)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                wait()
		    end
        else
            getgenv().SnowflakeAutofarm = false
		end
	end,
})

local Tab = Window:CreateTab("Settings")

local Paragraph = Tab:CreateParagraph({Title = "!!! READ THIS BEFORE MODIFYING ANY OF THIS !!!", Content = "Turning any of these down will make they're efficiency really shit."})

local Slider = Tab:CreateSlider({
	Name = "Snowflake Autofarm Teleport Speed",
	Range = {1, 10},
	Increment = 1,
	Suffix = "Snowflake Autofarm Speed",
	CurrentValue = 5,
	Flag = "Slider1",
	Callback = function(Value)
		getgenv().SnowflakeTeleportTime = Value
	end,
})
end
