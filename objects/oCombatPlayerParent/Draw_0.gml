// Draw heart and health
draw_sprite_ext(sHeart, 0, startingX + 5, startingY + 7, 1, 1, 0, c_white, 1);
draw_text_transformed(     startingX - 6, startingY + 4, life, 0.3, 0.3, 0);

// Draw sprite
draw_self();