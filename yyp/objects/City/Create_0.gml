///@desc City - Create
city_data();
 
if (array_length_1d(LayerNames) != ETileMaps.Num) {
  show_debug_message("ey babyjeans, update your layer name list, eh alright?");
}

// cache tilemap layer / map id, and also offset them to where they belong.
TileMaps = array_create(ETileMaps.Num);
for (var i = 0; i < ETileMaps.Num; ++i) {
  var layerName = LayerNames[i];
  var layerid = layer_get_id(layerName);
  TileMaps[i] = [ layerid, layer_tilemap_get_id(layerid) ];

  layer_x(layerid, TileMapOffsetX);
  layer_y(layerid, TileMapOffsetY);
}

// Generate locations
Locations    = ds_list_create();
LocationGrid = ds_grid_create(TableCols, TableRows);
TokenGrid    = ds_grid_create(TableCols, TableRows);
ds_grid_clear(LocationGrid, noone);
ds_grid_clear(TokenGrid, noone);

var tileMap         = TileMaps[ETileMaps.City];
var locationTileMap = tileMap[ETileMapData.TileMapId];

for (var row = 0; row < TableRows; ++row) {
  for (var col = 0; col < TableCols; ++col) {
    var tileData = tilemap_get(locationTileMap, col, row);
    var tileIndex = tile_get_index(tileData);
    var matchIndex = -1;
    var noWork = false;
    if (tileIndex > 0) {
      for (var locationIndex = 0; locationIndex < ELocations.Num && matchIndex == -1; ++locationIndex) {
        var locationData = LocationData[locationIndex];
        var tileIds = locationData[ELocationData.TileIDs];
        var numIds = array_length_1d(tileIds);
        for (var idIndex = 0; idIndex < numIds && matchIndex == -1; ++idIndex) {
          if (tileIds[idIndex] == tileIndex)
            matchIndex = locationIndex;
            noWork = idIndex > 0; 
        }
      }
    }
    
    if (matchIndex > -1 && !noWork) {
      var locationData = LocationData[matchIndex];

      var object  = locationData[ELocationData.Object];
      var tileIds = locationData[ELocationData.TileIDs];
      var numIds = array_length_1d(tileIds);

      var location = instance_create_layer(city_get_x(col, row), city_get_y(col, row), "CityCore", object);
      location.TileWidth = numIds;
      location.Col = array_create(numIds);
      location.Row = row;
      
      for (var colIndex = 0; colIndex < numIds; ++colIndex) {
        location.Col[colIndex] = col + colIndex;
        LocationGrid[# col + colIndex, row] = location;
      }
    }
  }
}

TableSurface = -1;
