extends CharacterBody2D


@export var Speed : int = 100
@export var JumpForce : int = 250
@export var gravity : int = 700
@export_range(0.0, 1.0) var friction = 0.225
@export_range(0.0, 1.0) var acceleration = 0.225

func _physics_process(delta):
	
	# Gravitasi---------------------------------------------------------
	if not is_on_floor():
		velocity.y += gravity * delta
		
	# Inisialisasi tombol kanan/kiri------------------------------------
	var direction = Input.get_axis('ui_left','ui_right')
	
	if direction != 0:
		velocity.x = lerpf(velocity.x, direction * Speed, acceleration)
	elif velocity.x != direction and velocity.x != 0 and not is_on_floor():
		direction = velocity.x
	else:
		velocity.x = lerpf(velocity.x, 0.0, friction)
		$AnimatedSprite2D.play("Idle Normal")
	
	if Input.is_action_just_pressed("attack") and is_on_floor():
		$AnimatedSprite2D.play("Attack")
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y -= JumpForce	
	
	# Memutar karakter
	if direction == 1 and is_on_floor():
		$AnimatedSprite2D.flip_h = false
	elif direction == -1 and is_on_floor():
		$AnimatedSprite2D.flip_h = true
		
	move_and_slide()
