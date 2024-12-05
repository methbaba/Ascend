extends State

class_name enemy_tired
@export var animator:AnimationPlayer


func enter():
	animator.play("death")
	await get_tree().create_timer(animator.current_animation_length).timeout
	Transitioned.emit(self,"wakeup")
	
