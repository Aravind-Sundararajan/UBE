/// @description Insert description here
// You can write your code in this editor
image_xscale = image_xscale*.97;
image_yscale = image_yscale*.97;

if image_xscale < .1
{
instance_destroy();
}
