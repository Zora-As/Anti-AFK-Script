wait(0.5)
local ba=Instance.new("ScreenGui")
local ca=Instance.new("TextLabel")
local da=Instance.new("Frame")
local _b=Instance.new("TextLabel")
local ab=Instance.new("TextLabel")
local decorFrame = Instance.new("Frame")
local decorLine = Instance.new("Frame")
local timerLabel = Instance.new("TextLabel")
local startTime = tick()

ba.Parent=game.CoreGui
ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling

-- Main Title Bar
ca.Parent=ba
ca.Active=true
ca.BackgroundColor3=Color3.new(0.2, 0.2, 0.3)
ca.Draggable=true
ca.Position=UDim2.new(0.698610067,0,0.098096624,0)
ca.Size=UDim2.new(0,370,0,52)
ca.Font=Enum.Font.FredokaOne
ca.Text="Anti AFK Script"
ca.TextColor3=Color3.new(0,1,1)
ca.TextSize=24

-- Main Frame
da.Parent=ca
da.BackgroundColor3=Color3.new(0.15, 0.15, 0.25)
da.Position=UDim2.new(0,0,1.0192306,0)
da.Size=UDim2.new(0,370,0,107)

-- Footer Label
_b.Parent=da
_b.BackgroundColor3=Color3.new(0.2, 0.2, 0.3)
_b.Position=UDim2.new(0,0,0.800455689,0)
_b.Size=UDim2.new(0,370,0,21)
_b.Font=Enum.Font.FredokaOne
_b.Text="Made by Zora."
_b.TextColor3=Color3.new(0,1,1)
_b.TextSize=20

-- Status Label
ab.Parent=da
ab.BackgroundColor3=Color3.new(0.2, 0.2, 0.3)
ab.Position=UDim2.new(0,0,0.158377,0)
ab.Size=UDim2.new(0,370,0,44)
ab.Font=Enum.Font.FredokaOne
ab.Text="Status: Active"
ab.TextColor3=Color3.new(0,1,0)
ab.TextSize=20

-- Timer Label
timerLabel.Parent=da
timerLabel.BackgroundColor3=Color3.new(0.2, 0.2, 0.3)
timerLabel.Position=UDim2.new(0,0,0.5,0)
timerLabel.Size=UDim2.new(0,370,0,20)
timerLabel.Font=Enum.Font.FredokaOne
timerLabel.TextColor3=Color3.new(0,1,1)
timerLabel.TextSize=18

-- Decorative Frame
decorFrame.Parent=ca
decorFrame.BackgroundColor3=Color3.new(0,0.5,1)
decorFrame.Position=UDim2.new(0,0,0.9,0)
decorFrame.Size=UDim2.new(0,370,0,3)

-- Decorative Line
decorLine.Parent=da
decorLine.BackgroundColor3=Color3.new(0,0.5,1)
decorLine.Position=UDim2.new(0,0,0.75,0)
decorLine.Size=UDim2.new(0,370,0,2)

-- Timer Function
spawn(function()
    while true do
        local elapsedTime = tick() - startTime
        local hours = math.floor(elapsedTime / 3600)
        local minutes = math.floor((elapsedTime % 3600) / 60)
        local seconds = math.floor(elapsedTime % 60)
        timerLabel.Text = string.format("Time Elapsed: %02d:%02d:%02d", hours, minutes, seconds)
        wait(1)
    end
end)

local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
    bb:CaptureController()
    bb:ClickButton2(Vector2.new())
    ab.Text="Roblox Tried to kick you but we didnt let them kick you :D"
    wait(2)
    ab.Text="Status : Active"
end)
