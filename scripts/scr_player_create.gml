#define scr_player_create
scr_create_guns()

image_speed = 1
facing = 1
lastAngle = 0
hp = 100
maxspeed = 3
hand = instance_create(x,y,obj_hand)
hand.parent = self
gun = instance_create(x,y,obj_gun)
gun.parent = hand
gun.currentGun = global.primary
//gun = ??
audio_listener_orientation(0,0,-1, 0,1,0);

#define scr_player_step
Input();
if(global.pause) exit;
if(facing != 1 && (Aim + 90) mod 360 < 180){
    image_xscale = 1;
    facing = 1;
}else if(facing != -1 && (Aim + 90) mod 360 > 180){
    image_xscale = -1;
    facing = -1;
}

if(Right){
    hspeed = maxspeed;
    image_speed = facing
    sprite_index = spr_player_walk
}else if(Left){
    hspeed = -maxspeed;
    image_speed = -facing
    sprite_index = spr_player_walk
}else{
    hspeed = 0;
    sprite_index = spr_player_idle
    image_speed = 1
}
//image_speed = clamp(hspeed,-1,1);

if(RightReleased || LeftReleased){
    image_index = 0
}



//Jump
if (place_meeting(x, y+1, obj_collision)) {
    vspeed = 0;
    
    if (Jump){
        vspeed = -10;
    }
}else{
    if (vspeed < 10) {
        vspeed += 1;
    }
}

//Horizontal
if (place_meeting(x+hspeed, y , obj_collision)) { 
    while (!place_meeting(x+sign(hspeed), y, obj_collision)) {
        x+= sign(hspeed);
    }
    hspeed = 0;
}

//Vertical
if (place_meeting(x, y+vspeed , obj_collision)) { 
    while (!place_meeting(x, y+sign(vspeed), obj_collision)) {
        y+= sign(vspeed);
    }
    vspeed = 0;
}

//Move to gun
if(PrimaryFire){
    with(gun) script_execute(fireScript, currentGun)
    //if(hand.alarm[0] == -1) hand.recoil = 2*-facing
    //var fire = instance_create(arm.x + arm.anchorX,arm.y + arm.anchorY,obj_electricshock);
    //fire.Parent = arm;
    //fire.image_angle = fire.Parent.image_angle;
    //audio_play_sound(s_electric, 3, false);
}

hand.image_angle = Aim
