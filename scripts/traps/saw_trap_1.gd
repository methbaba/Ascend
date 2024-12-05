extends Node

@export var dmg:float = 10 
@export var dmg_area:Area2D
@export var in_danger:bool=false
@export var animator:AnimationPlayer
func _ready() -> void:
	
	dmg_area.body_entered.connect(on_dmg_enter)
	dmg_area.body_exited.connect(on_dmg_exit)
	
func _process(delta: float) -> void:
	if in_danger:
		
		SignalManager.health_changed.emit(dmg)
	
func on_dmg_enter(body:Node)->void:
	in_danger=true
func on_dmg_exit(body:Node)->void:
	in_danger=false
