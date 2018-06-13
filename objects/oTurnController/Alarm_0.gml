/// @description Transition Turns
if (global.attacking) {
	alarm[0] = 1;
}
else {
	transitioning = false;
	EndTurn();
}