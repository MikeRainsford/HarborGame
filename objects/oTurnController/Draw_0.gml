/// @description Draw Timer

var cCol;

// Set Timer Color
if (currentTime / 30 >= 15)
	cCol = c_white;
else if (currentTime / 30 >= 10 && currentTime / 30 < 15)
	cCol = c_yellow;
else if (currentTime / 30 >= 5 && currentTime / 30 < 10)
	cCol = c_orange;
else if (currentTime / 30 >= 0 && currentTime / 30 < 5)
	cCol = c_red;

draw_text_transformed_color(room_width / 2 - 7, 1, timeString, 0.3, 0.3, 0, cCol, cCol, cCol, cCol, 1);