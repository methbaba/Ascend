extends Node


@export var anim:AnimationPlayer

@export var dmg_area:Area2D
func _ready() -> void:
	pass
	#dmg_area.body_entered.connect(on_dmg_enter)
	
#func on_dmg_enter(_body:Node)->void:
	#print("heyo")
	#SignalManager.health_changed.emit(dmg)


func _on_spikes_body_entered(body: Node2D) -> void:
	print("heyo")
	SignalManager.health_changed.emit(10)
