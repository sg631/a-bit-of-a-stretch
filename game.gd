extends Node2D

var CorrectSound = preload("res://backtrackz.wav")

func _process(delta: float) -> void:
	if !$AudioStreamPlayer.is_playing():
		$AudioStreamPlayer.stream = CorrectSound
		$AudioStreamPlayer.play()
