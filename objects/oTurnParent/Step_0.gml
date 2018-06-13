if (instance_exists(thisPlayerObject)) {
	if (thisPlayerTurn) {	
		UpdateSpellBookIndex();
		UpdateCursorGridPosition();
		CheckCursorForms();
		RotateSpell();
	}
}

// Update reference variables
if (thisPlayerTurn && thisPlayerObject == oCombatPlayer)
	global.spellBookIndex = thisPlayerSpellBookIndex;
else if (thisPlayerTurn && thisPlayerObject == oCombatPlayer2)
	global.spellBook2Index = thisPlayerSpellBookIndex;