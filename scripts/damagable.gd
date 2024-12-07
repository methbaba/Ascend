extends Node
class_name Damagable

@export var health = 10 
@export var animated:AnimationPlayer

@export var destroy:bool=false
@export var enemy:CharacterBody2D
@export var is_animated:bool =false
@export var hurt_anim:String= "hurt"
@export var death_anim:String="death"

func on_attacked(dmg):
	if is_animated:
		animated.play(hurt_anim)
		health-=dmg
		Hitstopmanager.stop_small()
	else:
		health-=dmg
		
		Hitstopmanager.stop_small()
		
	if health<=0:
		if is_animated:
			print("dead")
			animated.play(death_anim)
			animated.animation_finished	
			await get_tree().create_timer(1).timeout
			get_parent().queue_free()
		else:
			get_parent().queue_free()
		
