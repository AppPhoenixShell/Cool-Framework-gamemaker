/// @description Insert description here
// You can write your code in this editor


currentState = currentState(stateParam);


if(keyboard_check_pressed(vk_tab)) {
	show_debug_message("Pause a NPC State");
	
	currentState = StateMovingPause(stateParam);
}