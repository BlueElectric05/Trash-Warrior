extends Area2D

@onready var player_script = %Player

func _on_body_entered(body):
	if body.name == "Player" : 
		get_node("/root/Game/Player").reduceHp()
		await get_tree().create_timer(1).timeout
