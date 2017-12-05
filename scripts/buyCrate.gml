if(global.money >= price){
    var item = openCrate()
    if(addItem(copyGun(item))){
        fullAlert = true
        alarm[1] = 2*room_speed
    }else{
        fullAlert = false
        recievedItem = item
        global.money-=price
        alarm[0] = 1.3*room_speed
        image_index = 0
        image_speed = 0.4
        startY = 30
    }  
}
