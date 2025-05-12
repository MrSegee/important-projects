ilove kjhfahgdfhjkfhdk ohio gyatt this will error the script
local KeySystem = loadstring(game:HttpGet("https://raw.githubusercontent.com/OopssSorry/LuaU-Free-Key-System-UI/main/source.lua"))()
local KeyValid = false
local response = KeySystem:Init({
	Debug=false, 
	Title="Silenthub Key System", 
	Description=nil,
	Link="https://discord.gg/Z7cZnzTyz2", 
	Discord="https://discord.gg/Z7cZnzTyz2",
	SaveKey=false,
	Verify=function(key)
		if key=="bgsi-2025silent" then
      KeyValid=true
			return true
		else
			return false
		end
	end,
	GuiParent = game.CoreGui, 
})

if not response or not KeyValid then return end
local autorollingdice = false
local BlackingOutScreen = false
local Disabling3DRendering = false
local TpToWho = nil
local selectedPotionAmountUse = nil
local selectedPotionRarityForUse = nil
local selectedPotionForUse = nil
local AutoOpeningMysteryBox = false
local AutoBuyingFromMarket = false
local AutoClaimingChests = false
local AutoClaimingSeasonRewards = false
local AutoClaimingWheelSpin = false
local AutoClaimingPlaytimeRewards = false
local autoCollectingPickups = false
local MainFunc = game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("RemoteFunction")
local MainEvent = game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("RemoteEvent")
local autoSelling = false
getgenv().Functions = {
    AutoBlowBubbles = false;
    AutoSell = false;
    AutoCollectPickups = false;
    FasterEggs = false;

    AutoClaimPlaytimeRewards = false;
    AutoClaimSeasonRewards = false;
    AutoClaimWheelSpin = false;
    AutoClaimChests = false;
    AutoBuyFromMarkets = false;
    AutoOpenMysteryBox = false;
    AutoGenieQuest = false;

    UseGoldenKeys = false;
    UseRoyalKeys = false;
    
    Disable3DRendering = false;
    BlackOutScreen = false;
    FixFPSCap = false;
};

--[[Gotta fix dis cus it dont work on almost no executer -Enes
for i, v in next, getconnections(game:GetService("Players").LocalPlayer.Idled) do
    v:Disable();
end;]]

local function CollectPickups()
    for i, v in next, game:GetService("Workspace").Rendered:GetChildren() do
        if v.Name == "Chunker" then
            for i2, v2 in next, v:GetChildren() do
                local Part, HasMeshPart = v2:FindFirstChild("Part"), v2:FindFirstChildWhichIsA("MeshPart");
                local HasStars = Part and Part:FindFirstChild("Stars");
                local HasPartMesh = Part and Part:FindFirstChild("Mesh");
                if HasMeshPart or HasStars or HasPartMesh then
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Pickups"):WaitForChild("CollectPickup"):FireServer(v2.Name);
                    v2:Destroy();
                end;
            end;
        end;
    end;
end;

local function TweenTo(Position, Speed)
    local CFrameValue = Instance.new("CFrameValue");

    CFrameValue.Value = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
    CFrameValue:GetPropertyChangedSignal("Value"):Connect(function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameValue.Value;
    end);

    game:GetService("TweenService"):Create(CFrameValue, TweenInfo.new(Speed, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Value = Position}):Play();
end;

local function FancyNumberTranslator(FancyNumber)
    local FancyNumbers = {
        ["I"] = 1;
        ["II"] = 2;
        ["III"] = 3;
        ["IV"] = 4;
        ["V"] = 5;
        ["VI"] = 6;
    };

    return FancyNumbers[FancyNumber];
end;

local function GetTimerText(Text)
    local Hour, Minute, Second = string.match(Text, "^(%d+):(%d%d):(%d%d)$");

    if Hour and Minute and Second then
        return string.format("%02d:%02d:%02d", tonumber(Hour), tonumber(Minute), tonumber(Second));
    end;

    local Minute, Second = string.match(Text, "^(%d+):(%d%d)$");

    if Minute and Second then
        return string.format("00:%02d:%02d", tonumber(Minute), tonumber(Second));
    end;

    local Second = string.match(Text, "^(%d+)$");

    if Second then
        return string.format("00:00:%02d", tonumber(Second));
    end;

    return nil;
end;

local function CapitalizeTimeUnit(String)
    local Number, Unit = String:match("^(%d+)%s*(%a+)$");

    if Number and Unit then
        Unit = Unit:sub(1, 1):upper() .. Unit:sub(2);
        return Number .. " " .. Unit;
    else
        return String;
    end;
end;

local function FetchRiftEggs(x25)
    local FoundRiftEggs = {};
    local Foundx25Eggs = {};

    for i, v in next, game:GetService("Workspace").Rendered.Rifts:GetChildren() do
        if not table.find({"golden-chest", "royal-chest", "gift-rift"}, v.Name) then
            if v.Display.SurfaceGui.Icon.Luck.Text == "x25" then
                table.insert(Foundx25Eggs, v);
            else
                table.insert(FoundRiftEggs, v);
            end
        end
    end
    
    if x25 then
        return Foundx25Eggs;
    else
        return FoundRiftEggs;
    end;
