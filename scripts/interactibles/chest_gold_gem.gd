extends RigidBody2D
@export var  force_x=0
#force in  Y is -ve since in godot -ve is UP 
@export var force_y=-350
@export var detection_timer: Timer 
@export var wait_time=1
@export var player_detecction: Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player_detecction.monitoring=false
	detection_timer.start(wait_time)
	add_force()

func _on_player_detecction_body_entered(body: Node2D) -> void:
	print("gem detected ")
	queue_free()



func _on_detection_timer_timeout() -> void:
	player_detecction.monitoring=true


func add_force():
	var rand_x =randf_range(force_x*(-1),force_x)
	var rand_y = randf_range(-250,force_y)
	apply_impulse(Vector2(rand_x,rand_y).rotated(0),Vector2.ZERO)
