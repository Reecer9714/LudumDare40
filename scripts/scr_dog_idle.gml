#define scr_dog_idle
hspeed = dir * 2;
image_xscale = dir;
vspeed = 20;
if (distance_to_object(obj_player) < 96) state = e_state.chase;

#define scr_dog_chase
dir = sign(obj_player.x -x);
hspeed = dir * 2;
image_xscale = dir;
vspeed = 20;
if (distance_to_object(obj_player) > 128) state = e_state.idle;

#define scr_dog_collision
obj_player.hp -= damage;
