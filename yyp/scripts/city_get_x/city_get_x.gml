///@func city_get_x(_cell_x, _cell_y)
///@desc return a pixel x position for a city cell x
///@param {Real} _cell_x  x cell
///@param {Real} _cell_y  y cell (unused, consistency)
///@returns {Real} pixel x position for the cell x
var _cell_x = argument[0];
var _cell_y = argument_count > 1 ? argument[1] : 0;

return TileMapOffsetX + (_cell_x * TileMapCellWidth);