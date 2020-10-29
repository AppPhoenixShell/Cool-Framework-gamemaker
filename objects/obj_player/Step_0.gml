/// @description Insert description here
// You can write your code in this editor

function detect_collision(object){

}


x += velocity.vec_x;
y += velocity.vec_y;

coll_box.private_x = x - sprite_xoffset;
coll_box.private_y =y - sprite_yoffset;

var object_array= yuki_get_room_manager().get_room_array();

var i = 0;



if (place_meeting(x + half_w, y + half_h, obj_player)){
	//instance_destroy(other, true);
	//instance_destroy(self, true);
}

if (place_meeting(x - half_w, y - half_h, obj_player)){
	//instance_destroy(other, true);
	//instance_destroy(self, true);
}

if (place_meeting(x + half_w, y - half_h, obj_player)){
	//instance_destroy(other, true);
	//instance_destroy(self, true);
}

if (place_meeting(x - half_w, y + half_h, obj_player)){
	//instance_destroy(other, true);
	//instance_destroy(self, true);
}


/*
if(freq_count == freq_collision){

	for(i=0 ; i < object_array.size(); i++){
		
		var local_object = object_array.get(i);
	
		if(local_object == self)
			continue;
	
		var has_collide = local_object.coll_box.overlaps(coll_box);
	
		if(has_collide){
			//instance_destroy(local_object, true);
			//instance_destroy(self, true);
		
		
		}
	
	}
	freq_count = 0;
}
*/


freq_count += 1;








