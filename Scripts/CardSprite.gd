extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

#replaces the card sprite texture with the corresponding value of a passed by
#the signal emitted
func cardImage(a):
	#prints the value passed by a for debugging
	print(a)
	#loads the texture to the card 
	$".".texture = load(a)
	
	

#catches the emitted signal and calls the function above
func _on_card_node_2d_generated(a) -> void:
	cardImage(a)
	
