///@desc TitleBar - Step
var mousedown = mouse_check_button(mb_left);
var canDrag = false;
  
if (mousedown) {
  if (WasDragging || WasUp) {
    with (UI) {
      canDrag = Focus == noone || Focus == id;
    }
  
    var mousex = window_mouse_get_x();
    var mousey = window_mouse_get_y();
    
    if (WasDragging && canDrag) {
      var wx = window_get_x();
      var wy = window_get_y();
  
      wx += mousex - Lastmousex;
      wy += mousey - Lastmousey;
    
      window_set_position(wx, wy);
    } else if (canDrag) {
      canDrag = position_meeting(mouse_x, mouse_y, id);
    
      Lastmousex = mousex;
      Lastmousey = mousey;
    }
  
    WasDragging = canDrag;
  }
  
  WasUp = false;
} else {
  WasUp = true;
  WasDragging = false;
}
