if !place_meeting(x,y+1,obj_floor)
vspd+=gvt
else
{
	if keyboard_check(vk_space)
	{
	vspd=-(jspd)	
	}
}

if place_meeting(x,y+vspd,obj_floor)//rough check
{
while !place_meeting(x,y+1,obj_floor)
{
y++	
}
vspd=0
}

if place_meeting(x,y,obj_cactus)
{
alive=false
image_speed=0
image_index=1
}
layer_hspeed("floor",-(1*score/2))

if alive=true
y+=vspd
else
{
layer_hspeed("Background",0)
layer_hspeed("floor",0)
}

