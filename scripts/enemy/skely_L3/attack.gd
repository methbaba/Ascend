extends State
@export var enemy:CharacterBody2D
@export var dmg:float=30
@export var animator:AnimationPlayer
@export var dmg_area:Area2D
@export var trigger_area:Area2D
@export var sword_area:Area2D
@export var default_anim:String="attack"
var can_attack:bool =false
func enter():
	
	if !dmg_area.body_entered.is_connected(on_enter_dmg):
		dmg_area.body_entered.connect(on_enter_dmg)
	if !dmg_area.body_exited.is_connected(on_exit_dmg):
		dmg_area.body_exited.connect(on_exit_dmg)
	if !trigger_area.body_exited.is_connected(on_exit_trigger):
		trigger_area.body_exited.connect(on_exit_trigger)
	if !sword_area.body_entered.is_connected(on_sword_enter):
		sword_area.body_entered.connect(on_sword_enter)
func on_sword_enter(body:Node)->void:
	SignalManager.health_changed.emit(dmg)
func on_enter_dmg(body:Node)->void:

	if can_attack:
		enemy.velocity.x=0	
		animator.play(default_anim) 

func on_exit_dmg(body:Node)->void:
	
	Transitioned.emit(self,"chase")
func on_exit_trigger(body:Node)->void:
	Transitioned.emit(self,"wander")
