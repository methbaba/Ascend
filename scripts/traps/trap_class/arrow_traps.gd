extends  Node2D

class_name arrow_shooter

@export var fire_rate=0.5
@export var arrow_obj:PackedScene
@export var animations:AnimatedSprite2D
@export var trigger:Area2D
var in_danger:bool 

func _ready() -> void:
	trigger.collision_mask=2 
	trigger.body_entered.connect(on_enter)
	trigger.body_exited.connect(on_exit)
	

func on_enter(body:Node)->void:
	if body.name=="player":
		print("enter")
		animations.play("open")
		await animations.animation_finished
		shoot()
	
func on_exit(body:Node)->void:
	await animations.animation_finished
	animations.play("close")
	
func shoot():
	
		var arrow_bod=arrow_obj.instantiate()
		arrow_bod.position =global_position
		arrow_bod.rotation =global_rotation
		get_tree().root.call_deferred("add_child",arrow_bod)	
	
