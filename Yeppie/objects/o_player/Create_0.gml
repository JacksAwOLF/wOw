/// @description Insert description here
// You can write your code in this editor

moving_direction = 0; // 0=>down; 1=>up; 2=>left; 3=>right;
moving_sprite_index = 0; // from 0 to 5

moving_spd = 64;  // pixels/step

still = true
delay = 0	// steps/image (out of 6 images in an animation)

moves = ""

step_count = 0

number = 1

// distance player travels in one movement = moving_spd * delay * 6


inst = instance_create_depth(x, y, 0, object1)
with(inst) grow=true