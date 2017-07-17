///@func shadow_text(_x, _y, _text, _fg, _bg, [_xoffset=0], [_yoffset=1])
///@desc Draw text with a shadow
///@param {Real} _x
///@param {Real} _y
///@param {Real} _text
///@param {Real} _fg
///@param {Real} _bg
///@param {Real} [_xoffset=0]
///@param {Real} [_yoffset=1]
gml_pragma("forceinline");

var xx = argument[0];
var yy = argument[1];
var txt = argument[2];
var fgColor = argument[3];
var bgColor = argument[4];
var xxoffset = argument_count > 5 ? argument[5] : 0;
var yyoffset = argument_count > 6 ? argument[6] : 1;

var oldColor = draw_get_color();
draw_set_color(bgColor);
draw_text(xx+xxoffset, yy+yyoffset, txt);

draw_set_color(fgColor);
draw_text(xx, yy, txt);

draw_set_color(oldColor);