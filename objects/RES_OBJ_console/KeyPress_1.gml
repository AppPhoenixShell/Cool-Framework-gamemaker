/// @description Insert description here
// You can write your code in this editor


if(keyboard_key == vk_backspace){
	//var local_len = string_length(console)-2;
	//show_debug_message("back-- " + string(local_len));
	//console = string_delete(console,local_len , 1);
	//buffer_seek(io_buffer, buffer_seek_relative, -1);
}
if(keyboard_key == vk_enter){
	var single = singleton_yuki_iomanager();
	single.post_event(keyboard_string);
	show_debug_message("len-- " + keyboard_string);
	keyboard_string = "";
	//var test = buffer_peek(io_buffer, 0,buffer_text);
	//show_debug_message("len-- " + test);
	
	//console = "";
}

else{
	//single.post_event(keyboard_string);
	//show_debug_message("len-- " + keyboard_string);
	//var achar = chr(keyboard_key);
	//buffer_write(io_buffer, buffer_text,achar);
	//var local_len = string_length(console);
	//var test = buffer_peek(io_buffer, 0,buffer_text);
	//show_debug_message("len-- " + test);
	
	//console += achar;
	
	
}



//show_debug_message();