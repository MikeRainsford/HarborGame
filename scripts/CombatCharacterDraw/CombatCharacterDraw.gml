// Draw player sprites
if (state == "idle") {
	image_speed  = 0.4;
	image_index  = id.image_index;
	sprite_index = idleSprite;
	image_xscale = facing;
	image_yscale = 1;
}
else if (state == "chargingSpell") {
	// Change to charging animation!!!!
	image_speed  = 0.4;
	image_index  = id.image_index;
	sprite_index = idleSprite;
	image_xscale = facing;
	image_yscale = 1;
}
else if (state == "hurt") {
	image_speed	 = 0.7;
	image_index  = id.image_index;
	sprite_index = hurtSprite;
	image_xscale = facing;
	image_yscale = 1;
}
else if (state == "attacking") {
	image_speed  = 0.0;
	image_index  = id.image_index;
	sprite_index = attackSprite;
	image_xscale = facing;
	image_yscale = 1;
}
else if (state == "usingItem") {
	image_speed  = 0.4;
	image_index  = id.image_index;
	sprite_index = idleSprite;
	image_xscale = facing;
	image_yscale = 1;
}
else if (state == "waiting") {
	image_speed  = 0.4;
	image_index  = id.image_index;
	sprite_index = idleSprite;
	image_xscale = facing;
	image_yscale = 1;
	
	// Draw attacking animation until spell object is gone
	if (instance_exists(oSpellObject) && oSpellObject.image_xscale == id.image_xscale) {
		image_speed  = 0.0;
		image_index  = id.image_index;
		sprite_index = attackSprite;
		image_xscale = facing;
		image_yscale = 1;
	}
}
else if (state == "endTurn") {
	image_speed  = 0.4;
	image_index  = id.image_index;
	sprite_index = idleSprite;
	image_xscale = facing;
	image_yscale = 1;
}
else if (state == "dead") {
	
}

draw_self();

// Draw Health and Heart
draw_sprite_ext(sHeart, 0, combatZone.x + 5, combatZone.y + 7, 1, 1, 0, c_white, 1);
draw_text_transformed(combatZone.x - 6, combatZone.y + 4, currentHealth, 0.3, 0.3, 0);