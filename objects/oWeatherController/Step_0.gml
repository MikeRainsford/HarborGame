// Nightime
if (dayNight == 0) {
	if (instance_exists(oCloud))
		oCloud.image_index = dayNight;
	if (instance_exists(oTree))
		oTree.visible = false;
	if (instance_exists(oBackground))
		oBackground.image_index = dayNight;
}
// Daytime
else {
	if (instance_exists(oCloud))
		oCloud.image_index = dayNight;
	if (instance_exists(oTree))
		oTree.visible = true;
	if (instance_exists(oBackground))
		oBackground.image_index = dayNight;
}