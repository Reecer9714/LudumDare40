///initEnemy(sprite,health,damage,scripts)
sprite_index = argument[0]
max_hp = argument[1]
damage = argument[2]

if(argument_count > 3){
    var scripts = argument[3];
    if(scripts[0] != -1) idleState = scripts[0];
    if(scripts[1] != -1) chaseState = scripts[1];
    if(scripts[2] != -1) attackState = scripts[2];
    if(scripts[3] != -1) collisionState = scripts[3];
}
