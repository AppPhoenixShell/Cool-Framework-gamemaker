// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.global_singleton_window_manager = false;

function WindowManager() constructor {
	private_service_name = "window_manager";
	private_windowlist = ds_list_create();
	//private_winid_count = 1;	
	
	static iterate = function(iterator){
		var size = ds_list_size(private_windowlist);
		var i = 0;
		for(i =0; i < size; i++){
			iterator(private_windowlist[|i]);
		}
	}
	
}

function Window(px, py, width, height, bg_color) constructor{
	private_x = px;
	private_y = py;
	private_width = width;
	private_height = height;
	private_bg_color = bg_color;
	
	static getx = function(){
		return private_x;
	}
	
	static gety = function(){
		return private_y;
	}
	
	static width = function(){
		return width;
	}
	static height = function(){
		return height;
	}
	
}

function singleton_window_manager(){
	if(!global.global_singleton_window_manager)
		global.global_singleton_window_manager = new WindowManager();
	return global.global_singleton_window_manager;
}