/// @description Insert description here
// You can write your code in this editor
draw_text_color(50,50, string_hash_to_newline("you survived for:"+string(val)), c_white, c_white, c_blue, c_red, .25)
draw_text_color(50,75, string_hash_to_newline("speed: "+string(obj_player.speed)), c_white, c_white, c_blue, c_red, .25)
draw_text_color(50,100, string_hash_to_newline("dir: "+string(obj_player.direction)), c_white, c_white, c_blue, c_red, .25)
draw_text_color(50,125, string_hash_to_newline("A/D: change heading"), c_white, c_white, c_blue, c_red, .25)
draw_text_color(50,150, string_hash_to_newline("W/S: speed up/down") , c_white, c_white, c_blue, c_red, .25)
draw_text_color(50,175, string_hash_to_newline("lmb to shoot"), c_white, c_white, c_blue, c_red, .25)
draw_text_color(50,200, string_hash_to_newline(string(clip_width)), c_white, c_white, c_blue, c_red, .25)


