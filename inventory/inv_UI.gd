extends Control


var is_open =false
@onready var slots: Array = $NinePatchRect/GridContainer.get_children()
@onready var  PLAYER_INV = preload("res://inventory/player_inv/player_Inv.tres")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if !PLAYER_INV:
		print("inventory resorce not given in UI ")
	close()
	update_slots()



func update_slots():
	for i in range(min (PLAYER_INV.items.size() , slots.size())):
		slots[i].update(PLAYER_INV.items[i])
		
		
		
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("inventory"):
		if is_open:
			close()
		elif !is_open:
			open()



func close():
	visible=false
	is_open=false
	
func open():
	visible=true
	is_open=true
