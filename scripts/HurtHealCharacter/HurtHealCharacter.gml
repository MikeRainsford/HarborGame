/// @description Check for dealing damage/healing specific game object 

var o = argument0; // object to effect
var a = argument1; // amount to effect health

o.life += a;

// Player hurt
if (a < 0) {
	o.hurt = true;
	audio_play_sound(soHurt, 0, 0);
	
	// Visualize Damage
	var d = instance_create_layer(o.x, o.y - 10, "PointsLayer", oText);
	d.pointValue = a;
}
// Player healed
else {
	
}