end;
local autoblowing = false
local Luna = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebula-Softworks/Luna-Interface-Suite/refs/heads/main/source.lua", true))()
local Window = Luna:CreateWindow({
	Name = "SilentHub",
	Subtitle = "Bubble Gum Simulator Infinity",
	LogoID = "98742160884663",
	LoadingEnabled = true,
	LoadingTitle = "Loading SilentHub...",
	LoadingSubtitle = "By The SilentHub Development Team",

	ConfigSettings = {
		RootFolder = nil, 
		ConfigFolder = "Silenthub" 
	},
	KeySystem = false,
	KeySettings = {
		Title = "Luna Example Key",
		Subtitle = "Key System",
		Note = "Best Key System Ever! Also, Please Use A HWID Keysystem like Pelican, Luarmor etc. that provide key strings based on your HWID since putting a simple string is very easy to bypass",
		SaveInRoot = false,
		SaveKey = true,
		SecondAction = {
			Enabled = true,
			Type = "Link",
			Parameter = ""
		}
	}
})
Window:CreateHomeTab({
	SupportedExecutors = {"Xeno", "Cloudy", "Ronix"},
	DiscordInvite = "UJ8mMGt6",
	Icon = 1,
})
local Tabs = {
    Main = Window:CreateTab({
		Name = "Main",
		Icon = "code",
		ImageSource = "Material",
		ShowTitle = true
	});
	Potions = Window:CreateTab({
		Name = "Potions",
		Icon = "person",
		ImageSource = "Material",
		ShowTitle = true
	});
    Rifts = Window:CreateTab({
		Name = "Rifts",
		Icon = "autorenew",
		ImageSource = "Material",
		ShowTitle = true
	});
    Teleports = Window:CreateTab({
		Name = "Teleports",
		Icon = "settings_input_component",
		ImageSource = "Material",
		ShowTitle = true
	});
    CPUSettings = Window:CreateTab({
		Name = "CPU Settings",
		Icon = "sparkle",
		ImageSource = "Material",
		ShowTitle = true
	});
    Minigames = Window:CreateTab({
		Name = "Minigames",
		Icon = "view_in_ar",
		ImageSource = "Material",
		ShowTitle = true
	});
    SettingsTab = Window:CreateTab({
		Name = "Ui Settings",
		Icon = "settings",
		ImageSource = "Material",
		ShowTitle = true
	})
};



local TabsMainFunctions = Tabs.Main;

TabsMainFunctions:CreateToggle({
    Name = "Auto Blow",
	Description = nil,
	CurrentValue = false,

    Callback = function(Value)
    	autoblowing = Value
    	if autoblowing then
        	task.spawn(function()
            	while autoblowing do
                	MainEvent:FireServer("BlowBubble")
                	task.wait(0.5)
            	end
        	end)
		end
    end;
});

TabsMainFunctions:CreateToggle({
    Name = "Auto Sell",
	Description = "Have To Be Near Sell Point To Work",
	CurrentValue = false,
    Callback = function(Value)
    	autoSelling = Value
    	if autoSelling then
       		task.spawn(function()
            	while autoSelling do
                	MainEvent:FireServer("SellBubble");
                	task.wait(0.5);
				end
            end);
        end;
    end;
});

TabsMainFunctions:CreateToggle({
    Name = "Auto Collect Pickups",
	Description = nil,
	CurrentValue = false,

    Callback = function(Value)
    	autoCollectingPickups = Value
    	if autoCollectingPickups then
       		task.spawn(function()
            	while autoCollectingPickups do
                	CollectPickups();
                	task.wait(0.5);
				end
            end);
        end;
    end;
});

--[[TabsMainFunctions:CreateToggle({
    Name = "Faster Egg Hatching",
	Description = nil,
	CurrentValue = false,

    Callback = function(Value)
        getgenv().Functions.FasterEggs = Value;
        task.spawn(function()
            while Functions.FasterEggs do
                game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.R, false, game);
                task.wait();
                game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.R, false, game);
            end;
        end);
    end;
});]]

