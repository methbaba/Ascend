extends State
class_name enemy_idle

@export var enemy:CharacterBody2D
@export var animator:AnimationPlayer
@export var player_detection:Array[RayCast2D]








func enter():
	animator.play("stand_idle")
	

	
func physics_update(delta:float ):
	for rays in player_detection:
		if rays.is_colliding() && animator:
			
			Transitioned.emit(self,"follow")
		
	
		
