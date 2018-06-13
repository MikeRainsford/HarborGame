SetupZoneDecorations();

// Create characters
instance_create_layer(room_width / 2 - 32, room_height - 17, "GameLayer", oCombatPlayer);
instance_create_layer(room_width / 2 + 32, room_height - 17, "GameLayer", oCombatPlayer2);