--[[local TabsToggles = Tabs.Main:CreateSection("Quick Toggles");

local toggleAll = TabsToggles:CreateButton({
    Name = "Toggle All",
	Description = "WARNING: This will Toggle Everything On";

    Func = function()
        Toggles.AutoBlowBubbles.CurrentValue = false
        Toggles.AutoCollectPickups:SetValue(true);
        Toggles.FasterEggs:SetValue(true);
        Toggles.AutoClaimPlaytimeRewards:SetValue(true);
        Toggles.AutoClaimSeasonRewards:SetValue(true);
        Toggles.AutoClaimWheelSpin:SetValue(true);
        Toggles.AutoClaimChests:SetValue(true);
        Toggles.AutoBuyFromMarkets:SetValue(true);
        Toggles.AutoGenieQuest:SetValue(true);
    end;
});

local UntoggleAll = TabsToggles:CreateButton({
    Name = "Untoggle All",
	Description = "WARNING: This will Untoggle Everything";

    Func = function()
        Toggles.AutoBlowBubbles:SetValue(false);
        Toggles.AutoSell:SetValue(false);
        Toggles.AutoCollectPickups:SetValue(false);
        Toggles.FasterEggs:SetValue(false);
        Toggles.AutoClaimPlaytimeRewards:SetValue(false);
        Toggles.AutoClaimSeasonRewards:SetValue(false);
        Toggles.AutoClaimWheelSpin:SetValue(false);
        Toggles.AutoClaimChests:SetValue(false);
        Toggles.AutoBuyFromMarkets:SetValue(false);
        Toggles.AutoOpenMysteryBox:SetValue(false);
        Toggles.AutoGenieQuest:SetValue(false);
        Toggles.UseGoldenKeys:SetValue(false);
        Toggles.UseRoyalKeys:SetValue(false);
        Toggles.Disable3DRendering:SetValue(false);
        Toggles.BlackOutScreen:SetValue(false);
    end;

    Tooltip = "WARNING: This will untoggle EVERY toggle in the script.";
    Risky = true;
});]]

local TabsOtherFunctions = Tabs.Main:CreateSection("Other Functions");

TabsOtherFunctions:CreateToggle({
    Name = "Auto Claim Playtime Rewards",
	Description = nil,
	CurrentValue = false,

	Callback = function(Value)
    	AutoClaimingPlaytimeRewards = Value
    	if AutoClaimingPlaytimeRewards then
       		task.spawn(function()
				while AutoClaimingPlaytimeRewards do
					for i = 1, 9 do
						task.wait();
						MainFunc:InvokeServer("ClaimPlaytime", i);
					end;
					task.wait(5);
            	end;
        	end);
    	end;
	end
});

TabsOtherFunctions:CreateToggle({
	Name = "Auto Claim Wheel Spin",
	Description = nil,
	CurrentValue = false,

    Callback = function(Value)
        AutoClaimingWheelSpin = Value;
		if AutoClaimingWheelSpin then
			task.spawn(function()
				while AutoClaimingWheelSpin do
					task.wait();
					MainEvent:FireServer("ClaimFreeWheelSpin");
				end;
			end);
		end
    end;
});

TabsOtherFunctions:CreateToggle({
	Name = "Auto Claim Season Rewards",
	Description = nil,
	CurrentValue = false,

    Callback = function(Value)
        AutoClaimingSeasonRewards = Value;
		if AutoClaimingSeasonRewards then
			task.spawn(function()
				while AutoClaimingSeasonRewards do
					task.wait();
					MainEvent:FireServer("ClaimSeason");
				end;
			end);
		end
    end;
});

TabsOtherFunctions:CreateToggle({
 	Name = "Auto Claim Chests",
	Description = nil,
	CurrentValue = false,

    Callback = function(Value)
        AutoClaimingChests = Value;
		if AutoClaimingChests then
			task.spawn(function()
				local Chests = {"Void Chest", "Giant Chest", "Infinity Chest"};
				while AutoClaimingChests do
					for i, v in next, Chests do
						MainEvent:FireServer("ClaimChest", v, true);
						task.wait();
					end;
					task.wait(5);
				end;
        	end);
		end
    end;
});

TabsOtherFunctions:CreateToggle({
 	Name = "Auto Buy From Markets",
	Description = nil,
	CurrentValue = false,
    Callback = function(Value)
        AutoBuyingFromMarket = Value;
		if AutoBuyingFromMarket then
			task.spawn(function()
				while AutoBuyingFromMarket do
					local Markets = {"alien-shop", "shard-shop", "dice-merchant"};
					for _, v in next, Markets do
						for i = 1, 3 do
							MainEvent:FireServer("BuyShopItem", v, i);
						end;
					end;
					task.wait(5);
				end;
        	end);
		end
    end;
});

TabsOtherFunctions:CreateToggle({
 	Name = "Auto Open Mystery Boxes",
	Description = nil,
	CurrentValue = false,
    Callback = function(Value)
        AutoOpeningMysteryBox = Value;
		if AutoOpeningMysteryBox then
			task.spawn(function()
				while AutoOpeningMysteryBox do
					task.wait();
					MainEvent:FireServer("UseGift", "Mystery Box", 1);
					MainEvent:FireServer("UseGift", "Golden Box", 1);
					for i, v in next, game:GetService("Workspace").Rendered.Gifts:GetChildren() do
						MainEvent:FireServer("ClaimGift", v.Name);
						task.wait();
						v:Destroy();
					end;
				end;
			end);
		end
    end;
});

TabsOtherFunctions:CreateToggle({
 	Name = "Auto Genie Quest",
	Description = nil,
	CurrentValue = false,
    Callback = function(Value)
        AutoingGenieQuest = Value;
		if AutoingGenieQuest then
			task.spawn(function()
				while AutoingGenieQuest do
					MainEvent:FireServer("StartGenieQuest", math.random(1, 3));
					task.wait(10);
				end;
			end);
		end
    end;
});

