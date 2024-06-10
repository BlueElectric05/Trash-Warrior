extends Panel
@onready var game_manager = %"Game Manager"

func _ready():
	game_manager.setPoints()
	
