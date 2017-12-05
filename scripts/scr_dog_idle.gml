#define scr_dog_idle
hspeed = dir * 4;
image_xscale = dir;
vspeed = 20;
if (distance_to_object(obj_player) < 192) state = e_state.chase;

#define scr_dog_chase
dir = sign(obj_player.x -x);
if(position_meeting(x,y,obj_player)){ hspeed = 0
}else {
    hspeed = dir * 4;
    image_xscale = dir;
}
vspeed = 20;
if (distance_to_object(obj_player) > 256) state = e_state.idle;

#define scr_dog_collision
if(!cooldown){
    obj_player.hp -= damage;
    cooldown = true
}else if(alarm[1] <= 0){
    alarm[1] = 2
}
