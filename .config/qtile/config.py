# Copyright (c) 2010 Aldo Cortesi
# Copyright (c) 2010, 2014 dequis
# Copyright (c) 2012 Randall Ma
# Copyright (c) 2012-2014 Tycho Andersen
# Copyright (c) 2012 Craig Barnes
# Copyright (c) 2013 horsik
# Copyright (c) 2013 Tao Sauvage
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

from libqtile.config import Key, Screen, Group, Drag, Click
from libqtile.command import lazy
from libqtile import layout, bar, widget, hook

import os
import socket
import re
import subprocess


@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~/.config/qtile/autostart.sh')
    subprocess.call([home])







##### DEFINING VARIABLES AND COLORS
mod = "mod4"
myTerm = "alacritty"
myBrowser = "firefox"
monadTheme = {"margin": 10,
              "border_width": 2,
              "border_focus": "458588"
              }

keys = [
    # Switch between windows in current stack pane
    Key([mod], "h", lazy.layout.left()),
Key([mod], "l", lazy.layout.right()),
Key([mod], "j", lazy.layout.down()),
Key([mod], "k", lazy.layout.up()),
Key([mod, "shift"], "h", lazy.layout.swap_left()),
Key([mod, "shift"], "l", lazy.layout.swap_right()),
Key([mod, "shift"], "j", lazy.layout.shuffle_down()),
Key([mod, "shift"], "k", lazy.layout.shuffle_up()),
Key([mod], "i", lazy.layout.grow()),
Key([mod,"control"], "h", lazy.layout.shrink()),
Key([mod, "control"], "l", lazy.layout.normalize()),
Key([mod], "o", lazy.layout.maximize()),
Key([mod, "shift"], "space", lazy.spawn('rofi -show run')),
Key([mod],"space", lazy.spawn('rofi -show drun')),
    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key(
        [mod, "shift"], "Return", lazy.spawn(myBrowser)),
    Key([mod], "Return", lazy.spawn(myTerm)),

    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout()),
    Key([mod, "shift"], "q", lazy.window.kill()),

    Key([mod, "shift"], "r", lazy.restart()),
    Key([mod, "shift"], "e", lazy.shutdown()),
    Key([mod], "r", lazy.spawncmd()),
    Key([], "XF86AudioRaiseVolume",lazy.spawn("pactl set-sink-volume @DEFAULT_SINK@ +5%")),
    Key([], "XF86AudioLowerVolume",lazy.spawn("pactl set-sink-volume @DEFAULT_SINK@ -5%")),
    Key([], "XF86AudioMute", lazy.spawn("pactl set-sink-mute @DEFAULT_SINK@ toggle")),
    Key([mod],"n", lazy.spawn("rofication-gui"))



]

groups = [Group(i) for i in "123456789"]

for i in groups:
    # mod1 + letter of group = switch to group
    keys.append(
        Key([mod], i.name, lazy.group[i.name].toscreen())
    )

    # mod1 + shift + letter of group = switch to & move focused window to group
    keys.append(Key([mod, "shift"], i.name, lazy.window.togroup(i.name)))

layouts = [
    layout.MonadTall(**monadTheme),
    layout.Max(**monadTheme)
    ]
colors = [["#32302f", "#32302f"], # panel background
          ["#3c3836", "#3c3836"], # background for current screen tab
          ["#ebdbb2", "#ebdbb2"], # font color for group names
          ["#ff5555", "#ff5555"], # border line color for current tab
          ["#8d62a9", "#8d62a9"], # border line color for other tab and odd widgets
          ["#458588", "#458588"], # color for the even widgets
          ["#e1acff", "#e1acff"]] # window name


widget_defaults = dict(
    font='Iosevka Nerd Font',
    fontsize=16,
    padding=5,
)

screens = [
    Screen(
        top=bar.Bar([widget.GroupBox(
                margin_x = -1,
                active = colors[2],
                inactive = colors[2],
                rounded = True,
                highlight_color = colors[1],
                highlight_method = 'line',
                this_current_screen_border = colors[5],
                ),
                      ],
            30,
            background=colors[0]),
    ),
]



# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
        start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
        start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []
main = None
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating()
auto_fullscreen = True
focus_on_window_activation = "smart"
extentions = []

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, github issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
