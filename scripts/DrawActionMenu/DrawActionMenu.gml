if (inActionMenu || inSpellMenu || inItemMenu) {
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Draw Main Menu
	var textScale	= 0.20;
	var cx			= startX + 20;
	var cy			= currentY;
	draw_sprite_ext(sCombatMenu, 0, cx, cy, 1, 1, 0, c_white, 1);	

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Draw Arrow
	draw_text_transformed_color(cx + 5, (cy - 18) + (4 * actionMenuIndex), ">", textScale, textScale, 0, c_white, c_white, c_white, c_white, 1);

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Draw text
	// Player1
	var col;
	if (actionMenuOptions[0])
		col = c_white;
	else
		col = c_gray;
		draw_text_transformed_color(cx + 8, cy - 18, "Attack",	textScale, textScale, 0, col, col, col, col, 1);
	
	// Escape
	var col;
	if (actionMenuOptions[1])
		col = c_white;
	else
		col = c_gray;
		draw_text_transformed_color(cx + 8, cy - 14, "Items",	textScale, textScale, 0, col, col, col, col, 1);
}