local RedeemAllCodes = TabsOtherFunctions:CreateButton({
	Name = "Redeem All Codes",
	Description = nil,
	Callback = function()
        local Codes = {"easter", "RELEASE", "Lucky", "Thanks"};
        for i, v in next, Codes do
            MainFunc:InvokeServer("RedeemCode", v);          
        end;
    end
});

local TabsPotionsCraft = Tabs.Potions:CreateSection("Craft");

local CraftLuckyPotions = TabsPotionsCraft:CreateButton({
    Name = "Craft Lucky Potions",
	Description = nil,
	Callback = function()
		for i = 2, 5 do
            MainEvent:FireServer("CraftPotion", "Lucky", i, true);
            task.wait(1);
        end;
	end
});

local CraftSpeedPotions = TabsPotionsCraft:CreateButton({
    Name = "Craft Speed Potions",
	Description = nil,
	Callback = function()
		for i = 2, 5 do
        	MainEvent:FireServer("CraftPotion", "Speed", i, true);
        	task.wait(1);
     	end;
    end
});

local CraftCoinsPotions = TabsPotionsCraft:CreateButton({
    Name = "Craft Coins Potions",
	Description = nil,
	Callback = function()
        for i = 2, 5 do
            MainEvent:FireServer("CraftPotion", "Coins", i, true);
            task.wait(1);
        end;
	end
});

local CraftMythicPotions = TabsPotionsCraft:CreateButton({
    Name = "Craft Mythic Potions",
	Description = nil,
	Callback = function()
        for i = 2, 5 do
            MainEvent:FireServer("CraftPotion", "Mythic", i, true);
            task.wait(1);
        end;
    end;
});

local CraftAllPotions = TabsPotionsCraft:CreateButton({
    Name = "Craft All Potions",
	Description = nil,
    Callback = function()
        local PotionTypes = {"Lucky", "Speed", "Coins", "Mythic"};
        for _, v in next, PotionTypes do
            for i = 2, 5 do
                MainEvent:FireServer("CraftPotion", v, i, true);
                task.wait(1);
            end;
        end;
    end;
});

--[[local TabPotionsTimeLeft = Tabs.Potions:CreateSection("Time Left For Restock");

local LuckyPotionTimeLeft = TabPotionsTimeLeft:CreateLabel({
	Text = "Lucky Potion: 00:00:00",
	Style = 1
})
local SpeedPotionTimeLeft = TabPotionsTimeLeft:CreateLabel("Speed Potion: 00:00:00");
local MythicPotionTimeLeft = TabPotionsTimeLeft:CreateLabel("Mythic Potion: 00:00:00");
local CoinsPotionTimeLeft = TabPotionsTimeLeft:CreateLabel("Coins Potion: 00:00:00");
TabPotionsTimeLeft:CreateDivider();
TabPotionsTimeLeft:CreateLabel("Notice: Only displays Rarity V.");

task.spawn(function()
    while task.wait() do
        local PotionTypes = {
            Lucky = LuckyPotionTimeLeft;
            Speed = SpeedPotionTimeLeft;
            Mythic = MythicPotionTimeLeft;
            Coins = CoinsPotionTimeLeft;
        };

        for i, v in next, PotionTypes do
            local BuffsGUI = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Buffs:FindFirstChild(i)
            if BuffsGUI and BuffsGUI.Button and BuffsGUI.Button.Label and BuffsGUI.Button.Label.Text and BuffsGUI.Button.Icon:FindFirstChild("Potion" .. i .. "5") then
                local TimerText = GetTimerText(BuffsGUI.Button.Label.Text);
                if TimerText then
                    v:SetText(i .. " Potion: " .. TimerText);
                else
                    v:SetText(i .. " Potion: " .. CapitalizeTimeUnit(BuffsGUI.Button.Label.Text) .. "+");
                end;
            else
                v:SetText(i .. " Potion: 00:00:00");
            end;
        end;
    end;
end);]]

local TabsPotionsUse = Tabs.Potions:CreateSection("Use")

local SelectPotionType = TabsPotionsUse:CreateDropdown({
    Name = "Select Potion Type",
	Options = {"Lucky", "Speed", "Coins", "Mythic"},
	CurrentOption = {"Lucky"},
	MultipleOptions = false,
    SpecialType = nil,

    Callback = function(Value)
        selectedPotionForUse = Value;
    end;
});

local SelectPotionRarity = TabsPotionsUse:CreateDropdown({
    Name = "Select Potion Rarity",
	Options = {"I", "II", "III", "IV", "V", "VI"},
    CurrentOption = {"I"},
    Callback = function(Value)
        selectedPotionRarityForUse = Value
    end;
});

local SelectPotionAmount = TabsPotionsUse:CreateSlider({
    Name = "Selected Potion Amount",
    Range = {0, 50},
    Increment = 1,
    CurrentValue = 1,
    Callback = function(Value)
        selectedPotionAmountUse = Value
    end;
});

