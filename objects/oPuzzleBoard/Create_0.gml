// Grid Variables
gridWidth   = 12;
gridHeight  = 6;

gridPadding = 7;
gridXOffset = room_width / 2 - 40;
gridYOffset = 11;
cursorGridX = gridWidth / 2;
cursorGridY = gridHeight - 1;

// Global grid variables
global.grid  = ds_grid_create(gridWidth, gridHeight);
global.pGrid = ds_grid_create(gridWidth, gridHeight);
global.gridIndexX = 0;
global.gridIndexY = 0;
global.spellBookIndex  = 0;
global.spellBook2Index = 0;

// Spell book variables
moreInfo	= false;
inSpellBook = true;

// Setup grid and spell data
SetupPuzzleGrid();
SpellData();

// Create Combat Controllers
instance_create_layer(0, 0, "GameLayer", oSpellBook);
instance_create_layer(0, 0, "GameLayer", oCombatZone);
instance_create_layer(0, 0, "GameLayer", oTurnController);
instance_create_layer(0, 0, "GameLayer", oCameraController);
instance_create_layer(0, 0, "GameLayer", oMusicController);
instance_create_layer(0, 0, "GameLayer", oWeatherController);

// Create coin
instance_create_layer(room_width / 2, room_height / 2, "PointsLayer", oCoin);