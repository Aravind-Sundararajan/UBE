/// @description Insert description here
// You can write your code in this editor
image_angle = point_direction(x, y, mouse_x, mouse_y);
x = obj_player.x
y = obj_player.y

if !obj_player.dying{
if mouse_check_button_pressed(mb_left)
{
audio_sound_gain(snd_gun, .5,0);
audio_play_sound(snd_gun, 10, false);
   instance_create_layer(x,y,0,obj_bullet)
   instance_create_layer(x+(sprite_width)*cos(image_angle*pi/180),y-1-(sprite_height)*sin(image_angle*pi/180),0,obj_boom)
    with room_control
    {
    clip_width = 0.9*clip_width
    clip_height = 0.9*clip_height
    clip_surface = -1;
    }
}
}