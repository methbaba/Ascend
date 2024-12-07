extends State
@export var speed:float=10
@export var enemy_character:CharacterBody2D
@export var animator:AnimationPlayer
@export var dmg_area:Area2D
@export var trigger_area:Area2D
@export var left_area:Area2D
@export var right_area:Area2D
@export var default_anim:String="walk"
var dir:int=0
@export var marker_flip:Marker2D
func enter():
	print("chase")
	animator.play(default_anim)
	
	if !left_area.body_entered.is_connected(on_left_detection):
		left_area.body_entered.connect(on_left_detection)
	if !right_area.body_entered.is_connected(on_right_detection):
		right_area.body_entered.connect(on_right_detection)
	if !dmg_area.body_entered.is_connected(on_enter_dmg):
		dmg_area.body_entered.connect(on_enter_dmg)
	if !trigger_area.body_entered.is_connected(on_enter_chase):
		trigger_area.body_entered.connect(on_enter_chase)
	if !trigger_area.body_exited.is_connected(on_exit_chase):
		trigger_area.body_exited.connect(on_exit_chase)

func physics_update(delta:float ):

	
		enemy_character.velocity.x = speed*dir
		enemy_character.move_and_slide()



func on_left_detection(body:Node)->void:
	marker_flip.scale.x =-1 
	dir=marker_flip.scale.x
func on_right_detection(body:Node)->void:
	marker_flip.scale.x =1
	dir=marker_flip.scale.x

func on_exit_chase(body:Node)->void:
	if body.name =="player":
		Transitioned.emit(self,"wander")

func on_enter_chase(body:Node)->void:
	if body.name =="player":
		print("chasing")

func on_enter_dmg(body:Node)->void :
	if body.name =="player":
		Transitioned.emit(self,"attack")
