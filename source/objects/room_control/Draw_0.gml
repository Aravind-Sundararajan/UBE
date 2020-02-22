/// @description Insert description here
// You can write your code in this editor
// create a surface if it doesn't exist:

if (!surface_exists(clip_surface)) {
surf_black= surface_create(room_width, room_height);
}
if (!surface_exists(clip_surface)) {
clip_surface = surface_create(clip_width, clip_height);
}
if (!surface_exists(mask_surface)) {
mask_surface = surface_create(clip_width, clip_height);
}

// clear and start drawing to surface:
//surface_set_target(surf_black);
//    draw_clear(c_black);
//    draw_rectangle(0, 0, room_width,room_height+2, false);
//        draw_set_blend_mode(bm_subtract);
    // cut out shapes out of the mask-surface:
//    draw_circle(obj_player.x, obj_player.y, clip_width/2, false);
//    draw_set_blend_mode(bm_normal);
//surface_reset_target();

surface_set_target(surf_black);
    draw_set_alpha(1)
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width,room_height+2, false);
surface_reset_target();

surface_set_target(mask_surface);
    draw_clear(c_black);
    gpu_set_blendmode(bm_subtract);
    // cut out shapes out of the mask-surface:
    draw_circle(clip_width/2, clip_width/2, clip_width/2, false);
    gpu_set_blendmode(bm_normal);
surface_reset_target();

surface_set_target(clip_surface);   
draw_clear_alpha(c_black, 0);
// draw things here, subtracting (clip_x, clip_y) from coordinates:
surface_resize(application_surface, room_width, room_height);
draw_surface(application_surface, -obj_player.x + clip_width/2, -obj_player.y+ clip_height/2)
gpu_set_blendmode(bm_subtract);
draw_surface(mask_surface, 0, 0);
gpu_set_blendmode(bm_normal);
//draw_rectangle(0, 0, clip_width,clip_height, true);
// finish and draw the surface itself:
surface_reset_target();

draw_surface(surf_black, 0, 0);
draw_surface(clip_surface, obj_player.x - clip_width/2, obj_player.y- clip_height/2);




