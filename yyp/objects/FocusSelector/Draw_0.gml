///@desc FocusSelector - Draw
Dirty |= (FocusItem != noone && !surface_exists(SelectionSurface));

if (Dirty) {
  show_debug_message("Drawing focus selector");
  var surfaceWidth  = (FocusItem.TileWidth * TileMapCellWidth) + 1;
  var surfaceHeight = TileMapCellHeight + 1

  if (surface_exists(SelectionSurface) && (SelectionSurfaceW != surfaceWidth || SelectionSurfaceH != surfaceHeight)) {
    surface_free(SelectionSurface);
  }

  if (!surface_exists(SelectionSurface))
    SelectionSurface = surface_create(surfaceWidth, surfaceHeight);
  
  SelectionSurfaceW = surfaceWidth;
  SelectionSurfaceH = surfaceHeight;
  
  surface_set_target(SelectionSurface);
  sprite_rect(0, 0, surfaceWidth-1, surfaceHeight-1, c_white, pixel_white);
  surface_reset_target();
   
  Dirty = false;
}

if (FocusItem != noone) {
  draw_surface(SelectionSurface, x, y);  
}