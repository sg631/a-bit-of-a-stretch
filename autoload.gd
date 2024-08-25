extends Node

var growPoints : float = 5
var upgradeSpeed: float = 2
var upgradeLength: float = 5
var upgradeEfficiency: float = 0.005
var shopLoaded: bool = false
var checkpoint: Dictionary = {
	"x": float(1),
	"y": float(1),
}

func closeShop() -> void:
	# Your shop close logic here
	null

func killPlayer() -> void:
	print(get_node("/root/Game/Player").position)
	
	# If the player is a rigidbody, you should call `teleport_player` instead.
	teleport_player(Vector2(float(checkpoint["x"]), float(checkpoint["y"])))

func teleport_player(target_position: Vector2) -> void:
	var player = get_node("/root/Game/Player")
	if player is RigidBody2D:
		player.position = target_position
		# Set linear_velocity to zero to stop any ongoing movement
		player.linear_velocity = Vector2.ZERO
		# Set angular_velocity to zero to stop any rotation
		player.angular_velocity = 0.0
	else:
		player.position = target_position
