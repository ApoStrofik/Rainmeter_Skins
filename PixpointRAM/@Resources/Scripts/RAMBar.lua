function Update()
    local percent = tonumber(SKIN:GetMeasure("MeasureRAMPercent"):GetValue())
    local bars = math.floor(percent / 5)
    local totalBars = 20
    local bar = string.rep("|", bars) .. string.rep(" ", totalBars - bars)
    return string.format(" %s ", bar)
end