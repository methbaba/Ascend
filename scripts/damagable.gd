extends Node
class_name Damagable

@export var health = 10 
@export var animated:AnimationPlayer
@export var animation_name:String 
@export var destroy:bool=false
@export var enemy:CharacterBody2D

func on_attacked(dmg):
	
	health -=dmg
	
	if health<=0:
		get_parent().queue_free()
		
		
