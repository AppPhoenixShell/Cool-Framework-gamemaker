// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.global_singleton_yuki_io_manager = false;

function yuki_io_manager(_name) constructor{
	private_title = _name;
	
	static set_focus = function(io_focus){
		private_io_focus = io_focus; 
	}
	
	static get_focus = function(){
		return private_io_focus;
	}
	static post_event = function(text){
		var local_focus = get_focus();
		if(local_focus){
			if(local_focus(text)){
				set_focus(false);
			}
		}
			
	}

}

function singleton_yuki_iomanager(){
	var singleton = global.global_singleton_yuki_io_manager;
	if(!singleton){
		global.global_singleton_yuki_io_manager = new yuki_io_manager("Yuki IO Manager");
	}
	return global.global_singleton_yuki_io_manager;
}