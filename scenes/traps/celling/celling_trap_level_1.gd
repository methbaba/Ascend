extends AnimatedSprite2D


@export var dmg = 10 


func _on_area_2d_body_entered(body: Node2D) -> void:
		print("hello")
		SignalManager.health_changed.emit(dmg)
