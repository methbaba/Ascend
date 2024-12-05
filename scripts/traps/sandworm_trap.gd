extends Node2D



@export var trigger_1:Area2D

@export var dmg_area_1:Area2D
@export var dmg:float=10
@export var animator:AnimationPlayer
@export var anim_name:String 

func _ready() -> void:
	
	
	trigger_1.body_entered.connect(trigger_1_enter)
	dmg_area_1.body_entered.connect(do_damage)
	
	

func trigger_1_enter(_body:Node2D)->void:
	
	
		animator.play(anim_name)
	
	
	
func do_damage(_body:Node2D)->void:
	
	SignalManager.health_changed.emit(dmg)
	
	
