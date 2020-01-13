/// @description YOHOHO

step_count = (step_count + 1) % (25 * room_speed)

if (occupied) {
	if ((grow && step_count % room_speed == 0) || step_count == 0) {
		number = number+1;
		global.room_sum += 1;
	}


	if mouse_check_button_pressed(mb_left) {
	    if (point_in_rectangle(mouse_x, mouse_y, x+2, y+2, x+sprite_width-2, y+sprite_height-2)) {
	        on = true;
	    } else {
			on = false;
			moves = "";
		}
	}


	if (on && !moved_already) {
	
		right = keyboard_check_pressed(vk_right)
		left = keyboard_check_pressed(vk_left)
		up = keyboard_check_pressed(vk_up)
		down = keyboard_check_pressed(vk_down)

		if (down) moving_direction = 0
		else if (up) moving_direction = 1
		else if (left) moving_direction = 2
		else if (right) moving_direction = 3
		else moving_direction = -1
	
	
		// check moving directions
		if (moving_direction >= 0) 
			moves += string(moving_direction);
		if (number <= 1) 
			moves = "";
		
		// process moving
		if (string_length(moves) > 0 && step_count % room_speed == 0) {
			cur = real(string_char_at(moves, 1));
		
			newx = x; newy = y;
			if (cur < 2) newy += (cur*-2+1) * moving_spd;
			else  newx += (cur*2-5) * moving_spd;	
	
			// either create new instance or use old one
			inst_id = instance_position(newx,newy,o_player);
			if (inst_id == noone) {
				inst_id = instance_create_depth(newx,newy,0,o_player);
				with(inst_id) { 
					grow = false; 
					number = 0; 
					step_count = other.step_count; 
				}
			}
		
			with (inst_id) {
				
				number += (color == other.color ? 1 : -1) * (other.number - 1);
				if (number < 0 || color == other.color) {
					number = abs(number);
					color = other.color;
					
					on = true;
					occupied = true;
					moved_already = true;
					
					moves = string_delete(other.moves,1,1);
					
					other.on = false;
				}
			}
		
			moves = "";
			number = 1;		

		}
	}
}


