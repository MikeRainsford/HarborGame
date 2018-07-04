/// @description Draw the box with more information for the spells

var ind = oCombatManager.turnControllerObject.currentPlayerTurn.spellBook.index;
var sp  = oCombatManager.turnControllerObject.currentPlayerTurn.spellBook.data[ind];
	
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Toggle more info box
//if (oCombatManager.combatMenu.inSpellBook && action3Pressed)
	//oSpellBookUI.moreInfo = !oSpellBookUI.moreInfo;
//else if (!oCombatManager.combatMenu.inSpellBook)
	//oSpellBookUI.moreInfo = false;

if (/*oSpellBookUI.moreInfo && */oCombatManager.turnControllerObject.currentPlayerTurn.state == "idle") {
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Draw frame
	image_speed = 0.2;
	draw_sprite(sMoreSpellInfo, image_index, room_width / 2 - 1, 50);	
	
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Draw spell image
	var spr = asset_get_index("s" + string(global.spellData[sp, spellC.SpellName]) + "Spell");
	image_speed = 0.05;
	draw_sprite_ext(spr, -1, room_width / 2 - 31, 65, 1, 1, 0, c_white, 1);
	
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Draw spell title
	var c = c_white;
	var title = global.spellData[sp, spellC.SpellName];
	draw_text_transformed_color(room_width / 2 - 43, 75, title, 0.20, 0.20, 0, c, c, c, c, 1.0);
	
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Draw spell info
	var desc = global.spellData[sp, spellC.SpellInfo];	
	draw_text_transformed_color(room_width / 2 - 43, 80, desc,  0.20, 0.20, 0, c, c, c, c, 1.0);
	
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Draw more info
	for (var i = 0; i < array_length_1d(global.spellData[sp, spellC.MoreInfo]); i++) {
		var info = global.spellData[sp, spellC.MoreInfo];
		draw_text_transformed_color(room_width / 2 - 9, 60 + (i * 5), info[i], 0.20, 0.20, 0, c, c, c, c, 1.0);
	}
}