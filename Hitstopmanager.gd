extends Node


func stop_small():
	Engine.time_scale =0 
	await get_tree().create_timer(0.15,true,false,true).timeout
	Engine.time_scale=1 


func stop_medium():
	Engine.time_scale =0 
	await get_tree().create_timer(0.2,true,false,true).timeout
	Engine.time_scale=1 
	
	
func stop_large():
	Engine.time_scale =0 
	await get_tree().create_timer(0.3,true,false,true).timeout
	Engine.time_scale=1 
	
	
