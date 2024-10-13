
function buttons(_bw,_bh,_xx,_yy,text,_rm){
#region checking if you are clicking on it
var color=c_white

if mouse_x<_xx+_bw/2 and mouse_x>_xx-_bw/2 and mouse_y<_yy+_bh/2 and mouse_y>_yy-_bh/2// checks if the cordinates of your mouse are inside the box
{
	if mouse_check_button_pressed(mb_left)//checks if you pressed the mouse
	{
	room_goto(_rm)//goes to the room based on the order they are laid 0=menu 1=dino game 2=flappy bird
	}
	color=c_red//changes the text color when you are hovering the button
}
#endregion

#region drawing the button
	draw_set_color(c_black)//set the color of the next "drawing" black
	draw_rectangle(_xx-_bw/2,_yy+_bh/2,_xx+_bw/2,_yy-_bh/2,false)//draws a square in the x,y position with the defined width and height 
	draw_set_halign(fa_center)//sets horizontal origin point of the text as the center
	draw_set_valign(fa_middle)//sets vertical origin point of the text as the middle
	draw_set_color(color)//set the color of the next "drawing" white
	draw_text(_xx,_yy,text)//draws the text on top of the square
#endregion

}