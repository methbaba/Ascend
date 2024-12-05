extends  Node2D



@export var animation: AnimatedSprite2D
@export var overhead_text:Label 
@export var text:String="press E"
var is_looted:bool = false 
@export var trigger_area:Area2D
@export var chest_items:Array[PackedScene]
func _ready() -> void:
	overhead_text.visible=false
	overhead_text.text=text
	trigger_area.body_entered.connect(on_enter)
	is_looted =false


func on_enter(body:Node)->void:
	
	if body.name == "player" and !is_looted:
		overhead_text.visible=true
		if Input.is_action_just_pressed("interact"):
			is_looted=true
			for items in chest_items:
				var item = items.instantiate()
				add_child(item)
