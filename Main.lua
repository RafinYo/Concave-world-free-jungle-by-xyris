loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Xyris Hub - Concave World Free Jungle",
    Subtitle = "Made By Xyris Hub Team",
    TabWidth = 180,
    Size = UDim2.fromOffset(450, 240),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl,
})

local MainTab = Window:CreateTab("Main")
local CreditsTab = Window:CreateTab("Credits")

MainTab:CreateButton({
    Name = "Get Event Item",
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
    Name = "The Loop Get Event Item",
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

MainTab:CreateLabel("Click the Get Event Item to get the event item once.")
MainTab:CreateLabel("Toggle on The Loop Get Event Item to get the item continuously.")

CreditsTab:CreateLabel("Made By Xyris Hub Team")
CreditsTab:CreateButton({
    Name = "Copy Discord Server Link",
    Callback = function()
        setclipboard("https://discord.gg/3WtS2F7CaX")
    end
})
CreditsTab:CreateLabel("Join our Discord server")
