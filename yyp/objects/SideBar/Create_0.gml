///@desc SideBar - Create
FrameSurface = -1;

FrameTitle  = sidebar_title;
FrameTop    = sidebar_top_frame;
FrameBottom = sidebar_bottom_frame;

SidebarW     = 149; SidebarH = 339;
FrameTitleW  = SidebarW; FrameTitleH  = sprite_get_height(FrameTitle);
FrameTopW    = SidebarW; FrameTopH    = 44;
FrameBottomW = SidebarW; FrameBottomH = SidebarH - (FrameTopH + FrameTitleH);

StaticSurface = -1;
ContentsDirty = true;

FocusFrame  = sidebar_focus_frame;
FocusFrameW = sprite_get_width(FocusFrame);
FocusFrameH = sprite_get_height(FocusFrame);
FocusFrameX = 1;
FocusFrameY = (FrameTitleH - 1) + floor((FrameTopH - FocusFrameH) * 0.5);
FocusFramePadL = 2;
FocusFramePadR = 2;

FocusTitleFg = color_hex($575a66);
FocusTitleBg = color_hex($170d0d);
  
FocusItem = noone;
LastFocusItem = noone;

FocusDisplayDirty = false;

FocusSelection = instance_create_layer(0, 0, layer, FocusSelector);
FocusSelection.visible = false;