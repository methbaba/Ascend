extends Node

## applies basic move and slide functionality to enemies
class_name enemy_attributes
@export var enemy:CharacterBody2D

@export var enemy_contact_dmg=30


func _physics_process(delta: float) -> void:
	
	if enemy :
		if not enemy.is_on_floor():
			enemy.velocity += enemy.get_gravity() * delta
		
	enemy.move_and_slide()
