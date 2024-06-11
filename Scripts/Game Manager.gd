extends Node
@onready var points_label =  %Score
@onready var organic_score = %OrganicScore
@onready var nonorganic_score = %NonorganicScore

func addPoints ():
	Global.points += 1
	points_label.text = "x "+ str(Global.points)
	 
func setPoints ():
	points_label.text = "x "+ str(Global.points)
	
func reducePoints():
	Global.points -= 1
	points_label.text = "x "+ str(Global.points)

func addOrganicPoints():
	Global.Organicpoints += 1
	organic_score.text = "x "+ str(Global.Organicpoints)
	 
func setOrganicPoints():
	organic_score.text = "x "+ str(Global.Organicpoints)
	
func reduceOrganicPoints():
	if(Global.Organicpoints > 0):
		Global.Organicpoints -= 1
		organic_score.text = "x "+ str(Global.Organicpoints)

func addNonorganicPoints():
	Global.Nonorganicpoints += 1
	nonorganic_score.text = "x "+ str(Global.Nonorganicpoints)
	 
func setNonorganicPoints():
	nonorganic_score.text = "x "+ str(Global.Nonorganicpoints)
	
func reduceNonorganicPoints():
	if(Global.Nonorganicpoints > 0):
		Global.Nonorganicpoints -= 1
		nonorganic_score.text = "x "+ str(Global.Nonorganicpoints)
