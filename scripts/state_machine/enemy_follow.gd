extends State
class_name Enemy_follow

@export var sprite:AnimatedSprite2D
@export var animator:AnimationPlayer
@export var follow_speed:int =100
@export var player_in_range:RayCast2D
@export var player_detection_right:RayCast2D
@export var player_detection_left:RayCast2D
@export var enemy:CharacterBody2D
@export var wall_detector:RayCast2D
@export var enemy_attributes:enemy_attributes
@export var marker:Marker2D
var direction = 1 



	
func enter():
	animator.play("limp_walk")
	print("follow")
	
	
	
func physics_update(delta:float):

	if enemy:
		if player_detection_right.is_colliding():
				direction =abs(direction)
				enemy.velocity.x = follow_speed*direction 
				marker.scale.x =1 
				
		
			
			
		if player_detection_left.is_colliding():
			direction =-1
			enemy.velocity.x = follow_speed*direction 
			marker.scale.x =-1 
			
			
		if !player_detection_left.is_colliding() && !player_detection_right.is_colliding() :
			sprite.flip_h=false
			enemy.scale.x =1 
			await get_tree().create_timer(0.5).timeout
			Transitioned.emit(self,"wander")
			
			
		if player_in_range:
			if player_in_range.is_colliding():
				print("attack")
				SignalManager.health_changed.emit(enemy_attributes.enemy_contact_dmg)
				enemy.queue_free()
				
		else:
			print("player cannot be detected since no raycast ")
	enemy.move_and_slide()
	
