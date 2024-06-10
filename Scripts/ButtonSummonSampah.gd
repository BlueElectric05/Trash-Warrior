extends Button
@onready var game_manager = %"Game Manager"


var sampah_organik1 = preload("res://Scenes/Sampah Acak/sampah_organik_1.tscn")
var sampah_organik2 = preload("res://Scenes/Sampah Acak/sampah_organik_2.tscn")
var sampah_organik3 = preload("res://Scenes/Sampah Acak/sampah_organik_3.tscn")
var sampah_anorganik1 = preload("res://Scenes/Sampah Acak/sampah_anorganik_1.tscn")
var sampah_anorganik2 = preload("res://Scenes/Sampah Acak/sampah_anorganik_2.tscn")
var sampah_anorganik3 = preload("res://Scenes/Sampah Acak/sampah_anorganik_3.tscn")
var sampah_anorganik4 = preload("res://Scenes/Sampah Acak/sampah_anorganik_4.tscn")
var sampah_anorganik5 = preload("res://Scenes/Sampah Acak/sampah_anorganik_5.tscn")
var sampah_anorganik6 = preload("res://Scenes/Sampah Acak/sampah_anorganik_6.tscn")

func _on_pressed():
	if (Global.points > 0 and Global.press == false):
		Global.press = true
		var sampah_acak = [sampah_organik1, sampah_organik2, sampah_organik3, sampah_anorganik1, sampah_anorganik2, sampah_anorganik3, sampah_anorganik4, sampah_anorganik5, sampah_anorganik6]
		var instance = sampah_acak[randi() % sampah_acak.size()].instantiate()
		instance.position = Vector2(-23, -13)
		add_child(instance)
		game_manager.reducePoints()
	
	
	
