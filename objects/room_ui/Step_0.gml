/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_down)){
	offset += 5;
}

if(keyboard_check(vk_up)){
	offset -= 5;
}


if(keyboard_check_pressed(ord("W"))){
	
	selected--;
}

if(keyboard_check_pressed(ord("S"))){
	selected++;
}