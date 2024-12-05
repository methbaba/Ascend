extends Node

@export var intial_state: State
var current_state: State
var states:Dictionary={}




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if current_state:
		current_state.start()
	for child in get_children():
		states[child.name.to_lower()]=child
		child.Transitioned.connect(on_child_transition)
	if intial_state:
		intial_state.enter()
		current_state=intial_state	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if current_state:
		current_state.update(delta)
func _physics_process(delta: float) -> void:
	if current_state:
		current_state.physics_update(delta)
		
		
## function that changes state based in the signal 
func on_child_transition(state, newState_name):
	if state!=current_state:
		return
		
	var newstate =states.get(newState_name.to_lower())
	
	if !newstate:
		return
	if current_state:
		current_state.exit()	
		
	newstate.enter()
	current_state=newstate
