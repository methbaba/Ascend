extends Node


@export var dmg:float = 10 

@export var dmg_area:Area2D


func _ready() -> void:
	dmg_area.collision_mask=2 
	dmg_area.body_entered.connect(on_enter_dmg_area)
	
	
func on_enter_dmg_area():
	SignalManager.health_changed.emit(dmg)
