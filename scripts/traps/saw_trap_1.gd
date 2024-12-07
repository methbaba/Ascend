extends Node

@export var timer:Timer
@export var dmg:float = 10
@export var dmg_area:Area2D


func _ready() -> void:
	
	

	dmg_area.body_entered.connect(on_dmg_enter)
	dmg_area.body_exited.connect(on_dmg_exit)
	
	




			
		
	
func on_dmg_exit(bod:Node)->void :
	
	if timer: 
		timer.stop()
	
func on_dmg_enter(body:Node)->void:
	SignalManager.health_changed.emit(dmg)
	if timer:
		timer.start(0.5)	





func _on_dmg_timer_timeout() -> void:
	print("timeout")
	SignalManager.health_changed.emit(dmg)
