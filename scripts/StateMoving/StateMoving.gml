// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StateMovingStep(param){
	
	var pos = path_position;

	if(pos == 1){
	
		param.index++;
		if(param.index == array_length(param.paths)){
			return StateMovingStart;
		}
		path_start(param.paths[param.index],1, false, true);
		
		

	}
	return StateMovingStep;
}

function StateMovingStart(param){
	path_start(param.paths[0],1, false, true);
	
	return StateMovingStep;
}

function StateMovingPause(param){
	
	param.save.path_pos = path_position;
	param.save.path_in = path_index;
	
	path_end();
	
	return StateMovingStopped(param);

}

function StateMovingStopped(param){
	if(keyboard_check_pressed(vk_space)){
		path_start(param.save.path_in,1,false,true);
		path_position = param.save.path_pos;
		
		return StateMovingStep;
		
	}
	return StateMovingStopped;
}