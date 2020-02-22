/// @description Insert description here
// You can write your code in this editor
surface_free(surf_black);
surface_free(clip_surface);
surface_free(mask_surface);
clip_surface = -1
mask_surface = -1
surf_black = -1;
clip_width = clip_width//*.996
clip_height = clip_height//*.996
if (clip_width < 50)
{
	clip_width = 50;
	clip_height = 50;
}

if instance_number(obj_enemy) <10
{
finder = irandom_range(1,4);
switch (finder)
{
case 1:
instance_create_layer(room_width,random_range(0, room_height),0,obj_enemy)
break;

case 2:
instance_create_layer(0,random_range(0, room_height),0,obj_enemy)
break;

case 3:
instance_create_layer(random_range(0, room_width),room_height,0,obj_enemy)
break;

case 4:
instance_create_layer(random_range(0, room_width),0,0,obj_enemy)
break;
}
}

if (obj_player.dying == true)
{
clip_width = clip_width*1.02
clip_height = clip_height*1.02
surface_free(surf_black);
surface_free(clip_surface);
surface_free(mask_surface);
clip_surface = -1
mask_surface = -1
surf_black = -1;
if clip_width >= 10
{
surface_free(surf_black);
surface_free(clip_surface);
surface_free(mask_surface);
end_level = true;
}
}

if end_level
{
global.val = room_control.val;
room_goto(roomTitle)
}

val = val+1;