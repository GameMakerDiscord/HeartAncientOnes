///@desc GameStart - Create

var commune = noone;
with (Game) {
  //todo: manage lists of tokens
  var cx = 2, cy = TableRows - 1;
  var zealot = instance_create_layer(city_get_x(2, TableRows - 1), city_get_y(2, TableRows - 1), "CityTokens", TokenZealot);
  zealot.TileWidth = 1;
  city_move_token(zealot, cx, cy);
}

// Start with Player Commune selected
var commune = noone;
with (Commune)
  commune = id;
  
with (SideBar) 
  FocusItem = commune;

// Done with starter script
instance_destroy(id);