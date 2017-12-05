draw_self();
if(recievedItem !=-1){
    var color = recievedItem[GunIndex.Color];
    var sprite = recievedItem[GunIndex.Sprite];
    var xx = (x) - sprite_get_xoffset(sprite);
    var yy = (y - startY) + sprite_get_yoffset(sprite);
    startY += 0.5;
    draw_sprite_ext(sprite,0,xx,yy,1.5,1.5,45,color,1);
}
if(fullAlert){
    draw_text(x-string_width("Inventory Full")/2,y-32,"Inventory Full");
}
draw_text(x-string_width("$"+string(price))/2,y+32,"$"+string(price));
