///@desc FocusSelector - Step
Dirty |= FocusItem != LastFocusItem
visible = FocusItem != noone;
LastFocusItem = FocusItem;

if (Dirty && FocusItem != noone) {
  var cx = city_get_cell_x(FocusItem.x, FocusItem.y),
      cy = city_get_cell_y(FocusItem.x, FocusItem.y);
  
  x = city_get_x(cx, cy);
  y = city_get_y(cx, cy);
}