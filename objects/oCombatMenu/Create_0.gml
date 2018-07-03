// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Menu Navigation
showCombatMenu			= true;

inCombatMenu			= true;
combatMenuOptions		= [false, false]; // 0:player1, 1:escape
combatMenuIndex			= 0;

inActionMenu			= false;
actionMenuOptions		= [false, false]; // 0:attack, 1:items
actionMenuIndex			= 0;

inSpellMenu				= false;
inItemMenu				= false;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Menu Floating
startX					= oCombatManager.turnControllerObject.currentPlayerTurn.x + 4;
startY					= oCombatManager.turnControllerObject.currentPlayerTurn.y - 7;
currentY				= startY;
maxY					= startY - 1;
minY					= startY + 1;
dir						= "up";