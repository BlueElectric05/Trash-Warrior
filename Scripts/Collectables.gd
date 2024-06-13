extends Area2D
@onready var game_manager = %"Game Manager"

func _on_body_entered(body):
	if (body.name == "Player"):
		get_node("/root/Game/Game Manager").addPoints()
		queue_free()
