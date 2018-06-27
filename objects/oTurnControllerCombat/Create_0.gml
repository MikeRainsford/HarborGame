friendlies	= ds_list_create();
enemies		= ds_list_create();

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Tracking Turns
currentTeamIndex	= 0;

currentTeamTurn		= friendlies;
nextTeamTurn		= noone;
previousTeamTurn	= noone;

currentPlayerTurn	= ds_list_find_value(currentTeamTurn, currentTeamIndex);
nextPlayerTurn		= noone;
previousPlayerTurn	= noone;