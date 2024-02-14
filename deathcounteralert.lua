local toggle = false
local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local window = Library:NewWindow("death counter alert")
local section = window:NewSection("test 2")

section:CreateToggle("Death Counter Alert", function(value)
toggle = value
end)

spawn(function()
    while true do
        if toggle == true then
            for i,v in pairs(workspace.Live:GetChildren()) do
                if v:FindFirstChild("Counter") and not v:FindFirstChild("AlertHighlight") then
                    local highlight = Instance.new("Highlight")
                    highlight.Name = "AlertHighlight"
                    highlight.Parent = v
                end
                if v:FindFirstChild("AlertHighlight") and not v:FindFirstChild("Counter") then
                    v.AlertHighlight:Destroy()
                end
            end
        end
    task.wait()
    end
end)
