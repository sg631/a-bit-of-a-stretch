extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -300.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	# Handle jump.
	#if Input.is_action_just_pressed("stretch_down") and is_on_floor():
		#velocity.y = JUMP_VELOCITY

	#Stretching Movement
	if Input.is_action_pressed("stretch_right"):
		scale.x += Autoload.upgradeSpeed/10;
		position.x += Autoload.upgradeSpeed;
		Autoload.growPoints -= 0.01
	if Input.is_action_pressed("stretch_left"):
		scale.x += Autoload.upgradeSpeed/10;
		position.x -= Autoload.upgradeSpeed;
		Autoload.growPoints -= 0.01
	if Input.is_action_pressed("stretch_up"):
		scale.y += Autoload.upgradeSpeed/10;
		position.y += Autoload.upgradeSpeed;
		Autoload.growPoints -= 0.01
	if Input.is_action_pressed("stretch_down"):
		scale.y += Autoload.upgradeSpeed/10;
		position.y += Autoload.upgradeSpeed;
		Autoload.growPoints -= 0.01
	#Shrinking Movement
	if Input.is_action_pressed("shrink_left"):
		if scale.x >= 1:
			scale.x -= Autoload.upgradeSpeed/10;
			position.x -= Autoload.upgradeSpeed;
			Autoload.growPoints += 0.005
	if Input.is_action_pressed("shrink_right"):
		if scale.x >= 1:
			scale.x -= Autoload.upgradeSpeed/10;
			position.x += Autoload.upgradeSpeed;
			Autoload.growPoints += 0.005
	if Input.is_action_pressed("shrink_up"):
		if scale.y >= 1:
			scale.y -= Autoload.upgradeSpeed/10;
			position.y -= Autoload.upgradeSpeed;
			Autoload.growPoints += 0.005
	if Input.is_action_pressed("shrink_down"):
		if scale.y >= 1:
			scale.y -= Autoload.upgradeSpeed/10;
			position.y += Autoload.upgradeSpeed;
			Autoload.growPoints += 0.005
	if Autoload.growPoints < 0:
		get_parent().remove_child(get_parent().get_children()[0]);

	move_and_slide()
