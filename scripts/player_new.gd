extends CharacterBody2D
@export var animator:AnimationPlayer
@export var sword_damage=100
@export var  SPEED:float  = 300.0
@export var JUMP_VELOCITY:float = -400.0
@export var gravity_multiplier:float= 2 
@export var marker:Marker2D
@export var max_jumps:int=2 
@export var sword_attack_area:Area2D
@export var attack_timer:Timer

@export var effect_animator:AnimationPlayer

var jump:bool =false
var walk:bool = false
var jump_counter:int
var hurt:bool = false
var attack:bool = false
var dead:bool=false
func _ready() -> void:
	
	#hurt animation 
	SignalManager.health_changed.connect(on_hurt)
	SignalManager.on_death.connect(on_dead)
func on_hurt(dmg):
	hurt=true
	print("hurt")
	await get_tree().create_timer(0.3).timeout
	hurt =false
func on_dead():
	dead=true
	velocity= Vector2.ZERO
	await get_tree().create_timer(1.5).timeout
	get_tree().reload_current_scene()
	
func _physics_process(delta: float) -> void:
	if !dead:
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
			jump_counter +=1 
		if Input.is_action_just_released("jump_up"):
			pass
			#velocity += get_gravity() * delta* gravity_multiplier
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
			
		if Input.is_action_just_pressed("player_attack_1"):
			attack=true
			
			if !sword_attack_area.body_entered.is_connected(on_attack):
				sword_attack_area.body_entered.connect(on_attack)
			
			attack_timer.start(0.3)
			
		## dash 
		if Input.is_action_just_pressed("dash_inp") :
			print("dash")
			#effect_animator.play("dash") 
		
		
		
	move_and_slide()



func on_attack(body:Node)->void:
	if body.is_in_group("enemy"):
		for child in body.get_children():
			if child.name =="Damagable":
				Hitstopmanager.stop_small()
				child.on_attacked(sword_damage)
				

	
	


func _on_attack_timer_timeout() -> void:
	attack =false
