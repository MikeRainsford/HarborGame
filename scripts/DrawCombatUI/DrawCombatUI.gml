//var gw = oPuzzleBoard.gridWidth  * oPuzzleBoard.gridPadding;
//var gh = oPuzzleBoard.gridHeight * oPuzzleBoard.gridPadding;
//var gx = oPuzzleBoard.gridXOffset;
//var gy = oPuzzleBoard.gridYOffset;

var scx = room_width / 2;
var scy = (sprite_get_height(sCombatMenuUI) / 2) + (oPuzzleBoard.gridPadding * 1.5);

// Draw Border
draw_sprite_ext(sCombatMenuUI, 0, scx, scy, 1, 1, 0, c_white, 1);

// Draw character
var sp = sWitchIdle;
draw_sprite_ext(sp, oPlayerCombat.image_index,
				scx - (sprite_get_width(sCombatMenuUI) / 4),
				scy +  sprite_get_height(sp),
				2, 2, 0, c_white, 1);
	
draw_text_transformed(scx + (sprite_get_width(sCombatMenuUI) / 8), scy - 11, "Attack",	0.25, 0.25, 0);
draw_text_transformed(scx + (sprite_get_width(sCombatMenuUI) / 8), scy - 5, "Items",	0.25, 0.25, 0);
draw_text_transformed(scx + (sprite_get_width(sCombatMenuUI) / 8), scy + 3, "Spells",	0.25, 0.25, 0);
draw_text_transformed(scx + (sprite_get_width(sCombatMenuUI) / 8), scy + 9, "Skills",	0.25, 0.25, 0);