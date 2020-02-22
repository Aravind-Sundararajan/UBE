/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y, obj_player)
{
instance_create_layer(x+irandom_range(-sprite_width/2,sprite_width/2),y+irandom_range(-sprite_height/2,sprite_height/2),0,obj_boom)
with obj_player
{
instance_create_layer(x+irandom_range(-obj_player.sprite_width/2,obj_player.sprite_width/2),y+irandom_range(-obj_player.sprite_height/2,obj_player.sprite_height/2),0,obj_boom)
}
speed= 0;
obj_player.speed = 0
obj_player.dying = true;
}


if place_meeting(x,y, obj_bullet)
{
instance_create_layer(x,y,0,obj_boom)
with(room_control)
{
	clip_width=clip_width*1.2;
	clip_height=clip_height*1.2;
}
bullet = instance_place(x, y, obj_bullet);
with(bullet)
{
	instance_destroy();
}
instance_destroy()
}

if (x > (room_width + 50)) or (x < ( - 50)) or (y > (room_height + 50)) or (y < (- 50))
{
instance_destroy();
}


with instance_create_depth(x,y,1,obj_wake)
{
	image_angle = other.image_angle;
	image_xscale = .5
	image_yscale = .5
}