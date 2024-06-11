extends Area2D
@onready var game_manager = %"Game Manager"

func _on_body_entered(body):
	if (body.name == "Player"):
		game_manager.addPoints()
		queue_free()
