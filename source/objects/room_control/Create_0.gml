/// @description Insert description here
// You can write your code in this editor
clip_surface = -1
mask_surface = -1
surf_black = -1;
clip_x = 0;
clip_y = 0;
clip_r = 60;
clip_width = 300;
clip_height= 300;
 val = 1;
 global.val = 1;
 
if !audio_is_playing(song)
 {
 audio_play_sound(song, 0, true);
 }
FONT = font_add_sprite(sFont2x, ord(" "), 0, -1);
draw_set_font(FONT)

