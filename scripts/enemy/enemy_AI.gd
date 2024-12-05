extends CharacterBody2D



@export var follow_speed=30
@export var damage=10
@export var bat_y_addition=0.5
var direction=1 
var chase=false
var player=null

# variables for wander logic 
var wander=false
@export var wander_speed =25 
@export var wander_distance =6
@export var wander_distance_y = 1
@onready var timer: Timer = $Timer
var directionY=1 
@onready var y_timer: Timer = $yTimer


func _ready() -> void:
	# start timer 
	timer.start(wander_distance)
	y_timer.start(wander_distance_y)



		
func _physics_process(delta: float) -> void:

	if chase:
		position += delta*((player.position) - position)/follow_speed
		position.y -=bat_y_addition
	
	if wander:
		
		position.x += direction*wander_speed*delta
		position.y += directionY*wander_speed*delta
		

func _on_timer_timeout() -> void:
	direction *=-1 
	
func _on_y_timer_timeout() -> void:
	directionY *=-1 
	
## these area2D just detects when player is in range 	
func _on_area_2d_body_entered(body: Node2D) -> void:
	#start chase
	
	
	chase =true
	player=body 
	wander=false
	print("player_found ")
	


func _on_area_2d_body_exited(body: Node2D) -> void:
	#stop chase
	
	chase=false
	player=null
	print("player_left ")
	wander=true 
	
	

	
	
	

## bats attack player when in contact 
func _on_damage_area_body_entered(body: Node2D) -> void:
	#do damage once in contact 
	SignalManager.health_changed.emit(damage)
	queue_free()





	


		
