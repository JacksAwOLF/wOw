/// @description YOHOHO

right = keyboard_check(vk_right)
left = keyboard_check(vk_left)
up = keyboard_check(vk_up)
down = keyboard_check(vk_down)

if (still){

	moving_sprite_index = 0;

	if (down) moving_direction = 0
	else if (up) moving_direction = 1
	else if (left) moving_direction = 2
	else if (right) moving_direction = 3
	
	if ((right-left!=0) || (down-up)!=0) still = false;
} 

if (!still){
	
	// move the sprite
	if (moving_direction < 2) y += (moving_direction*-2+1) * moving_spd;
	else x += (moving_direction*2-5) * moving_spd;	
	
	// animate the sprite
	moving_sprite_index += 1;
	
	if (moving_sprite_index == 6*delay){
		moving_sprite_index = 0;
		still = true;
	}
	
}