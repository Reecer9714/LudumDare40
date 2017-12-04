///scr_gun_fire(bulletsper)
if(cooldown && magsize > 0){
    if(parent.alarm[0] == -1) parent.recoil = recoil*-parent.image_yscale;
    
    repeat(bulletsper){
        var projectile = instance_create(x+lengthdir_x(gunLength,image_angle),y-4,bullet);
        var angle = image_angle + irandom_range(-accuracy,accuracy);
        projectile.image_angle = angle;
        projectile.direction = angle;
        projectile.damage = damage;
    }
        
    cooldown = false;
    argument0[@ GunIndex.MagSize]--;
    if(argument0[GunIndex.MagSize] <=0) alarm[1] = reload;
    alarm[0] = firerate;
}
