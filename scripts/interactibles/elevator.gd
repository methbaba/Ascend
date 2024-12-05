extends CharacterBody2D

class_name elevator

@export var  speed = -400.0
@export var up_ray:RayCast2D
@export var down_ray:RayCast2D
@export var player_detection_ray:RayCast2D
@export var text:Label
@export var animation:AnimatedSprite2D
@export var timer:Timer
@export var distance =10 
var direction = 1
var up:bool =false

	
func _physics_process(delta: float) -> void:
	if up_ray&&down_ray&&timer&&text&&animation:
		if Input.is_action_just_pressed("interact") && !up && player_detection_ray.is_colliding() :
			
			animation.play("down")	
			direction = 1 
			velocity.y = speed*direction
			
		if Input.is_action_just_pressed("interact") && up &&  player_detection_ray.is_colliding():
			
			direction = -1 
			velocity.y =speed  *direction
			timer.start(0.2)
			down_ray.enabled=true
			
		if up_ray.is_colliding():
			velocity.y=0
			up=true
			up_ray.enabled=false
		
		if down_ray.is_colliding():
			velocity.y=0
			up=false
			down_ray.enabled=false
		
			
			
		if player_detection_ray.is_colliding():
			text.visible=true
		else:
			text.visible=false	
			
			

	move_and_slide()


func _on_timer_timeout() -> void:
	up_ray.enabled=true
