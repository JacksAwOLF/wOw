/// @description YOHOHO

step_count = (step_count + 1) % room_speed

right = keyboard_check_pressed(vk_right)
left = keyboard_check_pressed(vk_left)
up = keyboard_check_pressed(vk_up)
down = keyboard_check_pressed(vk_down)



if (down) moving_direction = 0
else if (up) moving_direction = 1
else if (left) moving_direction = 2
else if (right) moving_direction = 3
else moving_direction = -1
	
//show_debug_message(step_count);
	
if (moving_direction >= 0){
	moves += string(moving_direction);
	
}
	
if (step_count == 0){
	
	if (string_length(moves) > 0 ) {
		//show_debug_message(moves);
		cur = real(string_char_at(moves, 1));
		
		
		if (cur < 2) y += (cur*-2+1) * moving_spd;
		else x += (cur*2-5) * moving_spd;	
	
		moves = string_delete(moves, 1, 1);
		instance_create_depth(x, y, 0, object1)
	}
}


