///@func city_data()
///@desc define enums and load array data into City's arrays
enum ELocations {
  Commune = 0,
  Church, 
  TownHall,
  Mason,
  Smith,
  Tavern,
  House,
  Shanty,
  
  Num
};


enum ELocationData {
  Sprite, Object, TileIDs, Num
}

LocationData = [
  [ location_commune,  Commune,  [  2,  3 ] ],
  [ location_church,   Church,   [ 10, 11 ] ],
  [ location_townhall, TownHall, [ 18, 19 ] ], 
  [ location_mason,    Mason,    [  4 ] ],
  [ location_smith,    Smith,    [  5 ] ],
  [ location_tavern,   Tavern,   [  9 ] ],
  [ location_house,    House,    [  1 ] ],
  [ location_shanty,   Shanty,   [ 12 ] ] 
];
if (array_length_1d(LocationData) != ELocations.Num) {
  show_debug_message("eeeey babyjeans ahh you wanna match the amount of locations to the location data array? alright alright alright");
}

LayerNames = [
  "CityStreets",
  "CityLocations",
];
