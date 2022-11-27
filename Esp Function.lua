function addEspUi(part)
    local partGui = Instance.new("BillboardGui", part)
    partGui.Size = UDim2.new(1,0,1,0)
    partGui.AlwaysOnTop true
    partGui.Name = "Sinner-ESP"
    local frame = Instance.new("Frame), partGui)
    frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    frame.BackgroundTransparency = 0.75
    frame.Size = UDim2.new(1,0,1,0)
    frame.BorderSizePixel = 0
    local nameGui = Instance.new("BillboardGui", part)
    nameGui.Size = UDim2.new(3,0,1.5,0)
    nameGui.SizeOffset = Vector2.new(0,1)
    nameGui.AlwaysOnTop = true
    nameGui.Name = "Name"
    local text = Instance.new("TextLabel", nameGui)
    text.Text = part.Parent.DisplayName.Value
    text.TextColor3 = Color3.fromRGB(255,0,0)
    text.TextTransparency = 0.25
    text.BackgroundTransparency = 1
    text.TextScaled = true
    text.Size = UDim2.new(1,0,1,0)
    text.Font = Enum.Font.Cartoon
    text.Name = "Text"
end
  
--[[
Example of use:
for _,v in pairs() do
    if v ~= nil then
       addEspUi(Path.Part)
    end
end
    
Path.ChildAdded:Connect(function(v)
  addEspUi(Path.Part)
end)
]]
