extends Node


@export var anim:AnimationPlayer
@export var damage=10
@export var dmg_area:Area2D
func _ready() -> void:
	
	dmg_area.body_entered.connect(on_dmg_enter)
	
func on_dmg_enter(_body:Node)->void:
	print("heyo")
	SignalManager.health_changed.emit(damage)
