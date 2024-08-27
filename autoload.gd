extends Node

var growPoints : float = 5
var upgradeSpeed: float = 2
var upgradeLength: float = 5
var upgradeEfficiency: float = 0.005
var shopLoaded: bool = false
var player_just_spawned = false
var checkpoint: Dictionary = {
	"x": float(5500),
	"y": float(-1500),
}

func closeShop() -> void:
	# Your shop close logic here
	null

func killPlayer() -> void:
	print(get_node("/root/Game/Player").position)
	get_tree().reload_current_scene()
