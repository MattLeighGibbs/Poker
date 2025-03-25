/// @description Insert description here
// You can write your code in this editor

suit = Suit.clubs
value = Value.two

should_draw = false

function Card(st, val) {
    suit = st;
    value = val;
	sprite_index = cardsprites
	image_index =  ((Value.NUM) * suit) + value	
}