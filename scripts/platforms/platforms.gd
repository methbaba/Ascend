extends CharacterBody2D



@export var horizontal:bool=false
@export var vertical:bool=false
@export var fallable:bool=false
@export var particle_effect:CPUParticles2D
@export var left_trigger:Area2D
@export var right_trigger:Area2D
@export var up_trigger:Area2D
@export var down_trigger:Area2D
@export var animator:AnimationPlayer
@export var  fallable_trigger:Area2D

@export var speed:float=10
@export var org_pos:Vector2
var dir:Vector2 
func _ready() -> void:
	particle_effect.emitting=false
	dir.x=1
	dir.y=-1
	if !fallable_trigger.body_entered.is_connected(trigger_enter):
		fallable_trigger.body_entered.connect(trigger_enter)
	if !left_trigger.body_entered.is_connected(left_trigger_enter):
		left_trigger.body_entered.connect(left_trigger_enter)
		
		
	if !right_trigger.body_entered.is_connected(right_trigger_enter):
			right_trigger.body_entered.connect(right_trigger_enter)
			
	if !up_trigger.body_entered.is_connected(up_trigger_enter):
			up_trigger.body_entered.connect(up_trigger_enter)
			
	if !down_trigger.body_entered.is_connected(down_trigger_enter):
			down_trigger.body_entered.connect(down_trigger_enter)



func _physics_process(delta: float) -> void:
	if vertical:
		velocity.y=speed*dir.y
	if horizontal:
		velocity.x = speed*dir.x
	
	move_and_slide()


func trigger_enter(body:Node)->void:
	if fallable:
		particle_effect.emitting=true
		animator.play("shake")
		await get_tree().create_timer(1).timeout
		velocity = get_gravity() 
		await get_tree().create_timer(1).timeout
		queue_free()

func left_trigger_enter(body:Node)->void:
	dir.x=1
func right_trigger_enter(body:Node)->void:
	
	dir.x=-1
func up_trigger_enter(body:Node)->void:
	dir.y=1
func down_trigger_enter(body:Node)->void:	
	dir.y=-1
	
