extends Area2D


@export var coinValue = 10




func _on_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	SignalManager.coin_received.emit(coinValue)
	
	queue_free()
