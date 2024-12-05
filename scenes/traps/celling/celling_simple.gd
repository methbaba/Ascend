extends Node2D


@export var anim:AnimationPlayer
@export var dmg:float = 10 
@export var dmg_area:Area2D
func _ready() -> void:
	dmg_area.body_entered.connect(on_dmg)
	
func on_dmg():
	SignalManager.health_changed.emit(dmg)
