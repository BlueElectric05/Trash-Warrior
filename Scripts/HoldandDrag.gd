extends Area2D
@onready var game_manager = %"Game Manager"


var selected = false
var mouse_offset = 0
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if selected : 
		followMouse()

func followMouse():
	position = get_global_mouse_position() + mouse_offset

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			mouse_offset = position - get_global_mouse_position()
			selected = true
		else :
			selected = false 

func _on_area_entered(area):
	if (area.name == "Tempah Sampah 3"): 
		get_node("/root/Minigame/Game Manager").addOrganicPoints()
		Global.press = false
		queue_free()
		if Global.points == 0:
			get_node("/root/Minigame/CanvasLayer/ContinueButton").visible = true

	elif (area.name == "Tempah Sampah 2"): 
		get_node("/root/Minigame/Game Manager").reduceNonorganicPoints()
		Global.press = false
		queue_free()
		if Global.points == 0:
			get_node("/root/Minigame/CanvasLayer/ContinueButton").visible = true



