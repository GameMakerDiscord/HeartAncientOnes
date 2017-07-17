///@func city_get_cell_y(_px_x, _px_y)
///@desc return a city cell y for pixel y
///@param {Real} _px_x  pixel x  (unused, consistency) 
///@param {Real} _px_y  pixel y  
///@returns {Real} pixel y position for the cell y
gml_pragma("forceinline");
var _px_x = argument[0];
var _px_y = argument[1];

return floor((_px_y - TileMapOffsetY) / TileMapCellHeight);