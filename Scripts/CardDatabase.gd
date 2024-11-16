class_name CardNode2D 
extends Node2D
 

#variables for names of the cards to access the images
var clubs = "card-clubs-"
var diamonds = "card-diamonds-"
var spades = "card-spades-"
var hearts = "card-hearts-"

@export var cards_array = []
#variable for the array
var png_name_array = []


#signal saying the database is generated
signal generated(png_name_array)

#signal to generate a card
signal generate_a_card(a)

func _ready():
	#calls the database generator
	cardGenerator()

#function for generating the database
func cardGenerator():
	#nested loops to iterate 4*13 which is 52 cards
	for i in 4:
		#switch for nested loop not needed but kept it for debugging
		match i:
			0:
				for j in 13:
					#assigns the values in a array
					png_name_array.append(clubs +str(j+1))
			1:
				for j in 13:
					png_name_array.append(diamonds +str(j+1))
			2:
				for j in 13:
					png_name_array.append(spades +str(j+1))
			3:
				for j in 13:
					png_name_array.append(hearts +str(j+1))
	
	#debugging for checking if the values got assigned properly
	for i in len(png_name_array):
		png_name_array[i] = str("res://Assets/",png_name_array[i],".png")
		#emits the signal saying its generated per iteration
		#generated.emit(png_name_array[i])
		print (png_name_array[i])
