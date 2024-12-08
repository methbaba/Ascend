extends Node2D

class_name bullet 

@export var bullet_dmg:int = 15
@export var speed:float = 35 
@export var animator:AnimationPlayer
@export var animation_name:String ="blast_6"
@export var bullet_body:CharacterBody2D

var direction = Vector2.RIGHT

@export var dmg_area:Area2D
func _ready() -> void:
	direction =Vector2.RIGHT.rotated(global_rotation)
	dmg_area.body_entered.connect(on_body_entered)
func _physics_process(delta: float) -> void:
	
	if bullet_body:
		bullet_body.velocity =direction*speed 
		var collison=bullet_body.move_and_collide(bullet_body.velocity)

func on_body_entered(body:Node2D)->void :
	
	if body.is_in_group("enemy"):
		bullet_body.velocity = Vector2.ZERO
		for child in body.get_children():
			if child.name =="Damagable":
				child.on_attacked(bullet_dmg)
	animator.play(animation_name)
	await get_tree().create_timer(animator.get_current_animation_length()).timeout		
	Hitstopmanager.stop_small()
	bullet_body.queue_free()
