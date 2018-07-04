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
				
// Draw Arrow
draw_text_transformed(scx + 4, scy - 10 + (6 * oCombatMenu.combatMenuIndex), ">", 0.25, 0.25, 0);
	
// Draw Menu Options
var col;
if (oCombatMenu.combatMenuArray[0]) 
	col = c_white;
else
	col = c_gray;
draw_text_transformed_color(scx + (sprite_get_width(sCombatMenuUI) / 8),
							scy - 10,
							"Attack", 0.25, 0.25, 0,
							col, col, col, col, 1);

if (oCombatMenu.combatMenuArray[1]) 
	col = c_white;
else
	col = c_gray;
draw_text_transformed_color(scx + (sprite_get_width(sCombatMenuUI) / 8),
							scy - 4, "Items",	0.25, 0.25, 0,
							col, col, col, col, 1);
							
if (oCombatMenu.combatMenuArray[2]) 
	col = c_white;
else
	col = c_gray;
draw_text_transformed_color(scx + (sprite_get_width(sCombatMenuUI) / 8),
							scy + 2, "Spells",	0.25, 0.25, 0,
							col, col, col, col, 1);
							
if (oCombatMenu.combatMenuArray[3]) 
	col = c_white;
else
	col = c_gray;
draw_text_transformed_color(scx + (sprite_get_width(sCombatMenuUI) / 8),
							scy + 8, "Skills",	0.25, 0.25, 0,
							col, col, col, col, 1);