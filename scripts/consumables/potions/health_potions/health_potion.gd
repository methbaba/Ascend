extends AnimatedSprite2D

@export var health_boost=100

func _on_area_2d_body_entered(body: Node2D) -> void:
	SignalManager.on_health_healed.emit(health_boost)
	print("health given ==>  " )
	queue_free()	
