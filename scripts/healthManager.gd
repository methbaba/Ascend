extends Node
@onready var health_bar: TextureProgressBar = $"../CanvasLayer/Control/health_bar"

@export var max_health:float = 100 
#@export var health_bar:TextureProgressBar
var health:float 
func _ready() -> void:
	health= max_health
	health_bar.max_value = max_health
	health_bar.value=health
	SignalManager.health_changed.connect(on_damage)
	SignalManager.on_health_healed.connect(on_heal)

func on_damage(dmg):
	health -= dmg
	health_bar.value=health
	if health <=0:
		print(health)
		SignalManager.on_death.emit()
	
func on_heal(heal):
	health += heal
	health_bar.value = health
	
	if health >=max_health:
		health=max_health
	
