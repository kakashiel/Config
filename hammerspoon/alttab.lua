switcher_space = hs.window.switcher.new(hs.window.filter.new():setCurrentSpace(true):setDefaultFilter({}))
hs.hotkey.bind("alt", "tab", function()
	switcher_space:next()
end)
hs.hotkey.bind("alt-shift", "tab", function()
	switcher_space:previous()
end)
