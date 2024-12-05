extends  State
class_name enemy_wander
@export var animator:AnimationPlayer
@export var enemy:CharacterBody2D
@export var wander_speed =100
@export var player_detection_left:RayCast2D
@export var player_detection_right:RayCast2D
@export var wall_detector:RayCast2D
@export var player_in_range:RayCast2D
@export var sprite:AnimatedSprite2D
@export var wander_time:float =5 
@export var marker:Marker2D
var direction=1

var timer:Timer = Timer.new()

func enter():
	print("wander")
	marker.scale.x =1 
	
	if  get_tree().create_timer(random_time(wander_time)).timeout:
		Transitioned.emit(self,"tired")
	#add_child(timer)
	#timer.wait_time = random_time(wander_time)
	#timer.autostart=false
	#timer.start()
	#timer.timeout.connect(func():
		#Transitioned.emit(self,"tired")
		#)
	
func random_time(wander_time:float ):
	return randf_range(3, wander_time)
	
	
	
func physics_update(delta:float):

	if enemy:
		enemy.velocity.x =wander_speed*direction
		if wall_detector.is_colliding():
			marker.scale.x *=-1 
			direction = marker.scale.x 
			print(player_in_range.scale.x)
			
			
	if player_detection_left.is_colliding() || player_detection_right.is_colliding() :
		Transitioned.emit(self,"follow")
	
	
	enemy.move_and_slide()
