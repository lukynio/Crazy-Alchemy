/// @description Insert description here
// You can write your code in this editor
//vaiksciojimas
key_left = keyboard_check(ord("A"));

key_right = keyboard_check(ord("D"));

key_up = keyboard_check(ord("W"));

key_down = keyboard_check(ord("S"));

var movex = key_right-key_left;
var movey = key_down-key_up;

hsp= movex*walksp;
vsp= movey*walksp;



x=x+hsp;
y=y+vsp;

//pasiemimas
if (place_meeting(x,y,GintarasOBJ)){
    instance_destroy(GintarasOBJ,true);	//sunaikina
	room_instance_add(maintableR,160,320,GintarasdrgOBJ02)//atidaro kitame lange
}
if (place_meeting(x,y,VanduoOBJ))  {
    instance_destroy(VanduoOBJ,true);//sunaikina	
	room_instance_add(maintableR,x,y,vanduodrgOBJ)//atidaro kitame lange
}
if (place_meeting(x,y,gintrdrgOBJ03))  {
    instance_destroy(gintrdrgOBJ03,true);//sunaikina	
	room_instance_add(maintableR,x,y,gintrdrgOBJ03)//atidaro kitame lange
}
if (place_meeting(x,y,krjrinkOBJ))  {
    instance_destroy(krjrinkOBJ,true);	//sunaikina
	room_instance_add(maintableR,x,y,KraujasOBJ)//atidaro kitame lange
}

//persikelimas i kita kambari
if (place_meeting(x,y,namasOBJ)){
    room_goto(maintableR);	
	
}