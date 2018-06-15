event_inherited();

// @Override

// Player variables
maxHealth		= 10;
currentHealth	= maxHealth;

// Objects Belonging to Player
spellBook = oSpellBookTest;
inventory = object_get_parent(self).inventory;
skillTree = object_get_parent(self).skillTree;

if (!instance_exists(spellBook))
	instance_create_layer(0, 0, "ControllerLayer", spellBook);