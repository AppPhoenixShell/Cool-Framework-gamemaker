// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function yuki_rect(xx, yy, w, h) constructor {
	private_x = xx;
	private_y = yy;
	private_width = w;
	private_height = h;
	
	static getx = function(){
		return private_x;
	}
	
	static gety = function(){
		return private_y;
	}
	
	static _width = function(){
		return private_width;
	}
	
	static _height = function(){
		return private_height;
	}
	
	static overlaps = function(rect){
		return private_x < rect.getx() + rect._width() && private_x + private_width > rect.getx() && private_y < rect.gety() + rect._height() && private_y + private_height > rect.gety();
	
	}
}