extends Node2D

class_name gun


@export var bullet: PackedScene
@export_range(0,360) var arc 
@export_range(0,20) var fire_rate:float  =2 
@export var bullet_count:int =2 

var can_shoot = true 

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("player_attack_2"):
		shoot()
		
func shoot ():
	if can_shoot:
		can_shoot=false
		for i in bullet_count:
			var new_bulllet = bullet.instantiate()
			new_bulllet.position = global_position
			if bullet_count==1 :
				new_bulllet.rotation = global_rotation
			else:
				var arc_rad =deg_to_rad(arc)
				var increment = arc_rad/(bullet_count-1 )
				new_bulllet.global_rotation=(
					global_rotation +
					increment *i  -
					arc_rad/2 
				)
			get_tree().root.call_deferred("add_child",new_bulllet)
		await get_tree().create_timer(1/ fire_rate).timeout
		can_shoot=true
