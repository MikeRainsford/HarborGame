if (life <= 0)
	instance_destroy();
	
if (hurt && alarm[0] == -1)
	alarm[0] = 20;
	
// not hurt
if (!hurt) {
	image_speed = 0.4;
	sprite_index = idleSprite;
	// Reset character knockback
	if (x > room_width / 2)
		x = room_width / 2 + 32;
	else
		x = room_width / 2 - 32;
}
// hurt
else {
	image_speed = 0.7;
	sprite_index = hurtSprite;
	ShakeScreen(2, 2);
	// Character knockback
	if (x > room_width / 2)
		x = room_width / 2 + 32 + 4;
	else
		x = room_width / 2 - 32 - 4;
}