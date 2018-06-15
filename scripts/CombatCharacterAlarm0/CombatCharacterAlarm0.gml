// Player states
if (state == "idle") {
	
}
else if (state == "hurt") {
	state = "idle";
	
	// Reset knockback position to starting position
	x += (4 * image_xscale);
}
else if (state == "attacking") {
	
}