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

// Set grid to all random values
for (var i = 0; i < oPuzzleBoard.gridWidth; i++){
	for (var j = 0; j < oPuzzleBoard.gridHeight; j++){
		ds_grid_set(global.grid, i, j, RandomPiece());
	}
}

// Data reference
sp = noone;

// Casting Spell Logic
whitePieceLength	= 5;
animationLength		= 10;
emptyPieceLength	= 10
chainSpaceLength	= 10;
waveCounter			= 0;
chainCounter		= 1;
preChainCount		= 0;
postChainCount		= 0;
damageToDeal		= 0;
basicSpellSound		= 0;
checkPlayerStatus	= true;
itemsToUse			= [];

// Other
basicSpellSound		= noone;
defaultScreenShake  = 4;
defaultScreenFlash  = 0.8;