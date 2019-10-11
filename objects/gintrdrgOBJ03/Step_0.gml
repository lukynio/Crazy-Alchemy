/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

//dragas and dropas
if dragging = true
    {
    with (inst)
        {
        x = mouse_x + other.mdx;
        y = mouse_y + other.mdy;
        }
        if (!mouse_check_button(mb_left))
            {
            dragging = false;
            inst = noone;
            }
    }
else
    {
    if (mouse_check_button_pressed(mb_left))
        {
        inst = instance_position(mouse_x, mouse_y, gintrdrgOBJ03);
        if (inst != noone)
            {
            dragging = true;
            mdx = inst.x - mouse_x;
            mdy = inst.y - mouse_y;
            }
        }
    }
	


x=clamp(x,0+(sprite_width/2),room_width-(sprite_width/2));
y=clamp(y,0+(sprite_height/2),room_height-(sprite_height/2));

//sujungimas
if (place_meeting(x,y,uzvkrjOBJ)) and (mouse_check_button_released(mb_left))  {
    instance_destroy(uzvkrjOBJ,true);//sunaikina
	instance_destroy(gintrdrgOBJ03,true);//sunaikina
	instance_create_layer(x,y,"instances",RubinasOBJ)//sukuria
  	
}