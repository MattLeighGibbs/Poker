enum HandType
{
	two_pair,
	three_pair,
	four_of_a_kind,
	full_house,
	flush,
	royal_flush,
	straight,
	nothing
}
function Draw(source, destination, numberToDraw) {
		// Loop to remove the first N elements
	for (var i = 0; i < numberToDraw; i++) {
		source[i].should_draw = true
		array_push(destination, source[i])
	}
	array_delete(source, 0, numberToDraw)
}
function CheckNOfAKind(hand)
{
	var map = ds_map_create()
	for (i = 0; i < array_length(hand); i++) {
		var item = hand[i]
		if (d_map_exists(map, item)) {
			map[item] += 1
		}
		else {
			ds_map_add(map, item, 1)
		}
	}
	
	// Iterate through the map
	var key_list = ds_map_keys(map);
	for (var i = 0; i < array_length(key_list); i++) {
	    key = key_list[i];
	    value = map[key];

	    // Check if this value is greater than the current max
	    if (value > max_value) {
	        max_value = value;
	        max_key = key;
	    }
	}

	if  (max_value == 2) {
		return HandType.two_pair;
	}
	else if (max_value == 3) {
		return HandType.three_pair;
	}
	else if (max_value == 3) {
		return HandType.four_of_a_kind;
	}
	
	return HandType.nothing
}

function CheckStraight(hand)
{
	array_sort(hand, function(elm1, elm2)
	{
	    return elm1 - elm2;
	}); 

	in_straight_patch = true
	longest_straight = 0
	this_straight = 0
	for (i = 0; i < array_length(hand) - 1; i++) {
		var this_card = hand[i]
		var next_card = hand[i]
		if (this_card.value == (next_card.value - 1))
		{
			in_straight_patch = true
			this_straight++
			if (this_straight == 4) { 
				return HandType.straight
			}
		}
		
		else 
		{
			if (in_straight_patch) {
				in_straight_patch = false
				if (this_straight > longest_straight) {
					longest_straight = this_straight
				}
				this_straight = 0
			}
			in_straight_patch = false
		}
	}
	return HandType.nothing
}

function GetHandType()
{
	
}

Hand =
{
	cards : []
}