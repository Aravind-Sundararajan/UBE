/// @description Insert description here
// You can write your code in this editor
image_xscale = image_xscale*.90;
image_yscale = image_yscale*.90;

if image_xscale < .1
{
instance_destroy();
}
