/// @description Insert create object
// You can write your code in this editor


freq_collision = irandom_range(0, 4);
freq_count = 0;

velocity = new yuki_vector(random(5), random(5));

var index = random(5);
stack = new yuki_stack("A Stack Trace " + string(index));

//show_debug_message("x: " + string(velocity.vec_x) + " y: " + string(velocity.vec_y));

//show_debug_message(stack.popcorn_get());



var vec1 = new yuki_vector(7,8);
var acopy = vec1.cpy();

acopy.vec_x = 11;


//show_debug_message(acopy.vec_x);
//show_debug_message(vec1.vec_x);

acopy.set_vec(vec1);
//show_debug_message(acopy.vec_x);

acopy.set_val(0,0);
//show_debug_message(acopy);
//show_debug_message(vec1);

acopy.sub_vec(vec1);
//show_debug_message(acopy);


velocity.random_direction();
velocity.set_len(random_range(1, 5));

coll_box = new yuki_rect(x,y, sprite_height, sprite_width);

var single = yuki_get_room_manager();

single.add_object(self);


half_w = sprite_width /2;
half_h = sprite_height /2;



/*
image_speed = 0;
walkSpeed = 1;

count = random(10);

name = "Random Name " + string(count);




show_debug_message("hello world")


array = ds_list_create();

ds_list_insert(array,0,"world");

var pop = instance_create_depth(0,0,0,yuki_list);

HelloWorld();


show_debug_message(array);



var po = file_text_open_read(working_directory + "\popcorn.txt");

show_debug_message(file_text_read_string(po));


function my_id(text) constructor{
	self.title = text; 

}

random_id= new my_id("4755846988");

show_debug_message(random_id.title);


var myrm = yuki_get_room_manager();

var name = myrm.title;

velocity = new yuki_vector(random(2),random(2));


x = random(300);
y = random(300)


*/












