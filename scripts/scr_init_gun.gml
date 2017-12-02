///scr_init_gun(index)
currentGun = argument0
gunName = currentGun[GunIndex.Name]
sprite = currentGun[GunIndex.Sprite]
fireScript = currentGun[GunIndex.FireScript]
bullet = currentGun[GunIndex.Bullet]
firerate = currentGun[GunIndex.Firerate]
recoil = currentGun[GunIndex.Recoil]
accuracy = currentGun[GunIndex.Accuracy]
maxmagsize = currentGun[GunIndex.MaxMagSize]
reload = currentGun[GunIndex.Reload] * room_speed
bulletsper = currentGun[GunIndex.BulletsPer]
color = currentGun[GunIndex.Color]
gunLength = currentGun[GunIndex.GunLength]
magsize = maxmagsize
