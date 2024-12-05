extends Node

@export var dmg:float = 10 
@export var dmg_area:Area2D
@export var in_danger:bool=false

func _ready() -> void:
	
	dmg_area.body_entered.connect(on_dmg_enter)

	

		
	
func on_dmg_enter(body:Node)->void:
	SignalManager.health_changed.emit(dmg)
