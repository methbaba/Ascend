
extends  Node

@export var zone_1_area : Area2D
@export var zone_1_cam : PhantomCamera2D
@export var zone_2_area : Area2D
@export var zone_2_cam : PhantomCamera2D
@export var zone_3_area : Area2D
@export var zone_3_cam : PhantomCamera2D
@export var zone_4_area : Area2D
@export var zone_4_cam : PhantomCamera2D
@export var zone_5_area : Area2D
@export var zone_5_cam : PhantomCamera2D
@export var zone_6_area : Area2D
@export var zone_6_cam : PhantomCamera2D
@export var zone_7_area : Area2D
@export var zone_7_cam : PhantomCamera2D
@export var zone_8_area : Area2D
@export var zone_8_cam : PhantomCamera2D
@export var zone_9_area : Area2D
@export var zone_9_cam : PhantomCamera2D
@export var zone_10_area : Area2D
@export var zone_10_cam : PhantomCamera2D
@export var zone_11_area : Area2D
@export var zone_11_cam : PhantomCamera2D
@export var zone_12_area : Area2D
@export var zone_12_cam : PhantomCamera2D
@export var zone_13_area : Area2D
@export var zone_13_cam : PhantomCamera2D
@export var zone_14_area : Area2D
@export var zone_14_cam : PhantomCamera2D
@export var zone_15_area : Area2D
@export var zone_15_cam : PhantomCamera2D
@export var zone_16_area : Area2D
@export var zone_16_cam : PhantomCamera2D
@export var zone_17_area : Area2D
@export var zone_17_cam : PhantomCamera2D
@export var zone_18_area : Area2D
@export var zone_18_cam : PhantomCamera2D



func on_enter_1(body: Node2D) -> void:
	if body.name=="player":
		zone_1_cam.set_priority(2)



func on_enter_2(body: Node2D) -> void:
	if body.name=="player":
		zone_2_cam.set_priority(2)

func on_enter_3(body: Node2D) -> void:
	if body.name=="player":
		zone_3_cam.set_priority(2)

func on_enter_4(body: Node2D) -> void:
	if body.name=="player":
		zone_4_cam.set_priority(2)

func on_enter_5(body: Node2D) -> void:
	if body.name=="player":
		zone_5_cam.set_priority(2)

func on_enter_6(body: Node2D) -> void:
	if body.name=="player":
		zone_6_cam.set_priority(2)

func on_enter_7(body: Node2D) -> void:
	if body.name=="player":
		zone_7_cam.set_priority(2)

func on_enter_8(body: Node2D) -> void:
	if body.name=="player":
		zone_8_cam.set_priority(2)

func on_enter_9(body: Node2D) -> void:
	if body.name=="player":
		zone_9_cam.set_priority(2)

func on_enter_10(body: Node2D) -> void:
	if body.name=="player":
		zone_10_cam.set_priority(2)

func on_enter_11(body: Node2D) -> void:
	if body.name=="player":
		zone_11_cam.set_priority(2)

func on_enter_12(body: Node2D) -> void:
	if body.name=="player":
		zone_12_cam.set_priority(2)

func on_enter_13(body: Node2D) -> void:
	if body.name=="player":
		zone_13_cam.set_priority(2)

func on_enter_14(body: Node2D) -> void:
	if body.name=="player":
		zone_14_cam.set_priority(2)

func on_enter_15(body: Node2D) -> void:
	if body.name=="player":
		zone_15_cam.set_priority(2)

		
func on_enter_16(body: Node2D) -> void:
	if body.name=="player":
		zone_16_cam.set_priority(2)

func on_enter_17(body: Node2D) -> void:
	if body.name=="player":
		zone_17_cam.set_priority(2)
		
func on_enter_18(body: Node2D) -> void:
	if body.name=="player":
		zone_18_cam.set_priority(2)
		
		
		

func on_exit_1(body: Node2D) -> void:
	if body.name=="player":
		zone_1_cam.set_priority(0)



func on_exit_2(body: Node2D) -> void:
	if body.name=="player":
		zone_2_cam.set_priority(0)

func on_exit_3(body: Node2D) -> void:
	if body.name=="player":
		zone_3_cam.set_priority(0)

func on_exit_4(body: Node2D) -> void:
	if body.name=="player":
		zone_4_cam.set_priority(0)

func on_exit_5(body: Node2D) -> void:
	if body.name=="player":
		zone_5_cam.set_priority(0)

func on_exit_6(body: Node2D) -> void:
	if body.name=="player":
		zone_6_cam.set_priority(0)

func on_exit_7(body: Node2D) -> void:
	if body.name=="player":
		zone_7_cam.set_priority(0)

func on_exit_8(body: Node2D) -> void:
	if body.name=="player":
		zone_8_cam.set_priority(0)

func on_exit_9(body: Node2D) -> void:
	if body.name=="player":
		zone_9_cam.set_priority(0)

func on_exit_10(body: Node2D) -> void:
	if body.name=="player":
		zone_10_cam.set_priority(0)

func on_exit_11(body: Node2D) -> void:
	if body.name=="player":
		zone_11_cam.set_priority(0)

func on_exit_12(body: Node2D) -> void:
	if body.name=="player":
		zone_12_cam.set_priority(0)

func on_exit_13(body: Node2D) -> void:
	if body.name=="player":
		zone_13_cam.set_priority(0)

func on_exit_14(body: Node2D) -> void:
	if body.name=="player":
		zone_14_cam.set_priority(0)

func on_exit_15(body: Node2D) -> void:
	if body.name=="player":
		zone_15_cam.set_priority(0)
		
func on_exit_16(body: Node2D) -> void:
	if body.name=="player":
		zone_16_cam.set_priority(0)


func on_exit_17(body: Node2D) -> void:
	if body.name=="player":
		zone_17_cam.set_priority(0)
		
func on_exit_18(body: Node2D) -> void:
	if body.name=="player":
		zone_18_cam.set_priority(0)
