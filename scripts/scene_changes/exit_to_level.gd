extends Area2D

@export var scene_to_transition : PackedScene

func _ready() -> void:
	self.body_entered.connect(on_body_entered)
	
	
	
func on_body_entered(body:Node2D)-> void:
	SceneManager.change_scene(scene_to_transition)
