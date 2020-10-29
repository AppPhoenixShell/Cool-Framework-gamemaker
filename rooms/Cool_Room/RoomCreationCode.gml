
randomize();

repeat(1000){

	instance_create_depth(300, 300, 0, obj_player);

}

var print_array = function(item){
	//show_debug_message("integer: " + string(item));
}

var test_array = new yuki_array();

repeat(10){

	var rand_int = irandom_range(1,10);
	test_array.push(rand_int);
}

var filter_list = test_array.filter_new(function(item){
	if(item > 5)
		return true;
	else
		return false;

});

test_array.iterate(print_array);
//show_debug_message("------------------")

filter_list.iterate(print_array);

var start_time = get_timer();
var my_array = new yuki_array();
repeat(1000){
	var new_rect = new yuki_rect(random_range(0, 1000), random_range(0, 100),16,16);
	my_array.push(new_rect);
}

var delta = get_timer() - start_time;

var item1 = my_array.get(0);
var i =0;

start_time = get_timer();

for(i =0; i < my_array.size(); i++){
	var local_item = my_array.get(i);
	var over = local_item.overlaps(item1);
	
}

delta = get_timer() - start_time;



var rect1 = new yuki_rect(0,0,5,5);
var rect2 = new yuki_rect(4,7, 9, 9);



var car1 = instance_create_depth(0,0,0, Car);
var car2 = instance_create_depth(0,0,0, Car);

show_debug_message("Car1Func: " + string( car1.debug_self));
show_debug_message("Car2Func: " + string( car2.debug_self));

//show_debug_message("Hi");







