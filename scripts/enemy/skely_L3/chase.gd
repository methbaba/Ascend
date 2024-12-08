extends State
@export var speed:float=10
@export var enemy_character:CharacterBody2D
@export var animator:AnimationPlayer
@export var dmg_area:Area2D
@export var wall_detector:Area2D
@export var trigger_area:Area2D
@export var left_area:Area2D
@export var right_area:Area2D
@export var default_anim:String="walk"
var left:bool =false
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
	
	if !wall_detector.body_entered.is_connected(on_wall_detected):
		wall_detector.body_entered.connect(on_wall_detected)
	
	if !left_area.body_exited.is_connected(on_left_exit):
			left_area.body_exited.connect(on_left_exit)
	if !right_area.body_exited.is_connected(on_right_exit):
			right_area.body_exited.connect(on_right_exit)
	


		
		
func physics_update(delta:float ):
		if left:
			enemy_character.velocity.x = speed*(-1)
			marker_flip.scale.x =-1 
		else:
			enemy_character.velocity.x = speed
			marker_flip.scale.x =1 
		enemy_character.move_and_slide()	
		
func on_wall_detected(body:Node)-> void :
	Transitioned.emit(self,"wander")
	
	
func on_left_detection(body:Node)->void:
	left=true
	
func on_right_detection(body:Node)->void:
	left=false
	

func on_left_exit(body:Node)->void:
	if body.name =="player":
		Transitioned.emit(self,"wander")
	
func on_right_exit(body:Node)->void:
	if body.name =="player":
		Transitioned.emit(self,"wander")



func on_enter_dmg(body:Node)->void :
	if body.name =="player":
		Transitioned.emit(self,"attack")
		
