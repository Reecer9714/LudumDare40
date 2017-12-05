#define scr_alien_idle
//Walk Left
hspeed = -4;
image_xscale = -1;
if (distance_to_object(obj_player) < 192) state = e_state.attack;

#define scr_alien_attack
hspeed = 0

if(!cooldown){
    var lazer = instance_create(x,y,obj_alien_lazer);
    lazer.image_angle = point_direction(x,y,obj_player.x,obj_player.y);
    lazer.direction = lazer.image_angle
    cooldown = true
}else{
    alarm[1] = 10
}
