simpleClock = {

}
simpleClock.name = "simpleClock"

local function updateClock()
    time = os.date("%a %b %d, %H:%M:%S")
    simpleClockLable:SetText(time)
end

function simpleClock.OnAddOnLoaded()
    updateClock()
end

EVENT_MANAGER:RegisterForEvent(simpleClock.name, EVENT_ADD_ON_LOADED, simpleClock.OnAddOnLoaded)