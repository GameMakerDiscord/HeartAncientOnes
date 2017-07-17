///@desc CloseButton - Step
event_inherited();

if (EscapePressed != EscapeWasPressed) {
  if (EscapePressed) {
    image_index = UpIndex;
    with (UI) if (Focus == noone) with(other) image_index = DownIndex;
  } else {
    if (!EscapePressed && image_index == DownIndex)
      closeButton_on_click(id);
    
    image_index = UpIndex;
  }
}
