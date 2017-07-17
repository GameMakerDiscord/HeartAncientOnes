///@desc TitleBar - Draw
if (!surface_exists(TitleBarSurface)) {
  TitleBarSurface = surface_create(BarWidth, BarHeight);
  surface_set_target(TitleBarSurface);
  
  draw_sprite_stretched(sprite_index, image_index, 0, 0, BarWidth, BarHeight);
  draw_sprite(titlebar_icon, 0, 2, 1);
  shadow_text(13, 1, "GM48 23 - <3 Ancient Ones", TitleColorFG, TitleColorBG);
    
  surface_reset_target();
}

draw_surface(TitleBarSurface, x, y);