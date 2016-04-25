-----------------------------------------------
-- Set up
-----------------------------------------------

local hyper = {"shift", "cmd", "alt", "ctrl"}

hs.window.animationDuration = 0

-----------------------------------------------
-- arrowDown - to move by down by window height
-----------------------------------------------
hs.hotkey.bind(hyper, 'down', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local screenRect = screen:frame()

        if f.x == math.floor(screenRect.x + screenRect.w / 2) and f.y == math.floor(screenRect.y + screenRect.h / 2) and f.w == math.floor(screenRect.w / 2) and f.h == math.floor(screenRect.h / 2) then
            f.x = math.floor(screenRect.x + screenRect.w / 2)
            f.y = math.floor(screenRect.y + screenRect.h / 2)
            f.w = math.floor(screenRect.w / 4)
            f.h = f.h
        elseif f.x == math.floor(screenRect.x + screenRect.w / 2) and f.y == math.floor(screenRect.y + screenRect.h / 2) and f.w == math.floor(screenRect.w / 4) and f.h == f.h then
            f.x = math.floor((screenRect.x + screenRect.w / 2) + screenRect.w / 4)
            f.y = math.floor(screenRect.y + screenRect.h / 2)
            f.w = math.floor(screenRect.w / 4)
            f.h = f.h
        else
            f.x = math.floor(screenRect.x + screenRect.w / 2)
            f.y = math.floor(screenRect.y + screenRect.h / 2)
            f.w = math.floor(screenRect.w / 2)
            f.h = math.floor(screenRect.h / 2)
        end
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)

-----------------------------------------------
-- arrowUp - to move up by window height
-----------------------------------------------
hs.hotkey.bind(hyper, 'up', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local screenRect = screen:frame()

        if f.x == screenRect.x and f.y == screenRect.y and f.w == math.floor(screenRect.w / 2) and f.h == math.floor(screenRect.h / 2) then
            f.x = screenRect.x
            f.y = screenRect.y
            f.w = math.floor(screenRect.w / 4)
            f.h = f.h
        elseif f.x == screenRect.x and f.y == screenRect.y and f.w == math.floor(screenRect.w / 4) and f.h == f.h then
            f.x = math.floor(screenRect.x + screenRect.w / 4)
            f.y = screenRect.y
            f.w = math.floor(screenRect.w / 4)
            f.h = f.h
        else
            f.x = screenRect.x
            f.y = screenRect.y
            f.w = math.floor(screenRect.w / 2)
            f.h = math.floor(screenRect.h / 2)
        end
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)

-----------------------------------------------
-- arrowLeft - to move left by window width
-----------------------------------------------
hs.hotkey.bind(hyper, 'right', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local screenRect = screen:frame()

        if f.x == math.floor(screenRect.x + screenRect.w / 2) and f.y == screenRect.y and f.w == math.floor(screenRect.w / 2) and f.h == math.floor(screenRect.h / 2) then
            f.x = math.floor(screenRect.x + screenRect.w / 2)
            f.y = screenRect.y
            f.w = math.floor(screenRect.w / 4)
            f.h = f.h
        elseif f.x == math.floor(screenRect.x + screenRect.w / 2) and f.y == screenRect.y and f.w == math.floor(screenRect.w / 4) and f.h == f.h then
            f.x = math.floor((screenRect.x + screenRect.w / 2) + screenRect.w / 4)
            f.y = screenRect.y
            f.w = math.floor(screenRect.w / 4)
            f.h = f.h
        else
            f.x = math.floor(screenRect.x + screenRect.w / 2)
            f.y = screenRect.y
            f.w = math.floor(screenRect.w / 2)
            f.h = math.floor(screenRect.h / 2)
        end
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)

