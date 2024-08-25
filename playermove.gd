extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -300.0

var is_just_spawned = true

func _init() -> void:
	position.x = Autoload.checkpoint["x"]
	position.y = Autoload.checkpoint["y"]
func _physics_process(delta: float) -> void:
	position.x = Autoload.checkpoint["x"]
	position.y = Autoload.checkpoint["y"]
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	# Handle jump.
	#if Input.is_action_just_pressed("stretch_down") and is_on_floor():
		#velocity.y = JUMP_VELOCITY
	#Stretching Movement
	if Input.is_action_pressed("stretch_right"):
		if scale.x < Autoload.upgradeLength:
			if not Input.is_action_pressed("slow_down"):
				scale.x += Autoload.upgradeSpeed/10;
				position.x += Autoload.upgradeSpeed;
				Autoload.growPoints -= Autoload.upgradeEfficiency;
			if Input.is_action_pressed("slow_down"):
				scale.x += Autoload.upgradeSpeed/20;
				position.x += Autoload.upgradeSpeed/2;
				Autoload.growPoints -= Autoload.upgradeEfficiency/2;
	if Input.is_action_pressed("stretch_left"):
		if scale.x < Autoload.upgradeLength:
			if not Input.is_action_pressed("slow_down"):
				scale.x += Autoload.upgradeSpeed/10;
				position.x -= Autoload.upgradeSpeed;
				Autoload.growPoints -= Autoload.upgradeEfficiency;
			if Input.is_action_pressed("slow_down"):
				scale.x += Autoload.upgradeSpeed/20;
				position.x -= Autoload.upgradeSpeed/2;
				Autoload.growPoints -= Autoload.upgradeEfficiency/2;
	if Input.is_action_pressed("stretch_up"):
		if scale.y < Autoload.upgradeLength:
			if not Input.is_action_pressed("slow_down"):
				scale.y += Autoload.upgradeSpeed/10;
				position.y += Autoload.upgradeSpeed;
				Autoload.growPoints -= Autoload.upgradeEfficiency;
			if Input.is_action_pressed("slow_down"):
				scale.y += Autoload.upgradeSpeed/20;
				position.y += Autoload.upgradeSpeed/2;
				Autoload.growPoints -= Autoload.upgradeEfficiency/2;
	if Input.is_action_pressed("stretch_down"):
		if scale.y < Autoload.upgradeLength:
			if not Input.is_action_pressed("slow_down"):
				scale.y += Autoload.upgradeSpeed/10;
				position.y += Autoload.upgradeSpeed;
				Autoload.growPoints -= Autoload.upgradeEfficiency;
			if Input.is_action_pressed("slow_down"):
				scale.y += Autoload.upgradeSpeed/20;
				position.y += Autoload.upgradeSpeed/2;
				Autoload.growPoints -= Autoload.upgradeEfficiency/2;
	#Shrinking Movement
	if Input.is_action_pressed("shrink_left"):
		if scale.x >= 1:
			if not Input.is_action_pressed("slow_down"):
				scale.x -= Autoload.upgradeSpeed/10;
				position.x -= Autoload.upgradeSpeed;
				Autoload.growPoints += Autoload.upgradeEfficiency/2;
			if Input.is_action_pressed("slow_down"):
				scale.x -= Autoload.upgradeSpeed/20;
				position.x -= Autoload.upgradeSpeed/2;
				Autoload.growPoints += Autoload.upgradeEfficiency/4;
	if Input.is_action_pressed("shrink_right"):
		if scale.x >= 1:
			if not Input.is_action_pressed("slow_down"):
				scale.x -= Autoload.upgradeSpeed/10;
				position.x += Autoload.upgradeSpeed;
				Autoload.growPoints += Autoload.upgradeEfficiency/2;
			if Input.is_action_pressed("slow_down"):
				scale.x -= Autoload.upgradeSpeed/20;
				position.x += Autoload.upgradeSpeed/2;
				Autoload.growPoints += Autoload.upgradeEfficiency/4;
	if Input.is_action_pressed("shrink_up"):
		if scale.y >= 1:
			if not Input.is_action_pressed("slow_down"):
				scale.y -= Autoload.upgradeSpeed/10;
				position.y -= Autoload.upgradeSpeed;
				Autoload.growPoints += Autoload.upgradeEfficiency/2;
			if Input.is_action_pressed("slow_down"):
				scale.y -= Autoload.upgradeSpeed/20;
				position.y -= Autoload.upgradeSpeed/2;
				Autoload.growPoints += Autoload.upgradeEfficiency/4;
	if Input.is_action_pressed("shrink_down"):
		if scale.y >= 1:
			if not Input.is_action_pressed("slow_down"):
				scale.y -= Autoload.upgradeSpeed/10;
				position.y += Autoload.upgradeSpeed;
				Autoload.growPoints += Autoload.upgradeEfficiency/2;
			if not Input.is_action_pressed("slow_down"):
				scale.y -= Autoload.upgradeSpeed/20;
				position.y += Autoload.upgradeSpeed/2;
				Autoload.growPoints += Autoload.upgradeEfficiency/4;
	if Autoload.growPoints < 0:
		get_parent().remove_child(get_parent().get_children()[0]);
	

	move_and_slide()
