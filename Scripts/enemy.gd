extends Node2D

const SPEED = 60

var direction = 1

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var musuh_sampah = $MusuhSampah

var drop = preload("res://Scenes/collectables.tscn")
var enemy_position = $".".position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		musuh_sampah.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		musuh_sampah.flip_h = false
	
	position.x += direction * SPEED * delta

func _on_area_2d_area_entered(area):
	if area.is_in_group ("Hit"):
		queue_free() 
		for i in range((randi() % 3) + 1):
			var drop_instance = drop.instantiate()
			drop_instance.global_position = global_position + Vector2(randi_range(-30, 30), -10)
			
			get_parent().add_child(drop_instance)
		
