var first = argument0
var second = argument1

if(!(is_array(first) && is_array(second))) return false;

if(array_length_1d(first) != array_length_1d(second)) return false;

for(var i = 0; i < array_length_1d(first); i++){
    if(first[i] != second[i]) return false
}

return true
