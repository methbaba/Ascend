extends CharacterBody2D


@export var  SPEED:float  = 300.0
@export var JUMP_VELOCITY:float = -400.0
@export var gravity_multiplier:int= 2 
@export var marker:Marker2D
@export var max_jumps:int=2 
var jump:bool =false
var walk:bool = false
var jump_counter:int
var hurt:bool = false
func _ready() -> void:
	#hurt animation 
	SignalManager.health_changed.connect(on_hurt)
	
func on_hurt(dmg):
	hurt=true
	print("hurt")
	await get_tree().create_timer(0.3).timeout
	hurt =false
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		jump=true
		velocity += get_gravity() * delta* gravity_multiplier
	if is_on_floor():
		jump_counter=0
		jump=false	
	# Handle jump.
	if Input.is_action_just_pressed("jump_up") and jump_counter<=max_jumps:
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left","move_right")
	if direction:
		velocity.x = direction * SPEED
		walk =true		
	else:
		velocity.x=0
	if velocity.x ==0 :
		walk=false
		
	if Input.is_action_just_pressed("move_left"):
		marker.scale.x = -1 
	elif Input.is_action_just_pressed("move_right"):
		marker.scale.x =1 
	move_and_slide()
