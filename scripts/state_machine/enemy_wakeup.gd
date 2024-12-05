extends State
class_name enemy_wakeup

@export var enemy:CharacterBody2D
@export var player_detection:Array[RayCast2D]
@export var animator:AnimationPlayer

func enter():
	animator.play("passive")
	
		
		
		
func physics_update(delta:float ):
	

	enemy.velocity.x =0	
	
	enemy.move_and_slide()
	
	for rays in player_detection:
		if rays.is_colliding() && animator:
			animator.play("wakeup")
			Transitioned.emit(self,"idle")
