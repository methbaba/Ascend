extends Area2D



@export var coinValue = 10

func _on_body_entered(body: Node2D) -> void:
	SignalManager.coin_received.emit(coinValue)
	queue_free()

	
