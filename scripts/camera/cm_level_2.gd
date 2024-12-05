extends Node


@export var zone_1_cam : PhantomCamera2D
@export var zone_2_cam : PhantomCamera2D
@export var zone_3_cam : PhantomCamera2D
@export var zone_4_cam : PhantomCamera2D
@export var zone_5_cam : PhantomCamera2D
@export var zone_6_cam : PhantomCamera2D
@export var zone_7_cam : PhantomCamera2D
@export var zone_8_cam : PhantomCamera2D
@export var zone_9_cam : PhantomCamera2D
@export var zone_10_cam : PhantomCamera2D
@export var zone_11_cam : PhantomCamera2D
@export var zone_12_cam : PhantomCamera2D


func _on_zone_1_body_entered(body: Node2D) -> void:
	if body.name =="player":
		zone_1_cam.set_priority(2)


func _on_zone_2_body_entered(body: Node2D) -> void:
	if body.name =="player":
		zone_2_cam.set_priority(2)


func _on_zone_2_body_exited(body: Node2D) -> void:
	if body.name =="player":
		zone_2_cam.set_priority(0)


func _on_zone_1_body_exited(body: Node2D) -> void:
	if body.name =="player":
		zone_1_cam.set_priority(0)


func _on_zone_3_body_entered(body: Node2D) -> void:
	if body.name =="player":
		zone_3_cam.set_priority(2)


func _on_zone_3_body_exited(body: Node2D) -> void:
	if body.name =="player":
		zone_3_cam.set_priority(0)




func _on_zone_4_body_entered(body: Node2D) -> void:
	if body.name =="player":
		zone_4_cam.set_priority(4)


func _on_zone_4_body_exited(body: Node2D) -> void:
	if body.name =="player":
		zone_4_cam.set_priority(0)