-----------------------------------------------
-- arrowRight - to move right by window width
-----------------------------------------------
hs.hotkey.bind(hyper, 'left', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local screenRect = screen:frame()

        if f.x == screenRect.x and f.y == math.floor(screenRect.y + screenRect.h / 2) and f.w == math.floor(screenRect.w / 2) and f.h == math.floor(screenRect.h / 2) then
            f.x = screenRect.x
            f.y = math.floor(screenRect.y + screenRect.h / 2)
            f.w = math.floor(screenRect.w / 4)
            f.h = f.h
        elseif f.x == screenRect.x and f.y == math.floor(screenRect.y + screenRect.h / 2) and f.w == math.floor(screenRect.w / 4) and f.h == f.h then
            f.x = math.floor(screenRect.x + screenRect.w / 4)
            f.y = math.floor(screenRect.y + screenRect.h / 2)
            f.w = math.floor(screenRect.w / 4)
            f.h = f.h
        else
            f.x = screenRect.x
            f.y = math.floor(screenRect.y + screenRect.h / 2)
            f.w = math.floor(screenRect.w / 2)
            f.h = math.floor(screenRect.h / 2)
        end
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)


-----------------------------------------------
-- hyper - to divide width by 2
-----------------------------------------------
hs.hotkey.bind(hyper, '-', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local screenRect = screen:frame()

        f.x = f.x
        f.y = f.y
        f.w = f.w / 2
        f.h = f.h
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)


-----------------------------------------------
-- hyper + to multiply width by 2
-----------------------------------------------
hs.hotkey.bind(hyper, '=', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local screenRect = screen:frame()

        f.x = f.x
        f.y = f.y
        f.w = f.w * 2
        f.h = f.h
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)


-----------------------------------------------
-- hyper [ to divide width by 2
-----------------------------------------------
hs.hotkey.bind(hyper, '[', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local screenRect = screen:frame()

        f.x = f.x
        f.y = f.y
        f.w = f.w
        f.h = f.h / 2
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)


-----------------------------------------------
-- hyper ] to multiply width by 2
-----------------------------------------------
hs.hotkey.bind(hyper, ']', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local screenRect = screen:frame()

        f.x = f.x
        f.y = f.y
        f.w = f.w
        f.h = f.h * 2
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)


-----------------------------------------------
-- hyper d for left one half window
-----------------------------------------------

hs.hotkey.bind(hyper, 'd', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local screenRect = screen:frame()

        if f.x == screenRect.x and f.y == screenRect.y and f.w == math.floor(screenRect.w / 2) and f.h == screenRect.h then
            f.x = screenRect.x
            f.y = screenRect.y
            f.w = math.floor(screenRect.w / 3)
            f.h = screenRect.h
        else
            f.x = screenRect.x
            f.y = screenRect.y
            f.w = math.floor(screenRect.w / 2)
            f.h = screenRect.h
        end
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)

-----------------------------------------------
-- hyper g for right one half window
-----------------------------------------------

hs.hotkey.bind(hyper, 'g', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local screenRect = screen:frame()

        if f.x == screenRect.x + math.floor(screenRect.w / 2) and f.y == screenRect.y and f.w == math.floor(screenRect.w / 2) and f.h == screenRect.h then
            f.x = screenRect.x + 2 * math.floor(screenRect.w / 3)
            f.y = screenRect.y
            f.w = math.floor(screenRect.w / 3)
            f.h = screenRect.h
        else
            f.x = screenRect.x + math.floor(screenRect.w / 2)
            f.y = screenRect.y
            f.w = math.floor(screenRect.w / 2)
            f.h = screenRect.h
        end
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)

-----------------------------------------------
-- hyper f for fullscreen
-----------------------------------------------

