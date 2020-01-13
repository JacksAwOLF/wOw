/// @description Insert description here
// You can write your code in this editor


moved_already = false;

draw_sprite(asset_get_index("sprite_" + color), 0, x, y);
draw_text_color(x, y, number, c_black, c_black,c_black,c_black,1);

if (on) {
	draw_circle_color(x+sprite_width/2,y+sprite_height/2,sprite_width/4, c_red, c_red, false);
	draw_text_color(10,10, "Queued moves: " + moves, c_aqua, c_aqua,c_aqua,c_aqua,1);
	draw_text_color(10,25, "Army: " + string(global.room_sum), c_aqua, c_aqua, c_aqua, c_aqua, 1);
}


