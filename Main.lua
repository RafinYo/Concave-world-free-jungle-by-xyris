loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Xyris Hub - Concave World Free Jungle",
    Subtitle = "Made By Xyris Hub Team",
    Theme = "Dark",
    Acrylic = true,
})

local MainTab = Window:CreateTab("Main")
local CreditsTab = Window:CreateTab("Credits")

local ClickButton = MainTab:CreateButton({
    Name = "Get event Item.",
    Callback = function()
        local args = {
            [1] = 2,
            [2] = {
                [1] = 1,
                [2] = 1,
                [3] = 14
            }
        }
        game:GetService("ReplicatedStorage").Project.RemoteEvent.ControlMessageEvent:FireServer(unpack(args))
    end
})

local ToggleOption = MainTab:CreateToggle({
    Name = "Loop Get Event Item.",
    Default = false,
    Callback = function(state)
        if state then
            while true do
                local args = {
                    [1] = 2,
                    [2] = {
                        [1] = 1,
                        [2] = 1,
                        [3] = 14
                    }
                }
                game:GetService("ReplicatedStorage").Project.RemoteEvent.ControlMessageEvent:FireServer(unpack(args))
                wait()
            end
        end
    end
})

MainTab:CreateLabel("Click the Get event item to get The event item once.")
MainTab:CreateLabel("Toggle on The Loop Get event item to get the item continously continuously.")

local CreditsLabel = CreditsTab:CreateLabel("Made By Xyris Hub Team")
local DiscordButton = CreditsTab:CreateButton({
    Name = "Copy Discord Server Link",
    Callback = function()
        setclipboard("https://discord.gg/3WtS2F7CaX")
    end
})
CreditsTab:CreateLabel("Join our Discord server")
