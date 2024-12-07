extends Node2D

class_name enemy_bullet

@export var bullet_dmg:int = 15
@export var speed:float = 35 
@export var animation_is_present:bool= false
@export var animator:AnimationPlayer
@export var bullet_anim_name:String 
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
	print("arrow has collided ")
	
	if animation_is_present :
		
		animator.play(bullet_anim_name)
		if body.name=="player":
			SignalManager.health_changed.emit(bullet_dmg)
		await get_tree().create_timer(animator.get_current_animation_length()).timeout		
		bullet_body.queue_free()
	else: 
		if body.name=="player":
			SignalManager.health_changed.emit(bullet_dmg)
		bullet_body.queue_free()
