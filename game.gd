extends Node2D

var CorrectSound = preload("res://backtrackz.wav")
func _ready() -> void:
	get_node("/root/Game/Player").position = Vector2(Autoload.checkpoint["x"], Autoload.checkpoint["y"])
func _process(delta: float) -> void:
	print(Autoload.checkpoint)
	if !$AudioStreamPlayer.is_playing():
		$AudioStreamPlayer.stream = CorrectSound
		$AudioStreamPlayer.play()
		