local UsePotions = TabsPotionsUse:CreateButton({
    Name = "Use Potions",
	Description = nil,
    Callback = function(Value)
        print()
        for i = 1, math.floor(selectedPotionAmountUse + 0.5) do
            task.wait(0.3);
            MainEvent:FireServer("UsePotion", selectedPotionForUse, FancyNumberTranslator(selectedPotionRarityForUse));
        end;
    end;
});

TabsPotionsUse:CreateDivider();

local UseHatchingPotions = TabsPotionsUse:CreateButton({
    Name = "Use Hatching Potions",
	Description = "WARNING: This will use 10 hours of Lucky V, Speed V and Mythic V Potions.",
    Callback = function(Value)
        local PotionTypes = {"Lucky", "Speed", "Mythic"};

        for _, v in next, PotionTypes do
            for i = 1, 35 do
                task.wait(0.3);
                game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Event"):FireServer("UsePotion", v, 5);
            end;
        end;
    end;
});

--[[local TabsRiftsEggs = Tabs.Rifts:CreateSection("Eggs");

local RiftEggsDropdown = TabsRiftsEggs:CreateDropdown({
    Options = {"Common Egg","Spotted Egg", "Iceshard Egg", "Spikey Egg", "Magma Egg", "Crystal Egg", "Lunar Egg", "Void Egg", "Hell Egg", "Nightmare Egg", "Rainbow Egg"},
    CurrentOption = {"Common Egg"},
	MultipleOptions = false,
	Name = "Rift Eggs",
	Description = nil,

    Callback = function(Value)
        if Value then
            game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Event"):FireServer("Teleport", "Workspace.Worlds.The Overworld.FastTravel.Spawn");
            task.wait(1);
            TweenTo(Value.Display.CFrame, 15);
            task.wait(16);
            repeat
                task.wait();
                if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Position - Value.Display.CFrame.Position).Magnitude > 20 then
                    TweenTo(Value.Display.CFrame, 15);
                    task.wait(16);
                end;
            until (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Position - Value.Display.CFrame.Position).Magnitude <= 20
        end;
    end;
});

local x25EggsDropdown = TabsRiftsEggs:CreateDropdown({
Options = {"Common Egg","Spotted Egg", "Iceshard Egg", "Spikey Egg", "Magma Egg", "Crystal Egg", "Lunar Egg", "Void Egg", "Hell Egg", "Nightmare Egg", "Rainbow Egg"},
    CurrentOption = {"Common Egg"},
	MultipleOptions = false,
    Name = "x25 Eggs",
	Description = nil,
    Callback = function(Value)
        if Value then
            game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Event"):FireServer("Teleport", "Workspace.Worlds.The Overworld.FastTravel.Spawn");
            task.wait(1);
            TweenTo(Value.Display.CFrame, 15);
            task.wait(16);
            repeat
                task.wait();
                if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Position - Value.Display.CFrame.Position).Magnitude > 20 then
                    TweenTo(Value.Display.CFrame, 15);
                    task.wait(16);
                end;
            until (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Position - Value.Display.CFrame.Position).Magnitude <= 20
        end;
    end;
});

TabsRiftsEggs:CreateDivider();

local RefreshDropdowns = TabsRiftsEggs:AddButton({
    Text = "Refresh Dropdowns";

    Func = function()
        local Foundx25Eggs, FoundRiftEggs = FetchRiftEggs(true), FetchRiftEggs(false);

        if #Foundx25Eggs > 0 then
            x25EggsDropdown:SetValues(Foundx25Eggs);
        else
            Library:Notify({
                Title = "Missing x25-egg";
                Description = "Unable to find a active x25 Luck Egg.";
                Time = 4;
            });
        end;

        if #FoundRiftEggs > 0 then
            RiftEggsDropdown:SetValues(FoundRiftEggs);
        else
            Library:Notify({
                Title = "Missing rift-egg";
                Description = "Unable to find a active Rift Egg.";
                Time = 4;
            });
        end;
    end;
});]]

local TabsRiftsChests = Tabs.Rifts:CreateSection("Chests");

TabsRiftsChests:CreateToggle({
    Name = "Use Golden Keys",
    Description = nil,
    Callback = function(Value)
        getgenv().Functions.UseGoldenKeys = Value;
        task.spawn(function()
            while Functions.UseGoldenKeys do
                task.wait();
                MainEvent:FireServer("UnlockRiftChest", "golden-chest", false);
            end
        end)
    end
})

TabsRiftsChests:CreateToggle({
    Name = "Use Royal Keys",
    Description = nil,
    Callback = function(Value)
        getgenv().Functions.UseRoyalKeys = Value;
        task.spawn(function()
            while Functions.UseRoyalKeys do
                task.wait();
                MainEvent:FireServer("UnlockRiftChest", "royal-chest", false);
            end;
        end);
    end;
});

