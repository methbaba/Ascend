extends State
@export var speed:float=10
@export var enemy_character:CharacterBody2D
@export var animator:AnimationPlayer
@export var wall_detector:Area2D
@export var trigger_area:Area2D
@export var wander_speed=10
@export var default_anim:String="walk"
@export var flip_marker:Marker2D

var flip:bool=false
func enter():
	print("wander")
	animator.play(default_anim)
	if !trigger_area.body_entered.is_connected(on_enter_wander):
		trigger_area.body_entered.connect(on_enter_wander)
	if !wall_detector.body_entered.is_connected(on_wall_detected): 	
		wall_detector.body_entered.connect(on_wall_detected)
		
		
func physics_update(delta:float ):
	if flip:
		flip_marker.scale.x*=-1 
		flip=false
	enemy_character.velocity.x = speed*flip_marker.scale.x
	enemy_character.move_and_slide()
	
	
func on_enter_wander(body:Node)->void:
	if body.name== "player":
		Transitioned.emit(self,"chase")
		
func on_wall_detected(body:Node)->void:
	#flip
	flip=true

	
