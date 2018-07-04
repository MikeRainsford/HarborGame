// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Draw player sprites

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Apply Effect
if (state == "applyEffect") {
	image_speed  = 0.4;
	image_index  = id.image_index;
	sprite_index = idleSprite;
	image_xscale = facing;
	image_yscale = 1;
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Idle
else if (state == "idle") {
	image_speed  = 0.4;
	image_index  = id.image_index;
	sprite_index = idleSprite;
	image_xscale = facing;
	image_yscale = 1;
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Charging Spell
else if (state == "chargingSpell") {
	// Change to charging animation!!!!
	image_speed  = 0.4;
	image_index  = id.image_index;
	sprite_index = idleSprite;
	image_xscale = facing;
	image_yscale = 1;
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Hurt
else if (state == "hurt") {
	image_speed	 = 0.7;
	image_index  = id.image_index;
	sprite_index = hurtSprite;
	image_xscale = facing;
	image_yscale = 1;
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Attacking
else if (state == "attacking") {
	image_speed  = 0.0;
	image_index  = id.image_index;
	sprite_index = attackSprite;
	image_xscale = facing;
	image_yscale = 1;
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Using Item
else if (state == "usingItem") {
	image_speed  = 0.4;
	image_index  = id.image_index;
	sprite_index = idleSprite;
	image_xscale = facing;
	image_yscale = 1;
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Waiting
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
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// End Turn
else if (state == "endTurn") {
	image_speed  = 0.4;
	image_index  = id.image_index;
	sprite_index = idleSprite;
	image_xscale = facing;
	image_yscale = 1;
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Dead
else if (state == "dead") {
	
}

draw_sprite_ext(sHeart, 0, startingX, combatZone.y + 4, 1, 1, 0, c_white, 1);
draw_text_transformed(startingX - 3, combatZone.y + 8, currentHealth, 0.3, 0.3, 0);

draw_text_transformed(x, y - 10, state, 0.25, 0.25, 0);