hs.hotkey.bind(hyper, 'f', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local screenRect = screen:frame()

        local secondaryFullWidth = math.floor(screenRect.w / 2)
        local secondaryFullHeight = math.floor(screenRect.h / 2)

        if f.x == screenRect.x and f.y == screenRect.y and f.w == screenRect.w and f.h == screenRect.h then
            f.x = screenRect.x + math.floor(screenRect.w / 3)
            f.y = screenRect.y
            f.w = math.floor(screenRect.w / 3)
            f.h = screenRect.h
        elseif f.x == screenRect.x + math.floor(screenRect.w / 3) and f.y == screenRect.y and f.w == math.floor(screenRect.w / 3) and f.h == screenRect.h  then
            f.x = math.floor(screenRect.x + (screenRect.w - secondaryFullWidth) / 2)
            f.y = screenRect.y
            f.w = secondaryFullWidth
            f.h = secondaryFullHeight
        elseif f.x == math.floor(screenRect.x + (screenRect.w - secondaryFullWidth) / 2) and f.y == screenRect.y and f.w == secondaryFullWidth and f.h == secondaryFullHeight  then
            f.x = math.floor(screenRect.x + (screenRect.w - secondaryFullWidth) / 2)
            f.y = math.floor(screenRect.y + (screenRect.h - secondaryFullHeight) / 2)
            f.w = secondaryFullWidth
            f.h = secondaryFullHeight
        elseif f.x == math.floor(screenRect.x + (screenRect.w - secondaryFullWidth) / 2) and f.y == math.floor(screenRect.y + (screenRect.h - secondaryFullHeight) / 2) and f.w == secondaryFullWidth and f.h == secondaryFullHeight  then
            f.x = math.floor(screenRect.x + (screenRect.w - secondaryFullWidth) / 2)
            f.y = math.floor(screenRect.y + 2 * (screenRect.h - secondaryFullHeight) / 2)
            f.w = secondaryFullWidth
            f.h = secondaryFullHeight
        else
            f.x = screenRect.x
            f.y = screenRect.y
            f.w = screenRect.w
            f.h = screenRect.h
        end
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)


-----------------------------------------------
-- Hyper i to show window hints
-----------------------------------------------

hs.hotkey.bind(hyper, 'i', function()
    hs.hints.windowHints()
end)

-- Launch/focus specific apps with one keystroke.
-- Note: to get {^1,^2,^3} to work, you might need to change some conflicting
-- Mission Control keyboard shortcuts in SysPrefs > Keyboard > Shortcuts
hs.hotkey.bind( hyper , 'c', function() hs.application.launchOrFocus('Google Chrome') end)
hs.hotkey.bind( hyper , 'a', function() hs.application.launchOrFocus('Atom') end)
hs.hotkey.bind( hyper , 't', function() hs.application.launchOrFocus('iTerm') end)
hs.hotkey.bind( hyper , 's', function() hs.application.launchOrFocus('Spotify') end)
hs.hotkey.bind( hyper , 'e', function() hs.application.launchOrFocus('Evernote') end)
hs.hotkey.bind( hyper , 'f1', function() hs.application.launchOrFocus('Finder') end)
hs.hotkey.bind( hyper , 'p', function() hs.application.launchOrFocus('Adobe Photoshop CC 2015') end)
hs.hotkey.bind( hyper , 'm', function()
    local focusedAppName = hs.application.frontmostApplication():title()
    if focusedAppName == 'Slack' then
      hs.application.launchOrFocus('HipChat')
    elseif focusedAppName == 'HipChat' then
      hs.application.launchOrFocus('Messages')
    else
      hs.application.launchOrFocus('Slack')
    end
end)



-------------------------------------------------------------------
-- Toggle window from one screen to another preserving aspect ratio
-------------------------------------------------------------------
hs.hotkey.bind( hyper, "space", function ()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local currentScreen = win:screen()
        local nextScreen =currentScreen:next()

        win:moveToScreen(nextScreen)
        print("Moved window from screen " .. currentScreen:name() .. " to " .. nextScreen:name())

    else
        hs.alert("No Active Window")
    end
end)

-------------------------------------------------------------------
-- Hyper backslach(\) to bring mouse to center of screen
-------------------------------------------------------------------
hs.hotkey.bind( hyper, 42, function ()
    local currentScreen = hs.mouse.getCurrentScreen()
    local currentScreenRect = currentScreen:frame()
    local currentScreenRectCenter = {}
    local currentMouseCoordinate = hs.mouse.getAbsolutePosition()

    hs.mouse.setAbsolutePosition({ x = currentScreenRect.x + currentScreenRect.w / 2, y = currentScreenRect.y + currentScreenRect.h / 2 })
end)


-----------------------------------------------
-- Reload config on write
-----------------------------------------------

function reload_config(files)
    hs.reload()
end
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reload_config):start()
hs.alert.show("Config loaded")
