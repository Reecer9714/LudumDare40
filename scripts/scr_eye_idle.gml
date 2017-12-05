#define scr_eye_idle
hspeed = -4;
image_xscale = -1;

y = startY + sin(t)*5
t+=0.5
t = t mod 360

if (distance_to_object(obj_player) < 192) state = e_state.attack;

#define scr_eye_attack
hspeed = 0

y = startY + sin(t)*5
t+=0.5
t = t mod 360

if(!cooldown){
    var electric = instance_create(x,y,obj_electric);
    electric.image_angle = point_direction(x,y,obj_player.x,obj_player.y);
    cooldown = true
}else if(alarm[1] <= 0){
    alarm[1] = 30
}

if (distance_to_object(obj_player) > 256) state = e_state.idle;