///@func city_get_cell_x(_px, _py)
///@desc return a city cell x for pixel x
///@param {Real} _pxx  pixel x 
///@param {Real} _pxy  pixel y  (unused, consistency)
///@returns {Real} pixel x position for the cell x
gml_pragma("forceinline");
var _px_x = argument[0];
var _px_y = argument_count > 1 ? argument[1] : 0;

return floor((_px_x - TileMapOffsetX) / TileMapCellWidth);