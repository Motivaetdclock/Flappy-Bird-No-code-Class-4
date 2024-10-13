// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function restart_button(xx,yy,width){
draw_sprite(spr_restart_dino,0,xx,yy)
draw_text(xx,yy+60,"Restart?")
var ndiv=width/2
if mouse_x>xx-ndiv and mouse_x<xx+ndiv and mouse_y>yy-ndiv and mouse_y<yy+ndiv
if mouse_check_button_pressed(mb_left)
{
room_restart()	
}
}