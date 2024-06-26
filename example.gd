extends Node3D

var flare_timer = 0

@onready var player = $Player

func _physics_process(delta):
	get_tree().call_group("enemy", "update_target_location", player.global_transform.origin)

func _process(delta):
	if flare_timer > 0:
		flare_timer += 1
	if flare_timer == 5:
		$Player/layer1/Grab_layer1/Grab_layer2/Grab_layer3/RootNode/right_hands/Hand_Flare/flare.reparent($flare_container)
	if flare_timer == 10:
		summon()
		flare_timer = 0

func flare_spawned():
	flare_timer = 1

func summon():
	get_tree().call_group("flare", "flare_update")

func check_socket():
	pass

func reciever_active():
	pass

func battery_rev_complete():
	check_socket()

func blue_panel_finish():
	pass
func green_panel_finish():
	pass

func check_panels():
	pass

func lever_flipped_up():
	pass
func lever_flipped_down():
	pass

func keypad_finish():
	pass

func vhs_finished():
	pass
