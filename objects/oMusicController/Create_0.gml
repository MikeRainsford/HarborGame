battleSongs = [
	"mBoutsBetweenBoys",
	//"mBallisticGelTorso",
	//"mFiveBosses",
	//"mGhostTrusters",
	//"mRipppp",
	//"mBounce",
	//"mBattleAgainstDisgruntledOpponent",
	//"mSpookFactory",
	//"mGEWSB",
	//"mDarkSoles",
];

cinematicSongs = [
	
];

shopSongs = [
	//"mSdinfdld",
];

var bs = random_range(0, array_length_1d(battleSongs)    - 1);
//var cs = random_range(0, array_length_1d(cinematicSongs) - 1);
//var ss = random_range(0, array_length_1d(shopSongs)      - 1);

battleSong    = asset_get_index(string(battleSongs[bs]));
//cinematicSong = asset_get_index(string(cinematicSongs[cs]));
//shopSong      = asset_get_index(string(shopSongs[ss]));

//audio_play_sound(battleSong, 0, 0);