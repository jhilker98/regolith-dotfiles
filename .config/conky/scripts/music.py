#!/usr/bin/env python3.6
import gi

gi.require_version('Playerctl', '2.0')
from gi.repository import Playerctl, GLib


manager = Playerctl.PlayerManager()


def init_player(name):
    player = Playerctl.Player.new_from_name(name)
    player.connect('playback-status::playing', on_play, manager)
    player.connect('metadata', on_metadata, manager)
    manager.manage_player(player)


def on_metadata(player, metadata, manager):
    keys = metadata.keys()
    if 'xesam:artist' in keys and 'xesam:title' in keys:
        print(f'{metadata["xesam:artist"][0]} - {metadata["xesam:title"]}')


def on_play(player, status, manager):
    print(f'playing {player.props.player_name}')


def on_name_appeared(manager, name):
    init_player(name)


def on_player_vanished(manager, player):
    print(f'exited player {player.props.player_name}')


manager.connect('name-appeared', on_name_appeared)
manager.connect('player-vanished', on_player_vanished)

for name in manager.props.player_names:
    print(init_player(name))

main = GLib.MainLoop()
main.run()
