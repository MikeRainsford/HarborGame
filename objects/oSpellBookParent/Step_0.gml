// Update spell book index
Input();

if (oCombatManager.spellBookUI.inSpellBook) {
	if (rightPressed) {
		audio_play_sound(soSpellBookTurn, 0, 0);
		if (index < capacity - 1)
			index++;
		else
			index = 0;
	}
	if (leftPressed) {
		audio_play_sound(soSpellBookTurn, 0, 0);
		if (index > 0)
			index--;
		else
			index = capacity - 1;
	}
}