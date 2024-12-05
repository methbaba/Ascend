extends Node

## applies basic move and slide functionality to enemies
class_name enemy_attributes
@export var enemy:CharacterBody2D
@export var enemy_health:int =40
@export var enemy_contact_dmg=30
@export var wall_detector:RayCast2D

func _physics_process(delta: float) -> void:
	
	if enemy && wall_detector:
		if not enemy.is_on_floor():
			enemy.velocity += enemy.get_gravity() * delta
		
	enemy.move_and_slide()
