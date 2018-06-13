/// @description End of turn variable setting

// End of Player Turn
if (oTurnController.previousTurn == "oPlayer") {
	oTurnController.playerTurn = false;
	if (oTurnController.nPlayers == 1) {
		oTurnController.enemyTurn	= true;
		oTurnController.player2Turn	= false;
	}
	else if (oTurnController.nPlayers == 2) {
		oTurnController.enemyTurn	= false;
		oTurnController.player2Turn	= true;	
	}
}
// End of Player2 Turn
else if (oTurnController.previousTurn == "oPlayer2") {
	oTurnController.playerTurn	= true;
	oTurnController.enemyTurn	= false;
	oTurnController.player2Turn	= false;
}
// Reset Cursor into spell book
oPuzzleBoard.inSpellBook = true;

// Reset Turn Timer
oTurnController.currentTime = oTurnController.turnTime;

// Check player status in oPlayerTurn create event

// END TURN CALLED IN TURN CONTROLLER OBJECT