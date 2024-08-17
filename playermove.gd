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
		print("lol");
		scale.x += 0.2;
		position.x += 2;
	if Input.is_action_pressed("stretch_left"):
		print("lol");
		scale.x += 0.2;
		position.x -= 2;
	if Input.is_action_pressed("stretch_up"):
		print("lol");
		scale.y += 0.2;
		position.y += 2;
	if Input.is_action_pressed("stretch_down"):
		print("lol");
		scale.y += 0.2;
		position.y += 2;
	#Shrinking Movement
	if Input.is_action_pressed("shrink_left"):
		print(scale.x);
		if scale.x >= 1:
			scale.x -= 0.2;
			position.x -= 2;
	if Input.is_action_pressed("shrink_right"):
		print(scale.x);
		if scale.x >= 1:
			scale.x -= 0.2;
			position.x += 2;
	if Input.is_action_pressed("shrink_up"):
		print(scale.x);
		if scale.y >= 1:
			scale.y -= 0.2;
			position.y -= 2;
	if Input.is_action_pressed("shrink_down"):
		print(scale.x);
		if scale.y >= 1:
			scale.y -= 0.2;
			position.y += 2;

	move_and_slide()
