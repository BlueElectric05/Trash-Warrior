extends Node
@onready var points_label =  %Score
var points = 0

func addPoints ():
	points += 1;
	points_label.text = "x"+ str(points)
	
