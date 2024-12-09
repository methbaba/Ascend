extends Node2D



@export var trigger_area:Area2D
@export var dmg_area:Area2D
@export var animator:AnimatedSprite2D
@export var animation_player:AnimationPlayer


func _ready() -> void:
	trigger_area.body_entered.connect(on_enter)
	dmg_area.body_entered.connect(on_enter_dmg)
	
func on_enter(_body:Node)->void: 
	if animator:
		animator.play("open")
	if animation_player:
		animation_player.play("open")
		
func on_enter_dmg(_body:Node)->void:
	
		#confirm death
		SignalManager.health_changed.emit(1000)
