function Initialize()
    text = SKIN:GetMeter('MeterScrollingText')
    speed = 6
    position = 0
    maxWidth = 300 -- Largeur maximale avant de recommencer
end

function Update()
    position = position - speed
    
    if position < -text:GetW() then
        position = maxWidth + text:GetW()
    end
    
    text:SetX(position)
    return ''
end