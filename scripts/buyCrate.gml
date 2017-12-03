if(global.money >= price){
    var item = openCrate()
    if(addItem(item)){
        fullAlert = true
        alarm[1] = 2*room_speed
    }else{
        fullAlert = false
        recievedItem = item
        global.money-=price
        alarm[0] = 2*room_speed
    }  
}
