///createEnemy(x,y,sprite,health,damage,scripts)
var enemy = instance_create(argument[0],argument[1],obj_enemy);
enemy.sprite_index = argument[2]
enemy.max_hp = argument[3]
enemy.damage = argument[4]

if(argument_count > 5){
    var scripts = argument[5];
    if(scripts[0] != -1) enemy.idleState = scripts[0];
    if(scripts[1] != -1) enemy.chaseState = scripts[1];
    if(scripts[2] != -1) enemy.attackState = scripts[2];
    if(scripts[3] != -1) enemy.collisionState = scripts[3];
}

return enemy
