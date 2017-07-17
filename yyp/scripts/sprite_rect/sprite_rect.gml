///@func sprite_rect(_x1, _y1, _x2, _y2, _color, _sprite)
///@desc draw a rectangle with the specified sprite
///@param {Real} _x1      min corner x for drawing the rect
///@param {Real} _y1      min corner y for drawing the rect
///@param {Real} _x2      max corner x 
///@param {Real} _y2      max corner y
///@param {Real} _color   color to blend white pixel sprite with
///@param {Real} _sprite  sprite to use for rectangle, applying _color to it.
var _x1     = argument0,
    _y1     = argument1,
    _x2     = argument2,
    _y2     = argument3,
    _color  = argument4,
    _sprite = argument5;
    
var sw = sprite_get_width(_sprite);
var sh = sprite_get_height(_sprite);

var l = _x1; var r = l + ceil((_x2 - _x1) / sw);
var t = _y1; var b = t + ceil((_y2 - _y1) / sh);

var temp;
if (l > r) { temp = l; l = r; r = temp; }
if (b > b) { temp = t; t = b; b = temp; }

var w = (r - l) + 1;
var h = (b - t) + 1;

// draw a border around the play area
draw_sprite_ext(_sprite, 0, l, t, 1, h, 0, _color, 1.0);  // left
draw_sprite_ext(_sprite, 0, l, t, w, 1, 0, _color, 1.0);  // top
draw_sprite_ext(_sprite, 0, r, t, 1, h, 0, _color, 1.0);  // right
draw_sprite_ext(_sprite, 0, l, b, w, 1, 0, _color, 1.0);  // bottom