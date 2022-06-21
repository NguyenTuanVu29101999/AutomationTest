import re

def rgb_to_hex(rgb_color):

    rgb_color = re.search('\(.*\)', rgb_color).group(0).replace(' ', '').lstrip('(').rstrip(')')
    print("rbg:", rgb_color)

    [r, g, b, a] = [int(x) for x in rgb_color.split(',')]
    # check if in range 0~255

    assert 0 <= r <= 255
    assert 0 <= g <= 255
    assert 0 <= b <= 255

    r = hex(r).lstrip('0x')
    g = hex(g).lstrip('0x')
    b = hex(b).lstrip('0x')

    # re-write '7' to '07'
    r = (2 - len(r)) * '0' + r
    g = (2 - len(g)) * '0' + g
    b = (2 - len(b)) * '0' + b

    hex_color = '#' + r + g + b
    return hex_color


def transform_RGBA_to_HEX(rgba):
    rgba = eval(rgba[4:])
    color_hex = "#{:02x}{:02x}{:02x}".format(*rgba)
    return color_hex
