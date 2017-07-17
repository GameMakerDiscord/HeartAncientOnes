///@func city_check_click()
///@desc check the mouse input for the city, called from step
if (mouse_check_button_pressed(mb_left)) {
  var cell_x = city_get_cell_x(mouse_x, mouse_y);
  var cell_y = city_get_cell_y(mouse_x, mouse_y);
  if (cell_x >= 0 && cell_y >= 0 && cell_x < TableCols && cell_y < TableRows) {
    var token    = TokenGrid[# cell_x, cell_y];
    var location = LocationGrid[# cell_x, cell_y];
    
    var focused = noone;
    with (SideBar) focused = FocusItem;
      
    if (token != noone) {
      with(SideBar)
        FocusItem = token == focused ? noone : token;
      
      if (token != focused)
        location = noone;
    }
    
    if (location != noone) {
      with(SideBar)
        FocusItem = FocusItem == location ? noone : location;
    }
  }
}