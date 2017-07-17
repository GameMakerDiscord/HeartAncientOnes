///@func city_move_token(_token, _new_cell_x, _new_cell_y)
///@desc move the token to the cell 
///@param {Real} _token       token instance id
///@param {Real} _new_cell_x  new cell x position for token
///@param {Real} _new_cell_y  new cell y position for token
var _token = argument0;
var _ncx   = argument1;
var _ncy   = argument2;

var cols, row, width;
with (_token) {
  cols  = Col;
  row   = Row;
  width = TileWidth;
}

with (City) {
  var numCols = array_length_1d(cols);
  for (var i = 0; i < width; ++i) {
    if (i < numCols && cols[i] >= 0 && row >= 0)
      TokenGrid[# cols[i], row] = noone;
    
    if (_ncx + i >= 0 && _ncx + i < TableCols && _ncy >= 0 && _ncy < TableRows)
      TokenGrid[# _ncx + i, _ncy] = _token;

    _token.Col[@ i] = _ncx + i;
    _token.Row      = _ncy;

  }

}