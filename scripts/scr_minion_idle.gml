#define scr_minion_idle
//Walk Left
hspeed = -4;
image_xscale = -1;
vspeed = 20;
if (distance_to_object(obj_player) < 192) state = e_state.attack;

#define scr_minion_attack
//Shoot
hspeed = 0

if (distance_to_object(obj_player) > 256) state = e_state.idle;
