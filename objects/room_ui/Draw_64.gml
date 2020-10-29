/// @description Insert description here
// You can write your code in this editor

global.ui_spacing = 12;

draw_rectangle(0,0,12,12, false);

draw_set_font(std_font);


var int = 0;
var text_y_offset = 0;

for(i = 0; i < debug_array.size(); i++){
	var the_string = debug_array.get(i);
	if(i == selected){
		the_string += " <----";
	}
	draw_text(0,0 + text_y_offset + offset,  the_string);
	text_y_offset += 12 + 10;
}








