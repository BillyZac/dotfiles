hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
  hs.notify.new({title="Hammerspoon", informativeText="Hello werld."}):send()
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 1000
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
  hs.notify.new({title="Hammerspoon", informativeText="Switcheroonee..."}):send()
  local laptopScreen = "Color LCD"
  local windowLayout = {
      {"Google Chrome", nil, laptopScreen, hs.layout.left50, nil, nil},
      {"Atom", nil, laptopScreen, hs.layout.right50, nil, nil},
      {"Terminal", nil, laptopScreen, hs.layout.right50, nil, nil},
  }
  hs.layout.apply(windowLayout)
end)

function applicationWatcher(appName, eventType, appObject)
    if (eventType == hs.application.watcher.activated) then
        if (appName == "Finder") then
            -- Bring all Finder windows forward when one gets activated
            appObject:selectMenuItem({"Window", "Bring All to Front"})
        end
    end
end
local appWatcher = hs.application.watcher.new(applicationWatcher)
appWatcher:start()

local wifiWatcher = nil
local homeSSID = "WeWork"
local lastSSID = hs.wifi.currentNetwork()

function ssidChangedCallback()
    newSSID = hs.wifi.currentNetwork()

    if newSSID == homeSSID and lastSSID ~= homeSSID then
        -- We just joined our home WiFi network
        hs.notify.new({title="Hammerspoon", informativeText="Config reloaded"}):send()
    end

    lastSSID = newSSID
end

wifiWatcher = hs.wifi.watcher.new(ssidChangedCallback)
wifiWatcher:start()

hs.urlevent.bind("synapseMessage", function(eventName, params)
    hs.notify.new({title="Hammerspoon", informativeText="Synapse is loaded."}):send()
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)
hs.notify.new({title="Hammerspoon", informativeText="Config reloaded"}):send()
