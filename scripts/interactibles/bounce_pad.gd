extends AnimatedSprite2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

@export var force =-500 




func _on_area_2d_body_entered(body: Node2D) -> void:
	
	if body.name == "player":
		animation_player.play("idle")
		print("jump anim")
		body.velocity.y =force
		
