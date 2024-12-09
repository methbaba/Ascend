extends Node

## this is a global scene  

#tells player when he is reciving damage 
signal health_changed

#tells player what value of coin is received 
signal coin_received 

#starts death animation and restarts game 
signal on_death

## signals for potions :: 

signal on_health_healed


## attack signals 

#signal attacking


func _ready() -> void:
	SignalManager.on_death.connect(on_player_death)
	
	

func on_player_death():
	await get_tree().create_timer(1.5).timeout
	get_tree().reload_current_scene()
