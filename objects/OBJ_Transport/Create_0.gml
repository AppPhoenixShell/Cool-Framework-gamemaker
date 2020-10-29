/// @description Insert description here
// You can write your code in this editor

debug_message = "";

show_debug_message("Creating Transport");

debug_self = function(){
	if(global.isDebug){
		show_debug_message(debug_message);
		debug_message= "";
	}
}