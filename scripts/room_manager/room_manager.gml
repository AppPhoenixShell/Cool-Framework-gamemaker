// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information



function room_manager(_name) constructor{
	title = _name;
	room_array = new yuki_array();
	
	
	static add_object = function(object){
		if(!room_array.contains(object))
			room_array.push(object);
	}
	static remove_object = function(object){
		room_array.del_val(object);
	}
	
	static get_room_array = function(){
		return room_array;
	}
	
}

function yuki_get_room_manager(){
	static singleton_rm = new room_manager("debug_room_manager");
	
	return singleton_rm;
}