// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function yuki_array() constructor {
	private_array = ds_list_create();
	
	static get= function(index){
		return ds_list_find_value(private_array, index);
	}
	
	static size = function(){
		return ds_list_size(private_array);
	}
	
	static push = function(value){
		ds_list_add(private_array, value);
		return self;
	}
	
	static del = function(index){
		ds_list_delete(private_array, index);
		return self;
	}
	
	static del_val = function(value){
		var local_index = ds_list_find_index(private_array, value);
		del(local_index);
	}
	
	static find_val = function(value){
		return ds_list_find_index(private_array, value);
	}
	
	static iterate = function(it_func){
		var i=0;
		for(i=0; i < size(); i++){
			var local_item = get(i);
			it_func(local_item);
		}
		return self;
	}
	
	static pop = function(){
		if(size() == 0)
			return noone;
		var last_item= get(size()-1);
		del(size()-1);
		return last_item;
	}
	
	static contains = function(value){
		var local_index = ds_list_find_index(private_array, value);
		if(local_index == -1)
			return false;
		else
			return true;
	}
	static clear = function(){
		ds_list_clear(private_array);
		return self;
	}
	
	static destroy = function(){
		private_array = -1;
		ds_list_destroy(private_array);
		return self;
	}
	
	static filter_new = function(func_filter){
		var new_list= new yuki_array();
		return filter(new_list, func_filter);
	}
	
	static filter = function(new_list, func_filter){
		
		var i=0;
		for(i=0; i < size(); i++){
			var local_item = get(i);
			var fil = func_filter(local_item);
			if(fil)
				new_list.push(local_item);
		}
		return new_list;
	}
	
}