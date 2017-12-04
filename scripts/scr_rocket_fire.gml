///scr_gun_fire(gun)
if(cooldown && argument0[GunIndex.MagSize] > 0){
    if(parent.alarm[0] == -1) parent.recoil = recoil*-parent.image_yscale;
    
    repeat(bulletsper){
        var xx = x+lengthdir_x(gunLength,image_angle)-lengthdir_x(5,image_angle-90);
        var yy = y+lengthdir_y(gunLength,image_angle)-lengthdir_y(5,image_angle-90);
        var projectile = instance_create(xx,yy,bullet);
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
