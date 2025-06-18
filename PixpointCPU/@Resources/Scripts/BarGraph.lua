function Initialize()
end

function Update()
    local barsMeasure = SKIN:GetMeasure("MeasureBars")
    local barCount = tonumber(barsMeasure:GetValue()) or 0
    local maxBars = 20

    local filled = string.rep("|", barCount)
    local empty = string.rep(" ", maxBars - barCount)

    local cpuPercent = SKIN:GetMeasure("MeasureCPU"):GetValue()
    local cpuText = string.format(" %s%s ", filled, empty, cpuPercent)

    return cpuText
end