local TeleportToGoldenChest = TabsRiftsChests:CreateButton({
    Name = "Teleport To Golden Chest",
	Description = nil,
    Callback = function(Value)
        task.spawn(function()
            if game:GetService("Workspace").Rendered.Rifts:FindFirstChild("golden-chest") then
               	MainEvent:FireServer("Teleport", "Workspace.Worlds.The Overworld.FastTravel.Spawn");
                task.wait(1);
                TweenTo(game:GetService("Workspace").Rendered.Rifts["golden-chest"].Chest["golden-chest"].CFrame + Vector3.new(0, 6, 0), 15);
                task.wait(16);
                repeat
                    task.wait();
                    if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Position - game:GetService("Workspace").Rendered.Rifts["golden-chest"].Chest["golden-chest"].CFrame.Position).Magnitude > 20 then
                        TweenTo(game:GetService("Workspace").Rendered.Rifts["golden-chest"].Chest["golden-chest"].CFrame + Vector3.new(0, 6, 0), 15);
                        task.wait(16);
                    end;
                until (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Position - game:GetService("Workspace").Rendered.Rifts["golden-chest"].Chest["golden-chest"].CFrame.Position).Magnitude <= 20
            else
                Luna:Notification({ 
					Title = "Missing Golden Chest",
					Icon = "notifications_active",
					ImageSource = "Material",
					Content = "Could Not Find Golden Chest"
                });
            end;
        end);
    end;
});

local TeleportToRoyalChest = TabsRiftsChests:CreateButton({
    Name = "Teleport To Royal Chest",
	Description = nil,

    Callback = function(Value)
        task.spawn(function()
            if game:GetService("Workspace").Rendered.Rifts:FindFirstChild("royal-chest") then
                MainEvent:FireServer("Teleport", "Workspace.Worlds.The Overworld.FastTravel.Spawn");
                task.wait(1);
                TweenTo(game:GetService("Workspace").Rendered.Rifts["royal-chest"].Chest["royal-chest"].CFrame + Vector3.new(0, 6, 0), 15);
                task.wait(16);
                repeat
                    task.wait();
                    if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Position - game:GetService("Workspace").Rendered.Rifts["golden-chest"].Chest["golden-chest"].CFrame.Position).Magnitude > 20 then
                        TweenTo(game:GetService("Workspace").Rendered.Rifts["royal-chest"].Chest["royal-chest"].CFrame + Vector3.new(0, 6, 0), 15);
                        task.wait(16);
                    end;
                until (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Position - game:GetService("Workspace").Rendered.Rifts["golden-chest"].Chest["golden-chest"].CFrame.Position).Magnitude <= 20
            else
                 Luna:Notification({ 
					Title = "Missing Royal Chest",
					Icon = "notifications_active",
					ImageSource = "Material",
					Content = "Could Not Find Royal Chest"
                });
            end;
        end);
    end;
});

local TabsMainTeleports = Tabs.Teleports:CreateSection("Main Teleports")
local TeleportToTheOverworld = TabsMainTeleports:CreateButton({
    Name = "Teleport to The Overworld",
	Description = nil,
    Callback = function(Value)
        MainEvent:FireServer("Teleport", "Workspace.Worlds.The Overworld.FastTravel.Spawn");
    end;
});

local TeleportToFloatingIsland = TabsMainTeleports:CreateButton({
    Name = "Teleport to Floating Island",
	Description = nil,
    Callback = function()
        MainEvent:FireServer("Teleport", "Workspace.Worlds.The Overworld.Islands.Floating Island.Island.Portal.Spawn");
    end;
});

local TeleportToOuterSpace = TabsMainTeleports:CreateButton({
    Name = "Teleport to Outer Space",
	Description = nil,
    Callback = function()
        MainEvent:FireServer("Teleport", "Workspace.Worlds.The Overworld.Islands.Outer Space.Island.Portal.Spawn");
    end;
});

local TeleportToTwilight = TabsMainTeleports:CreateButton({
    Name = "Teleport to Twilight",
	Description = nil,
    Callback = function()
        MainEvent:FireServer("Teleport", "Workspace.Worlds.The Overworld.Islands.Twilight.Island.Portal.Spawn");
    end;
});

local TeleportToTheVoid = TabsMainTeleports:CreateButton({
    Name = "Teleport to The Void",
	Description = nil,
    Callback = function()
        MainEvent:FireServer("Teleport", "Workspace.Worlds.The Overworld.Islands.The Void.Island.Portal.Spawn");
    end;
});

