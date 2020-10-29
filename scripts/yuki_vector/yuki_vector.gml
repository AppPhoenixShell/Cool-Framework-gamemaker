// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
randomize();

function yuki_vector(xx, yy) constructor {
	vec_x = xx;
	vec_y = yy;
	
	static getx = function(){
		return vec_x;
	}
	static gety = function(){
		return vec_y;
	}
	
	static cpy = function(){
		return new yuki_vector(vec_x, vec_y);
	}
	
	static len = function(){
		return sqrt(vec_x * vec_x + vec_y * vec_y);
	}
	static len2 = function(){
		return vec_x * vec_x + vec_y * vec_y;
	}
	
	
	static set_val = function(xx, yy){
		vec_x = xx;
		vec_y = yy;
	}
	
	static set_vec = function(vector2){
		vec_x = vector2.vec_x;
		vec_y = vector2.vec_y;
	}
	
	static sub_val = function(xx, yy){
		vec_x -= xx;
		vec_y -= yy;
	}
	static sub_vec = function(vector2){
		sub_val(vector2.vec_x, vector2.vec_y);
	}
	
	static nor = function(){
		var local_len = len();
		if(local_len  != 0){
			vec_x /= local_len;
			vec_y /= local_len;
		}
	}
	
	static add_val = function(xx, yy){
		vec_x += xx;
		vec_y += yy;
	}
	
	static add_vec = function(vector2){
		add_val(vector2.vec_x, vector2.vec_y);
	}
	
	static dot_val = function(ox, oy){
		return vec_x * ox + vec_y * oy;
	}
	
	static dot_vec = function(vector2){
		
		return dot_val(vector2.vec_x, vector2.vec_y);
	}
	
	static scl = function(scalar){
		vec_x *= scalar;
		vec_y *= scalar;
	}
	
	static set_len= function(length){
		set_len2(length);
	}
	
	static set_len2 = function(length){
		var oldLen2 = len2();
		
		if(oldLen2 == 0 || oldLen2 == length){
			
		}else{
			scl(sqrt(length / oldLen2));
		}
		
		//(avr oldLen2 == 0 || oldLen2 == len2) ? this : scl((float)Math.sqrt(len2 / oldLen2));
	
	}
	
	static random_direction = function(){
		var theta = random_range(0, pi*2);
		var local_x = cos(theta);
		var local_y = sin(theta);
		set_val(local_x, local_y);
	
	}
	
	

}