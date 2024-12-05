extends Panel


@export var item_slot:Sprite2D

func update (item :inv_item):
	if !item:
		item_slot.visible=false
	else:
		item_slot.visible=true
		item_slot.texture = item.sprite
