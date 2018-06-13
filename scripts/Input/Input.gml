/// @description Get user input

// Get keyboard input 
if (oTurnController.playerTurn) {
	leftPressed		= keyboard_check_pressed(ord("A"));
	upPressed		= keyboard_check_pressed(ord("W"));
	rightPressed	= keyboard_check_pressed(ord("D"));
	downPressed		= keyboard_check_pressed(ord("S"));
	left			= keyboard_check(ord("A"));
	up				= keyboard_check(ord("W"));
	right			= keyboard_check(ord("D"));
	down			= keyboard_check(ord("S"));
	action1Pressed	= keyboard_check_pressed(ord("J"));
	action2Pressed	= keyboard_check_pressed(ord("K"));
	rotateRight		= keyboard_check_pressed(ord("I"));
	rotateRightHold = keyboard_check(ord("I"));
	rotateLeft		= keyboard_check_pressed(ord("U"));
	rotateLeftHold  = keyboard_check(ord("U"));
}
else {
	leftPressed		= keyboard_check_pressed(vk_left);
	upPressed		= keyboard_check_pressed(vk_up);
	rightPressed	= keyboard_check_pressed(vk_right);
	downPressed		= keyboard_check_pressed(vk_down);
	left			= keyboard_check(vk_left);
	up				= keyboard_check(vk_up);
	right			= keyboard_check(vk_right);
	down			= keyboard_check(vk_down);
	action1Pressed	= keyboard_check_pressed(ord("M"));
	action2Pressed	= keyboard_check_pressed(ord("N"));
	rotateRight		= keyboard_check_pressed(ord("H"));
	rotateRightHold = keyboard_check(ord("H"));
	rotateLeft		= keyboard_check_pressed(ord("G"));
	rotateLeftHold  = keyboard_check(ord("G"));
}

restart = keyboard_check_pressed(ord("R"));
back	= keyboard_check_pressed(ord("B"));
if (restart) {
	audio_stop_all();
	room_restart();
}
if (back) {
	audio_stop_all();
	audio_play_sound(mDialMaeve, 0, 1);
	room_goto_previous();
}