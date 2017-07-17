///@desc SideBar - Draw

//todo: no magic numbers plz
if (!surface_exists(FrameSurface)) {
  var xx = 0, yy = 0;
  
  FrameSurface = surface_create(SidebarW, SidebarH);  
  
  surface_set_target(FrameSurface);
  
  draw_sprite(FrameTitle, 0, xx, yy);
  draw_sprite_stretched(FrameTitle, 1, 1, 0, FrameTitleW - 2, FrameTitleH);
  draw_sprite(FrameTitle, 0, xx + FrameTitleW - 1, 0);
  yy += sprite_get_height(FrameTitle) - 1;
  
  draw_frame9(FrameTop,    FrameTopW,    FrameTopH,    xx, yy);  yy += FrameTopH - 1;
  draw_frame9(FrameBottom, FrameBottomW, FrameBottomH, xx, yy); 
  
  surface_reset_target();
}
draw_surface(FrameSurface, x, y);

ContentsDirty |= !surface_exists(StaticSurface);
if (ContentsDirty) {
  if (!surface_exists(StaticSurface))
    StaticSurface = surface_create(SidebarW, SidebarH);
  
  var focusItemName = "";
  var focusItemSprite = noone;
  var focusItemWidth = 0;
  var focusItemHeight = 0; 
  
  if (FocusItem != noone && instance_exists(FocusItem)) {
    focusItemName = FocusItem.Name;
    focusItemSprite = FocusItem.sprite_index;
    focusItemWidth = sprite_get_width(focusItemSprite);
    focusItemHeight = sprite_get_height(focusItemSprite);
  }
    
  surface_set_target(StaticSurface);
  draw_clear_alpha(c_black, 0);
  shadow_text(3, 2, focusItemName, FocusTitleFg, FocusTitleBg);
  
  if (focusItemWidth > 0) {
    var focusPaddingL  = FocusFramePadL;
    var focusPaddingR  = FocusFramePadR;
  
    var portraitW = focusItemWidth + (focusPaddingL + FocusFrameW) + (focusPaddingR + FocusFrameW);
    var portraitH = FocusFrameH;
  
    var portraitX = FocusFrameX + floor((FrameTopW - portraitW) * 0.5);
    var portraitY = FocusFrameY;
  
    var focusItemY = portraitY + floor((FocusFrameH - focusItemHeight) * 0.5);
  
    draw_sprite(FocusFrame, 0, portraitX, portraitY);
    draw_sprite_stretched(FocusFrame, 1, portraitX + FocusFrameW, portraitY, focusPaddingL + focusItemWidth + focusPaddingR, portraitH);
    draw_sprite(FocusFrame, 2, portraitX + FocusFrameW + focusPaddingL + focusPaddingR + focusItemWidth, portraitY);
    draw_sprite(focusItemSprite, 0, portraitX + focusPaddingL + FocusFrameW, focusItemY);
  }
  
  surface_reset_target();
  ContentsDirty = false;
}
draw_surface(StaticSurface, x, y);