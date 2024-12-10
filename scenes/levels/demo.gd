extends Node



func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_physical_key_pressed(KEY_F):
		print("dash FF ")
		
	if Input.is_action_pressed("dash")