local TeleportToZen = TabsMainTeleports:CreateButton({
    Name = "Teleport to Zen",
	Description= nil, 
    Callback = function()
        MainEvent:FireServer("Teleport", "Workspace.Worlds.The Overworld.Islands.Zen.Island.Portal.Spawn");
    end;
});
local TeleportToMinigame Paradise = TabsMainTeleports:CreateButton({
    Name = "Teleport to Minigame Paradise",
	Description= nil, 
    Callback = function()
        MainEvent:FireServer("Teleport", "Workspace.Worlds.Minigame Paradise.FastTravel.Spawn");
    end;
});
local TeleportToDiceIsland = TabsMainTeleports:CreateButton({
    Name = "Teleport to Dice Island",
	Description= nil, 
    Callback = function()
        MainEvent:FireServer("Teleport", "Workspace.Worlds.Minigame Paradise.Islands.Dice Island.Island.Portal.Spawn");
    end;
});
local TeleportToMinecartForest = TabsMainTeleports:CreateButton({
    Name = "Teleport to Minecart Forest",
	Description= nil, 
    Callback = function()
        MainEvent:FireServer("Teleport", "Workspace.Worlds.Minigame Paradise.Islands.Minecart Forest.Island.Portal.Spawn");
    end;
});
local TeleportToRobotFactory = TabsMainTeleports:CreateButton({
    Name = "Teleport to Robot Factory",
	Description= nil, 
    Callback = function()
        MainEvent:FireServer("Teleport", "Workspace.Worlds.Minigame Paradise.Islands.Robot Factory.Island.Portal.Spawn");
    end;
});
local TeleportToHatchingZone = TabsMainTeleports:CreateButton({
    Name = "Teleport to Hatching Zone",
	Description = nil,
    Callback = function()
        MainEvent:FireServer("Teleport", "Workspace.Worlds.The Overworld.FastTravel.Spawn");
        task.wait(0.3)
        TweenTo(CFrame.new(-57, 9, -27), 1.4);
    end;
});

TabsMainTeleports:CreateDivider();

