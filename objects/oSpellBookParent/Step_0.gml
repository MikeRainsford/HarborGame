// Update spell book index
Input();

if (oCombatManager.spellBookUI.inSpellBook) {
	if (rightPressed) {
		if (index < capacity - 1)
			index++;
		else
			index = 0;
	}
	if (leftPressed) {
		if (index > 0)
			index--;
		else
			index = capacity - 1;
	}
}