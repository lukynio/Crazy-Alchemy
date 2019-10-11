/// @description Insert description here
// You can write your code in this editor
///draging

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
        inst = instance_position(mouse_x, mouse_y, FantaOBJ);
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