local UnlockAllIslands = TabsMainTeleports:CreateButton({
    Name = "Unlock All Islands",
    Description = "In The Overworld",
    Callback = function()
        local TweenService = game:GetService("TweenService")
        local character = game.Players.LocalPlayer.Character

        character.HumanoidRootPart.CFrame = CFrame.new(0, 0, 0)
        local endposition = CFrame.new(43.18, 15971.72, 45.89)
        local tweenInfo = TweenInfo.new(15, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
        local tween = TweenService:Create(character.HumanoidRootPart, tweenInfo, {CFrame = endposition})
        tween:Play()
    end;
});
local UnlockAllIslands = TabsMainTeleports:CreateButton({
    Name = "Unlock All Islands",
    Description = "In The Minigame World",
    Callback = function()
        local TweenService = game:GetService("TweenService")
        local character = game.Players.LocalPlayer.Character
		local oldpos = character.HumanoidRootPart.CFrame
        character.HumanoidRootPart.CFrame = CFrame.new(9880, 34.7800102, 164)
        local endposition = CFrame.new(9885.85742, 15000, 171.90657)
        local tweenInfo = TweenInfo.new(15, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
        local tween = TweenService:Create(character.HumanoidRootPart, tweenInfo, {CFrame = endposition})
        tween:Play()
    end;
});
local TabsOtherTeleports = Tabs.Teleports:CreateSection("Other Teleports");

local TeleportToCoinFarmArea = TabsOtherTeleports:CreateButton({
    Name = "Teleport To Coin Farm Area",
	Description = nil,
    Callback = function()
        MainEvent:FireServer("Teleport", "Workspace.Worlds.The Overworld.Islands.Zen.Island.Portal.Spawn");
        task.wait(0.3);
        TweenTo(CFrame.new(4, 15973, 44), 0.8);
    end;
});

--[[local TeleportToBestEgg = TabsOtherTeleports:CreateButton({
    Name = "Teleport To Best Egg",
	Description = nil,
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Event"):FireServer("Teleport", "Workspace.Worlds.The Overworld.FastTravel.Spawn");
        task.wait(0.3);
        TweenTo(CFrame.new(15, 10, -5), 0.5);
    end;
});]]

local TabsPlayerTeleports = Tabs.Teleports:CreateSection("Player Teleports");

local SelectPlayer = TabsPlayerTeleports:CreateDropdown({
	Name = "Select Player",
	Description = nil,
	MultipleOptions = false,
    CurrentOption = 1,
	SpecialType = "Player",
    Callback = function(Value)
        TpToWho = Value
    end;
});

local TeleportToPlayer = TabsPlayerTeleports:CreateButton({
    Name = "Teleport To Player",
	Description = "Has To Be In Your Current World",
    Callback = function()
        MainEvent:FireServer("Teleport", "Workspace.Worlds.The Overworld.FastTravel.Spawn");
        task.wait(1);
        TweenTo(game:GetService("Players")[TpToWho].Character.HumanoidRootPart.CFrame, 15);
        task.wait(16);
        repeat
            task.wait();
            if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Position - game:GetService("Players")[TpToWho].Character.HumanoidRootPart.CFrame.Position).Magnitude > 20 then
                TweenTo(game:GetService("Players")[TpToWho].Character.HumanoidRootPart.CFrame, 15);
                task.wait(16);
            end;
        until (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Position - game:GetService("Players")[SelectPlayer.Value].Character.HumanoidRootPart.CFrame.Position).Magnitude <= 20
    end;
});

TabsPlayerTeleports:CreateDivider();

local RefreshDropdowns = TabsPlayerTeleports:CreateButton({
    Name = "Refresh Dropdowns",
	Description = nil,
    Callback = function()
        local Players = {};

        for i, v in next, game:GetService("Players"):GetPlayers() do
            if v.Name ~= game:GetService("Players").LocalPlayer.Name then
                table.insert(Players, v.Name);
            end;
        end;

        SelectPlayer:Set({ Options = Players });
    end;
});

local TabsCPUSettings = Tabs.CPUSettings:CreateSection("CPU Saving");

TabsCPUSettings:CreateToggle({
    Name = "Disable 3D Rendering",
	Description = nil,
    CurrentValue = false,

    Callback = function(Value)
        Disabling3DRendering = Value;
        task.spawn(function()
            if Disabling3DRendering then
                game:GetService("RunService"):Set3dRenderingEnabled(false);
            elseif not Disabling3DRendering then
                game:GetService("RunService"):Set3dRenderingEnabled(true);
            end;
        end);
    end;
});

TabsCPUSettings:CreateToggle({
    Name = "Black Out Screen",
	Description = nil,
    CurrentValue = false,

    Callback = function(Value)
		BlackingOutScreen = Value;
        task.spawn(function()
            if BlackingOutScreen then
                local ScreenGui = Instance.new("ScreenGui");
                ScreenGui.Name = "BlackoutGui";
                ScreenGui.ResetOnSpawn = false;
                ScreenGui.IgnoreGuiInset = true;
                ScreenGui.Parent = game:GetService("CoreGui");
                local BlackFrame = Instance.new("Frame");
                BlackFrame.Size = UDim2.new(1, 0, 1, 0);
                BlackFrame.Position = UDim2.new(0, 0, 0, 0);
                BlackFrame.BackgroundColor3 = Color3.new(0, 0, 0);
                BlackFrame.BorderSizePixel = 0;
                BlackFrame.Parent = ScreenGui;
            elseif not Functions.BlackOutScreen then
                game:GetService("CoreGui").BlackoutGui:Destroy();
            end;
        end);
    end;
});

--[[local ToggleCPUSaver = TabsCPUSettings:CreateButton({
    Name = "Toggle CPU Saver",
	Description = nil,
    Callback = function()
        Toggles.Disable3DRendering:Set({ CurrentValue = true })
        Toggles.BlackOutScreen:Set({ CurrentValue = true })
        Toggles.FixFPSCap:Set({ CurrentValue = true })
    end;
});]]

--[[local TabsFPSSettings = Tabs.CPUSettings:CreateSection("FPS Cap");

local FPSCap3 = TabsFPSSettings:CreateButton({
    Text = "Set FPS Cap to 3";
    Callback = function()
        setfpscap(3);
    end;
});

local FPSCap10 = TabsFPSSettings:AddButton({
    Text = "Set FPS Cap to 10";
    Func = function()
        setfpscap(10);
    end;
});

local FPSCap30 = TabsFPSSettings:AddButton({
    Text = "Set FPS Cap to 30";
    Func = function()
        setfpscap(30);
    end;
});

local FPSCap60 = TabsFPSSettings:AddButton({
    Text = "Set FPS Cap to 60";
    Func = function()
        setfpscap(60);
    end;
});

local CustomFPSCap = TabsFPSSettings:AddSlider("CustomFPSCap", {
    Text = "Custom FPS Cap";
    Default = 60;
    Min = 3;
    Max = 60;
    Rounding = 1;

    Callback = function(Value)
        setfpscap(Value);
    end;
});

TabsFPSSettings:AddToggle("FixFPSCap", {
    Text = "Fix FPS Cap";
    Default = false;

    Callback = function(Value)
        getgenv().Functions.FixFPSCap = Value;
        task.spawn(function()
            while Functions.FixFPSCap do
                setfpscap(CustomFPSCap.Value);
                task.wait(60);
            end;
        end);
    end;

    Tooltip = "WARNING: This will loop the CustomFPSCap Value every 1 minute.";
    Risky = true;
});

local CurrentFPSLabel = TabsFPSSettings:AddLabel("Current FPS: ???");

task.spawn(function()
    local Frames, Last = 0, tick();

    game:GetService("RunService").RenderStepped:Connect(function()
        Frames += 1;
        if tick() - Last >= 1 then
            CurrentFPSLabel:SetText("Current FPS: " .. Frames);
            Frames = 0
            Last = tick();
        end;
    end);
end);]]
local Autominigames = Tabs.Minigames:CreateSection("Auto")
Autominigames:CreateToggle({
    Name = "Auto Roll Dice",
    Description = "Automatically Rolls The Dice",
    Callback = function(Value)
        autorollingdice = Value;
		if autorollingdice then
			task.spawn(function()
				while autorollingdice do
					task.wait(2)
					local args = {
						"RollDice",
						"Dice"
					}
					game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Function"):InvokeServer("RollDice","Dice")
				end;
			end);
		end
    end;
});

Tabs.SettingsTab:CreateSection("Coming Soon")
--Tabs.SettingsTab:BuildThemeSection()
