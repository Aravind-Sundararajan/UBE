/// @description Insert description here
// You can write your code in this editor
step=step+1;
c1= 127.5 + 127.5*sin(.1*step);
c2= 127.5 + 127.5*sin(.1*step+pi/3);
c3= 127.5 + 127.5*sin(.1*step+2*pi/3);

color1 = make_color_rgb(c1,c2,c3)
color2 = make_color_rgb(c3,c1,c2)
color3 = make_color_rgb(c2,c3,c1)
color4 = make_color_rgb(c3,c2,c1)