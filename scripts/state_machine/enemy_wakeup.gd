extends State
class_name enemy_wakeup

@export var enemy:CharacterBody2D
@export var left_ray:RayCast2D
@export var right_ray:RayCast2D
@export var animator:AnimationPlayer

func enter():
	animator.play("passive")
	#player_left.body_entered.connect(left_enter)
	#player_right.body_entered.connect(right_enter)
		
		
#func left_enter(body:Node)->void:
	#if animator and body.name=="player":
		#animator.play("wakeup")
		#Transitioned.emit(self,"idle")
#func right_enter(body:Node)->void:
	#if animator and body.name=="player":
		#animator.play("wakeup")
		#Transitioned.emit(self,"idle")
		
		
		
		
func physics_update(delta:float ):
	

	enemy.velocity.x =0	
	
	enemy.move_and_slide()
	if left_ray.is_colliding() || right_ray.is_colliding():
		animator.play("wakeup")
		Transitioned.emit(self,"idle")
