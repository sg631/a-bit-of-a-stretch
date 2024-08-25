extends Node

var growPoints : float = 5;
var upgradeSpeed: float = 2;
var upgradeLength: float = 5;
var upgradeEfficiency: float = 0.005;
var shopLoaded: bool = false;
var checkpoint: int = 0;

func closeShop() -> void:
	#get_parent().get_node("Game").remove_child(get_parent().get_node("Game/ShopUI"))
	#get_parent().get_node("Game/ShopUI").hide();
	null
