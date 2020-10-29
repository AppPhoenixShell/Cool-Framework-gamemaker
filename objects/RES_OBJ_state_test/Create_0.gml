/// @description Insert description here
// You can write your code in this editor

var yuiki_io_manager = singleton_yuki_iomanager();



print_func = function(text){
	show_debug_message("Print from NPC: " + text);
	
	return true;
}

yuiki_io_manager.set_focus(print_func);


var pop = array_create(1, 0);
pop[0] = Path1;
pop[1] = Path2;
pop[2] = Path3;

stateParam = {
	index : 0 ,
	save : {},
	paths : pop,
	state_end : StateMovingStart

};

currentState = StateMovingStart(stateParam);





