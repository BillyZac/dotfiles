require "pomodoor"

-- init grid
hs.grid.MARGINX 	= 0
hs.grid.MARGINY 	= 0
hs.grid.GRIDWIDTH  	= 4
hs.grid.GRIDHEIGHT 	= 5

--hs.hints.style = "vimperator"

-- hotkey mash
local mash       = {"ctrl", "alt"}
local mash_app 	 = {"cmd", "alt", "ctrl"}
local mash_shift = {"ctrl", "alt", "shift"}
local mash_cmd	 = {"cmd", "ctrl", "shift"}

--------------------------------------------------------------------------------
appCuts = {
  t = 'Terminal',
  g = 'Google chrome',
  s = 'Slack',
  f = 'Finder',
  m = 'Mail',
  k = 'Sketch',
  d = 'Visual Studio Code',
}

-- Launch applications
for key, app in pairs(appCuts) do
  hs.hotkey.bind(
	mash_app,
	key,
	function ()
		hs.alert.show(app)
		hs.application.launchOrFocus(app)
	end
)
end


-- global operations
hs.hotkey.bind(mash, ';', function() hs.grid.snap(hs.window.focusedWindow()) end)
hs.hotkey.bind(mash, "'", function() hs.fnutils.map(hs.window.visibleWindows(), hs.grid.snap) end)

-- adjust grid size
hs.hotkey.bind(mash, '=', function() hs.grid.adjustWidth( 1) end)
hs.hotkey.bind(mash, '-', function() hs.grid.adjustWidth(-1) end)
hs.hotkey.bind(mash, ']', function() hs.grid.adjustHeight( 1) end)
hs.hotkey.bind(mash, '[', function() hs.grid.adjustHeight(-1) end)

-- change focus
hs.hotkey.bind(mash_app, 'left', function() hs.window.focusedWindow():focusWindowWest() end)
hs.hotkey.bind(mash_app, 'right', function() hs.window.focusedWindow():focusWindowEast() end)
hs.hotkey.bind(mash_app, 'up', function() hs.window.focusedWindow():focusWindowNorth() end)
hs.hotkey.bind(mash_app, 'down', function() hs.window.focusedWindow():focusWindowSouth() end)

hs.hotkey.bind(mash, '\\', hs.grid.maximizeWindow)

-- multi monitor
hs.hotkey.bind(mash, 'pagedown', hs.grid.pushWindowNextScreen)
hs.hotkey.bind(mash, 'pageup', hs.grid.pushWindowPrevScreen)

-- move windows
hs.hotkey.bind(mash, 'left', hs.grid.pushWindowLeft)
hs.hotkey.bind(mash, 'down', hs.grid.pushWindowDown)
hs.hotkey.bind(mash, 'up', hs.grid.pushWindowUp)
hs.hotkey.bind(mash, 'right', hs.grid.pushWindowRight)
local function centerWindow()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 10
  win:centerOnScreen(f)
end
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "C", centerWindow)

-- resize windows
hs.hotkey.bind(mash_shift, 'left', hs.grid.resizeWindowThinner)
hs.hotkey.bind(mash_shift, 'up', hs.grid.resizeWindowShorter)
hs.hotkey.bind(mash_shift, 'down', hs.grid.resizeWindowTaller)
hs.hotkey.bind(mash_shift, 'right', hs.grid.resizeWindowWider)

-- Window Hints
hs.hotkey.bind(mash, '.', hs.hints.windowHints)

-- snap all newly launched windows
local function auto_tile(appName, event)
	if event == hs.application.watcher.launched then
		local app = hs.appfinder.appFromName(appName)
		-- protect against unexpected restarting windows
		if app == nil then
			return
		end
		hs.fnutils.map(app:allWindows(), hs.grid.snap)
	end
end

-- start app launch watcher
hs.application.watcher.new(auto_tile):start()

-- config auto-reload
local function reload_config(files)
    hs.reload()
end
hs.pathwatcher.new(hs.configdir, reload_config):start()
hs.alert.show("Config Re-loaded")
