#define scr_minion_idle
//Walk Left
hspeed = -4;
sprite_index = spr_soldier_walk
image_xscale = -1;
vspeed = 20;
if (distance_to_object(obj_player) < 192) state = e_state.attack;

#define scr_minion_attack
//Shoot
hspeed = 0
sprite_index = spr_soldier_idle

if(!cooldown){
    var xx = x;
    var yy = y;
    var bullet = instance_create(xx,yy,obj_bullet);
    bullet.enemy = true;
    bullet.sprite_index = spr_enemy_bullet
    bullet.direction = point_direction(xx,yy,obj_player.x,obj_player.y)
    bullet.image_angle = bullet.direction
    cooldown = true
}else{
    alarm[1] = 5
}

if (distance_to_object(obj_player) > 256) state = e_state.idle;
