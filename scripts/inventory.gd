extends Node

@onready var rich_text_label: RichTextLabel = $"../CanvasLayer/Control/TextureRect/RichTextLabel"

var coins = 0

func _ready() -> void:
	SignalManager.coin_received.connect(changeCoins)

func changeCoins(coinValue):
	coins +=coinValue
	rich_text_label.text =str(coins)
	
	
	
