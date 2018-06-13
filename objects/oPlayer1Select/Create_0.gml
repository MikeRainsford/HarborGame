playerSkins = [
	"sWitch", "sBeetle",
	"sPurpleSlime", "sExecutioner",
	"sMonk", "sSlug",
	"sKnight", "sDemon",
	"sReaper", "sFrog",
	"sCactus",
];

skinIndex = irandom_range(0, array_length_1d(playerSkins) - 1);

ready = false;

x = room_width / 2 - 32;
y = room_height / 2 + 16;
image_speed = 0.4;