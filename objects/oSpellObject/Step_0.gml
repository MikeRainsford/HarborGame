/// @description
// Check if spell is moving across the screen
if (SpellChar("stationary", dat, ind) == "right") 
	if (self.x < room_width / 2) // caster on left side
		x += SpellChar("travelSpeed", dat, ind);
	else // flip direction for p2 or enemy
		x -= SpellChar("travelSpeed", dat, ind); 
else if (SpellChar("stationary", dat, ind) == "left") 
	if (self.x < room_width / 2) // caster on right side
		x -= SpellChar("travelSpeed", dat, ind);
	else // flip direction for p2 or enemy
		x += SpellChar("travelSpeed", dat, ind);
else if (SpellChar("stationary", dat, ind) == "up") 
	y -= SpellChar("travelSpeed", dat, ind);
else if (SpellChar("stationary", dat, ind) == "down") 
	y += SpellChar("travelSpeed", dat, ind);
	
depth = -1000;

// Delete once out of room
if (x > room_width || x < -64 || y < - 64 || y > room_height)
	instance_destroy();