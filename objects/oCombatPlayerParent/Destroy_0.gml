var i = instance_create_layer(x, y, "PointsLayer", oDeathExplosion);
var j = instance_create_layer(0, 0, "PointsLayer", oFadeToBlack);
i.depth = j.depth + 1;