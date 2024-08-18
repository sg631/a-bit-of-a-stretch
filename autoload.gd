extends Node

var growPoints : float = 5;
var upgradeSpeed: float = 2;
var upgradeLength: float = 5;
var upgradeEfficiency: float = 0.005;
var shopShouldClose: bool = false;
var checkpoint: int = 0;

func closeShop() -> void:
	get_node("res://game.tscn/Game")
