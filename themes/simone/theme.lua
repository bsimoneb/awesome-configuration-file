local gears   = require("gears")
local lain    = require("lain")
local awful   = require("awful")
local wibox   = require("wibox")
local os      = { getenv = os.getenv, setlocale = os.setlocale }
local awesome, client = awesome, client
local gpmdp   = require("widgets.gpmdp")

local theme                                     = {}
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes"
theme.fg_normal                                 = "#BBBBBB"
theme.fg_focus                                  = "#BBBBBB"
--theme.bg_normal                                 = "#111111"
theme.bg_normal                                 = "#11111180"
theme.bg_focus                                  = "#111111"
theme.fg_urgent                                 = "#000000"
theme.bg_urgent                                 = "#FFFFFF"
theme.border_width                              = 1
theme.border_normal                             = "#141414"
theme.border_focus                              = "#93B6FF"
theme.taglist_fg_focus                          = "#FFFFFF"
theme.taglist_fg_normal                         = "#616161"
theme.taglist_bg_focus                          = "#111111"
theme.taglist_bg_normal                         = "#111111"
theme.titlebar_bg_normal                        = "#191919"
theme.titlebar_bg_focus                         = "#262626"
theme.menu_height                               = 25
theme.menu_width                                = 250
theme.tasklist_disable_icon                     = true



local markup = lain.util.markup
local blue   = theme.fg_focus
local red    = "#EB8F8F"
local green  = "#8FEB8F"
local white	 = theme.fg_normal

function theme.at_screen_connect(s)
    	-- Create the vertical wibox
    s.myverticalwibox = awful.wibar({ position = "left", screen = s, width = 443, bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the wibox
    s.myverticalwibox:setup {
        layout = wibox.layout.align.vertical,
        { -- Top widgets
            layout = wibox.layout.fixed.vertical,
	   -- mylauncher,
        }
    }
end

return theme
