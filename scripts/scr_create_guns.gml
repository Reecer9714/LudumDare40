global.guns = 1
//Name, Sprite, fireScript, Bullet, firerate, recoil color evntly, magsize
enum GunNames {
    M4A4,
    Barreta,
    Nova,
    M32,
    HoneyBadger,
    Length
}

enum GunIndex {
    Name,
    Sprite,
    FireScript,
    Bullet,
    Firerate,
    Recoil,
    Accuracy,
    MagSize,
    MaxMagSize,
    Reload,
    BulletsPer,
    Color,
    GunLength,
    Length
}

for(var i = 0; i < GunNames.Length ; i++){
    for(var a = 0; a < GunIndex.Length; a++){
        global.guns[i,a] = 0;
    }
}


global.guns[0] = createGun("M4A4", spr_ar, scr_gun_fire, obj_bullet, 3, 2, 2, 20,20, 2, 1, c_gray, 8);
global.guns[1] = createGun("Barreta", spr_pistol, scr_gun_fire, obj_bullet, 6, 1, 1, 10,10, 1, 1, c_gray, 5);
global.guns[2] = createGun("Nova", spr_shotgun, scr_gun_fire, obj_bullet, 20, 5, 3, 8,8, 3, 3, c_gray, 8);
global.guns[3] = createGun("M32 Grenade Launcher", spr_grenade_launcher, scr_grenade_fire, obj_grenade, 10, 4, 3, 6,6, 4, 1, c_gray, 15);
global.guns[4] = createGun("Honey Badger", spr_ar, scr_gun_fire, obj_bullet, 4, 2, 2, 15,15, 1, 1, c_yellow, 8);




