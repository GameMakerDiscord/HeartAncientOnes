///@func city_get_y(_cell_x, _cell_y)
///@desc return a pixel y position for a city cell y
///@param {Real} _cell_x  x cell (unused, consistency)
///@param {Real} _cell_y  y cell 
///@returns {Real} pixel y position for the cell y
var _cell_x = argument[0];
var _cell_y = argument[1];

return TileMapOffsetY + (_cell_y * TileMapCellHeight);