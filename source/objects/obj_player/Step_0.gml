/// @description Insert description here
// You can write your code in this editor
if !dying{
if keyboard_check_direct(ord("A"))
   {
   image_angle = image_angle -3;
   direction = image_angle
   }
if keyboard_check_direct(ord("D"))
   {
   image_angle = image_angle +3;
   direction = image_angle
   }
if keyboard_check_direct(ord("W"))
   {
   speed = spd;
   spd = spd+.05;
   if spd > 1
   {
   spd = 1;
   }
   }
if keyboard_check_direct(ord("S"))
   {
   speed = spd;
   spd = spd-.05;
   if spd < .05
   {
   spd = .05;
   }
   }
}  
  
with instance_create_depth(x,y+5,1,obj_wake)
{
	image_angle = other.image_angle;
}
//image_angle = //point_direction(x, y, mouse_x, mouse_y);



