///@desc SideBar - Step
if (FocusItem != LastFocusItem) {
  ContentsDirty = true;  
  FocusDisplayDirty = true;
  var newFocus = (FocusItem != noone && instance_exists(FocusItem)) ? FocusItem  : noone;
  with (FocusSelector) FocusItem = newFocus;
  
  FocusItem     = newFocus;
  LastFocusItem = newFocus;
}


if (FocusDisplayDirty) {
  //todo: remove action buttons
  
  //todo: add new action buttons
  
  //todo: compute contents size
  
  //polish: tween the focusItem?
}