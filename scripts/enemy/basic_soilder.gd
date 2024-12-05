extends CharacterBody2D


const SPEED = 100



@export var player_detection_ray: RayCast2D
@export var wall_check_ray: RayCast2D
@export var attack_detection_ray: RayCast2D

var wander :=false
var attack :=false
var chase :=false 
var idle :=true
@export var wander_time=5
var direction_x = 1
@export var attack_value =40


func _physics_process(delta: float) -> void:
	
	#flipping character(collision mask should be 1 / tilemaps)
	if wall_check_ray.is_colliding():
		direction_x *=-1
		scale.x *=-1
	
	# Add the gravity.
	if player_detection_ray.is_colliding():
		chase=true
		wander=false
		idle=false
		
	if not is_on_floor():
		velocity += get_gravity() * delta
	if wander:
		
		velocity.x =SPEED*direction_x
		
	if chase:
		velocity.x =SPEED*1.3*direction_x
		
	##attack logic 
	if attack_detection_ray.is_colliding():
		attack=true
		print("attack")
	else:
		attack=false
	move_and_slide()


func _on_attack_area_body_entered(body: Node2D) -> void:
	SignalManager.health_changed.emit(attack_value)
