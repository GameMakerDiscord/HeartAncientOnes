///@func color_hex(_hex_color)
///@desc Convert the RGB to BGR
///@param {Real} _hex_color
///https://forum.yoyogames.com/index.php?threads/why-are-hex-colours-bbggrr-instead-of-rrggbb.16325/#post-105309
gml_pragma("forceinline");

var _hex_color = argument0;
return (_hex_color & $FF) << 16 | (_hex_color & $FF00) | (_hex_color & $FF0000) >> 16;