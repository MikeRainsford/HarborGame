if (dir == "up") {
	if (currentY > maxY)
		currentY -= 0.03;
	else
		dir = "down";	
}
else if (dir == "down") {
	if (currentY < minY)
		currentY += 0.03;
	else
		dir = "up";
}