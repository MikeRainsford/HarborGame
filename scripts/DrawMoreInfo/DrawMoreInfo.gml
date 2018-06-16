/// @description Draw the box with more information for the spells

// Data
var ind = oCombatManager.turnControllerObject.currentTurn.spellBook.index;
var sp  = oCombatManager.turnControllerObject.currentTurn.spellBook.data[ind];
	
// Toggle more info box
if (oSpellBookUI.inSpellBook && action1Pressed)
	oSpellBookUI.moreInfo = !oSpellBookUI.moreInfo;
else if (!oSpellBookUI.inSpellBook)
	oSpellBookUI.moreInfo = false;

// If moreInfo boolean is active
if (oSpellBookUI.moreInfo && oCombatManager.turnControllerObject.currentTurn.state == "idle") {
	// Draw frame
	image_speed = 0.2;
	draw_sprite(sMoreSpellInfo, image_index, room_width / 2, 50);	
	
	// Draw spell image
	var spr = asset_get_index("s" + string(global.spellData[sp, spellC.SpellName]) + "Spell");
	image_speed = 0.05;
	draw_sprite_ext(spr, -1, room_width / 2 - 30, 65, 1, 1, 0, c_white, 1);
	
	// Draw spell title
	var c = c_white;
	var title = global.spellData[sp, spellC.SpellName];
	draw_text_transformed_color(room_width / 2 - 42, 75, title, 0.20, 0.20, 0, c, c, c, c, 1.0);
	
	// Draw spell info
	var desc = global.spellData[sp, spellC.SpellInfo];	
	draw_text_transformed_color(room_width / 2 - 42, 80, desc,  0.20, 0.20, 0, c, c, c, c, 1.0);
	
	// Draw more info
	for (var i = 0; i < array_length_1d(global.spellData[sp, spellC.MoreInfo]); i++) {
		var info = global.spellData[sp, spellC.MoreInfo];
		draw_text_transformed_color(room_width / 2 - 8, 60 + (i * 5), info[i], 0.20, 0.20, 0, c, c, c, c, 1.0);
	}
}