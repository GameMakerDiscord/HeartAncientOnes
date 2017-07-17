///@func draw_frame9(_frame, _width, _height, [_xoffset=0], [_yoffset=0])
///@desc draw a 9-sliced frame
///@param {Real} _frame     `sprite_index` for the frame sprite
///@param {Real} _width     width of the frame
///@param {Real} _height    height of the frame
///@param {Real} _xoffset   offset to draw frame at (x)
///@param {Real} _yoffset   offset to draw frame at (y)
var _frame  = argument[0];
var _width  = argument[1];
var _height = argument[2];
var _xoffset = argument_count > 3 ? argument[3] : 0;
var _yoffset = argument_count > 4 ? argument[4] : 0;

var w = sprite_get_width(_frame);
var h = sprite_get_height(_frame);
  
var rows = ceil(_height / h);
var cols = ceil(_width / w);
  
var drawy = _yoffset;
for (var row = 0; row < rows; ++row) {
  if (row == rows - 1)
    drawy = _yoffset + _height - h;
      
  var drawx = _xoffset;
  for (var col = 0; col < cols; ++col) {
    if (col == cols - 1)
      drawx = _xoffset + _width - w;
        
    var subimg = Frame9.C;
    if (row == 0 || row == rows - 1) {
      subimg = Frame9.T;
      if (col == 0) {
        subimg = Frame9.TL;
      } else if (col == cols -1) {
        subimg = Frame9.TR;
      }
        
      if (row == rows - 1)
        subimg += Frame9.BL - Frame9.TL;
          
    } else if (col == 0 || col == cols - 1) {
      subimg = col == 0 ? Frame9.L : Frame9.R;
    }
      
    draw_sprite(_frame, subimg, drawx, drawy);      
    drawx += w;
  }
  drawy += h;
}