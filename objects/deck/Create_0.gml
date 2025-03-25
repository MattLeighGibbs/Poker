/// @description Insert description here
// You can write your code in this editor

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum Suit 
{
	hearts,
	spades,
	clubs,
	diamonds,
	NUM
};
enum Value
{
	ace,
	two,
	three,
	four,
	five, 
	six,
	seven,
	eight,
	nine,
	ten,
	jack,
	queen,
	king,
	NUM
};
cards = [];
InitDeck()

function InitDeck()
{
	cards = []
	for (suit = 0; suit != Suit.NUM; suit++) { 
		for (value = 0; value != Value.NUM; value++) {
            var crd = instance_create_layer(suit, value, "Instances", card);
			crd.Card(suit, value)
			
            array_push(cards, crd);
		 }
	}
	randomize()
	cards = array_shuffle(cards)
}
