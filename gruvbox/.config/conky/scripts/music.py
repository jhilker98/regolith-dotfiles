import gi
import textwrap

gi.require_version('Playerctl', '2.0')

from gi.repository import Playerctl


def track_progress(milliseconds):
    milliseconds = milliseconds / 1000
    seconds = (milliseconds / 1000) % 60
    minutes = (milliseconds / (1000 * 60)) % 60
    return f'{int(minutes)}:{int(seconds):02d}'


player = Playerctl.Player.new('ncspot')
player_status = player.get_property('status')
metadata = player.props.metadata.unpack()
if player_status == 'Playing':
    artist = textwrap.shorten(player.get_artist(), width=25, placeholder='...')
    title = textwrap.shorten(player.get_title(), width=25, placeholder='...')
    print(
        '${offset 5}${font3}${color2}阮${color} '
        + f'{title} '
        + '${font4}${color8}'
        + f'{artist}'
        + '${font2}${color9}'
    )
elif player_status == 'Paused':
    print('${offset 5}${font3}${color2}阮${color} ' + player_status + '${font2}')

