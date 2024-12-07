extends State

@export var animator:AnimationPlayer
@export var trigger_area:Area2D
@export var default_anim:String="idle"
func enter():
	animator.play(default_anim)
	trigger_area.body_entered.connect(on_enter)
	
	
func on_enter(body:Node)->void :
	if body.name =="player":
		Transitioned.emit(self,"chase")	
	
