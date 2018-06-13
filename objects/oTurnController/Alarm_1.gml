/// @description End Turn w/Timer
if (global.attacking)
	alarm[1] = 1;
else {
	TransitionTurn(oTurnParent.thisPlayerTransitionTurn);
	EndTurn();
}