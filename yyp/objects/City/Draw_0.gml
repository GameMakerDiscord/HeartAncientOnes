///@desc Table - Draw

if (!surface_exists(TableSurface)) {
  TableSurface = surface_create(TableWidth, TableHeight);
  
  // draw our table
  surface_set_target(TableSurface);
  
  draw_frame9(sprite_index, TableWidth, TableHeight);
  
  var playareaW = TableWidth  - (TableBackPadL + TableBackPadR),
      playareaH = TableHeight - (TableBackPadT + TableBackPadB);
      
  // draw the "play area" backing
  draw_sprite_ext(pixel_white, 0, TableBackPadL, TableBackPadT, playareaW, playareaH, 0, color_hex($120F1A), 1.0);
  
  sprite_rect(TableBackPadL - 1, TableBackPadT - 1, TableBackPadL + playareaW, TableBackPadT + playareaH, color_hex($3d3a4d), pixel_white);
  
  // draw a border around the play area
  //draw_sprite_ext(pixel_white, 0, TableBackPadL - 1,         TableBackPadT - 1,         playareaW + 2, 1,             0, color_hex($3d3a4d), 1.0);
  //draw_sprite_ext(pixel_white, 0, TableBackPadL - 1,         TableBackPadT + playareaH, playareaW + 2, 1,             0, color_hex($3d3a4d), 1.0);
  //draw_sprite_ext(pixel_white, 0, TableBackPadL - 1,         TableBackPadT - 1,         1,             playareaH + 2, 0, color_hex($3d3a4d), 1.0);
  //draw_sprite_ext(pixel_white, 0, TableBackPadL + playareaW, TableBackPadT - 1,         1,             playareaH + 2, 0, color_hex($3d3a4d), 1.0);
  
  surface_reset_target();
}

draw_surface(TableSurface, x, y);