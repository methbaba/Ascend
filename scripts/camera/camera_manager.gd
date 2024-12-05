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

func _ready() -> void:
	
	
	if zone_1_area:
		zone_1_area.body_entered.connect(on_enter_1)
		zone_1_area.body_exited.connect(on_exit_1)
	if zone_2_area:
		zone_2_area.body_entered.connect(on_enter_2)
		zone_2_area.body_exited.connect(on_exit_2)
	if zone_3_area:
		zone_3_area.body_entered.connect(on_enter_3)
		zone_3_area.body_exited.connect(on_exit_3)
	if zone_4_area:
		zone_4_area.body_entered.connect(on_enter_4)
		zone_4_area.body_exited.connect(on_exit_4)
	if zone_5_area:
		zone_5_area.body_entered.connect(on_enter_5)
		zone_5_area.body_exited.connect(on_exit_5)
	if zone_6_area:
		zone_6_area.body_entered.connect(on_enter_6)
		zone_6_area.body_exited.connect(on_exit_6)
	if zone_7_area:
		zone_7_area.body_entered.connect(on_enter_7)
		zone_7_area.body_exited.connect(on_exit_7)
	if zone_8_area:
		zone_8_area.body_entered.connect(on_enter_8)
		zone_8_area.body_exited.connect(on_exit_8)
	if zone_9_area:
		zone_9_area.body_entered.connect(on_enter_9)
		zone_9_area.body_exited.connect(on_exit_9)
	if zone_10_area:
		zone_10_area.body_entered.connect(on_enter_10)
		zone_10_area.body_exited.connect(on_exit_10)
	if zone_11_area:
		zone_11_area.body_entered.connect(on_enter_11)
		zone_11_area.body_exited.connect(on_exit_11)
	if zone_12_area:
		zone_12_area.body_entered.connect(on_enter_12)
		zone_12_area.body_exited.connect(on_exit_12)
	if zone_13_area:
		zone_13_area.body_entered.connect(on_enter_13)
		zone_13_area.body_exited.connect(on_exit_13)
	if zone_14_area:
		zone_14_area.body_entered.connect(on_enter_14)
		zone_14_area.body_exited.connect(on_exit_14)
	if zone_15_area:
		zone_15_area.body_entered.connect(on_enter_15)
		zone_15_area.body_exited.connect(on_exit_15)
	if zone_16_area:
		zone_16_area.body_entered.connect(on_enter_16)
		zone_16_area.body_exited.connect(on_exit_16)
	if zone_17_area:
		zone_17_area.body_entered.connect(on_enter_17)
		zone_17_area.body_exited.connect(on_exit_17)
	if zone_18_area:
		zone_18_area.body_entered.connect(on_enter_18)
		zone_18_area.body_exited.connect(on_exit_18)



	
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
