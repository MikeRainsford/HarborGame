/// @description Transition between player1, player2, and enemy turn 
//  This step is necessary for combat sequencing

var p = argument0;

oTurnController.playerTurn		= false;
oTurnController.player2Turn		= false;
oTurnController.previousTurn	= p;
oTurnController.transitioning	= true;