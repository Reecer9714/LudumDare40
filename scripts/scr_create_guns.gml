global.guns = 1
//Name, Sprite, fireScript, Bullet, firerate, recoil color evntly, magsize
enum GunNames {
    M4A4,
    Glock,
    SawedOff,
    M32,
    HoneyBadger,
    FiveSeven,
    Nova,
    RPG,
    AK,
    Deagle,
    XM1014,
    Lazer,
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
    Damage,
    Length
}

for(var i = 0; i < GunNames.Length ; i++){
    for(var a = 0; a < GunIndex.Length; a++){
        global.guns[i,a] = 0;
    }
}
var guns = global.guns;
guns[@ GunNames.M4A4] = createGun("M4A4", spr_ar, scr_gun_fire, obj_bullet, 3, 2, 2.5, 20,20, 2, 1, c_gray, 8, 1);
guns[@ GunNames.Glock] = createGun("Glock", spr_pistol, scr_gun_fire, obj_bullet, 5, 1.5, 2, 10,10, 1.5, 1, c_gray, 5, 1);
guns[@ GunNames.SawedOff] = createGun("Sawed-Off", spr_shotgun, scr_gun_fire, obj_bullet, 15, 5, 4, 5,5, 2, 3, c_gray, 8, 1);
guns[@ GunNames.M32] = createGun("M32", spr_grenade_launcher, scr_grenade_fire, obj_grenade, 10, 4, 3, 6,6, 4, 1, c_gray, 15, 2);

guns[@ GunNames.HoneyBadger] = createGun("Honey Badger", spr_ar, scr_gun_fire, obj_bullet, 4, 2, 2, 25,25, 1, 1, c_yellow, 8, 5);
guns[@ GunNames.FiveSeven] = createGun("Five-Seven", spr_pistol, scr_gun_fire, obj_bullet, 6, 1, 1, 15,15, 1, 1, c_yellow, 5, 7);
guns[@ GunNames.Nova] = createGun("Nova", spr_shotgun, scr_gun_fire, obj_bullet, 20, 5, 3, 8,8, 3, 3, c_yellow, 8, 5);
guns[@ GunNames.RPG] =createGun("RPG", spr_rpg, scr_rocket_fire, obj_rocket, 30, 6, 2, 1,1, 3, 1, c_yellow, 8, 5); 

guns[@ GunNames.AK] = createGun("AK", spr_ar, scr_gun_fire, obj_bullet, 2,2,2, 30,30, 2, 1, c_blue, 8, 12)
guns[@ GunNames.Deagle] = createGun("Deagle", spr_pistol, scr_gun_fire, obj_bullet, 8, 2, 1, 8,8, 1.5,1,c_blue,5,50)
guns[@ GunNames.XM1014] = createGun("XM1014", spr_shotgun, scr_gun_fire, obj_bullet, 10, 4, 3, 10,10, 3,3, c_blue, 8, 15)
guns[@ GunNames.Lazer] = createGun("Lazer", spr_lazer, scr_rocket_fire, obj_player_lazer, 20, 8,0, 1,1, 3,1,c_blue,15,15)



