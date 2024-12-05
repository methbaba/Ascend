extends Node


@export var dmg:float = 10 
@export var animator:AnimationPlayer
@export var dmg_area_1:Area2D
@export var dmg_area_2:Area2D
@export var trigger_area:Area2D
@export var anim_name:String="level_2"

func _ready() -> void:
	dmg_area_1.collision_mask=2 
	dmg_area_2.collision_mask=2 
	
	trigger_area.body_entered.connect(on_trigger)
	if dmg_area_1:
		dmg_area_1.body_entered.connect(on_enter_dmg_area)
	if dmg_area_2:
		dmg_area_2.body_entered.connect(on_enter_dmg_area_2)
	
	
func on_enter_dmg_area_2(_body:Node)->void:
	SignalManager.health_changed.emit(dmg)	
func on_enter_dmg_area(_body:Node)->void:
	SignalManager.health_changed.emit(dmg)
func on_trigger(_body:Node)->void:
	animator.play(anim_name)
