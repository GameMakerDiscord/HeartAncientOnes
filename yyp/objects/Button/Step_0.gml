///@desc Button - Step
var mousedown = mouse_check_button(mb_left);
var lastsubimg = image_index;
if (mousedown != WasDown) {
  var canClick = false;
  with (UI) canClick = (Focus == other || Focus == noone);
  if (!mousedown) {
    var tt = 0;
    tt++;
  }
    
  if (canClick) {
    if (position_meeting(mouse_x, mouse_y, id)) {
      if (mousedown) {
        image_index = DownIndex;
        ui_set_focus(id);
      } else if (image_index == DownIndex) {
        if (OnClick != noone)
          script_execute(OnClick, id);
      }
    }
  }
  
  if (!mousedown || !canClick) 
    image_index = UpIndex;
} else if (mousedown && image_index == DownIndex) {
  image_index = ui_has_focus(id) && position_meeting(mouse_x, mouse_y, id) ? DownIndex : UpIndex;
}

if (image_index != lastsubimg && image_index == UpIndex)
  ui_clear_focus(id);
  
WasDown = mousedown;