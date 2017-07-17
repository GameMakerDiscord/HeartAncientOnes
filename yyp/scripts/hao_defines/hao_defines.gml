///@func hao_defines()
///@desc define enums / macros for the game (<3 ancient ones) [note: no need to call
enum ETileMaps {
  Streets = 0,
  City,
  
  Num
};

enum ETileMapData {
  LayerId = 0,
  TileMapId,
  
  Num,
}

#macro TileMapOffsetX (178)
#macro TileMapOffsetY (32)

#macro TileMapCellWidth  (34)
#macro TileMapCellHeight (34)

#macro TableCols (13)
#macro TableRows (9)

#macro TableWidth (483)
#macro TableHeight (349)

#macro TableBackPadL (21)
#macro TableBackPadT (21)
#macro TableBackPadR (20)
#macro TableBackPadB (22)

enum Frame9 {
  TL = 0, T, TR,
  L,      C,  R,
  BL,     B,  BR,
  Num
};

#macro TitleColorFG (color_hex($532d38))
#macro TitleColorBG (color_hex($170d0d))
