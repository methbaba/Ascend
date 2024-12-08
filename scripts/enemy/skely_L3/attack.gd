extends State
@export var enemy:CharacterBody2D
@export var dmg:float=30
@export var animator:AnimationPlayer
@export var dmg_area:Area2D
@export var trigger_area:Area2D
@export var sword_area:Area2D
@export var default_anim:String="attack"
@export var number_of_attacks:int=3
@export var right_area:Area2D
@export var left_area:Area2D
var attack_counter:int=0
var in_range:bool =false
func enter():
	enemy.velocity.x=0	
	animator.play(default_anim)
	in_range=true
	attack_counter=0
	print("attack")

		
		
		
func update(delta:float)->void:
	if !dmg_area.body_entered.is_connected(on_enter_dmg):
		dmg_area.body_entered.connect(on_enter_dmg)
	if !dmg_area.body_exited.is_connected(on_exit_dmg):
		dmg_area.body_exited.connect(on_exit_dmg)

	if !sword_area.body_entered.is_connected(on_sword_enter):
		sword_area.body_entered.connect(on_sword_enter)
func on_sword_enter(body:Node)->void:
	SignalManager.health_changed.emit(dmg)
	
	
	
	
func on_enter_dmg(body:Node)->void:
	#dmg_area_enter func 
	enemy.velocity.x=0	
	
	while in_range:	
		print(attack_counter)
		animator.play(default_anim) 
		await get_tree().create_timer(0.5).timeout
		
		
		

func on_exit_dmg(body:Node)->void:
	in_range=false
	
	Transitioned.emit(self,"chase")

#func on_left_exit(body:Node)->void:
	#if body.name =="player":
		#Transitioned.emit(self,"wander")
	#
#func on_right_exit(body:Node)->void:
	#if body.name =="player":
		#Transitioned.emit(self,"wander")
