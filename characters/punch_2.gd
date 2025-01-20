@tool
extends BaseAttackStandard


func _move_setup():
	animation = "kick1"
	startup_frames = 6
	active_frames = 3
	recovery_frames = 15
	damage = 10
	knockback_power = 2
	make_standard_attack()


func _step():
	super._step()
	if get_current_phase_name() == "recovery":
		if root.input("attack", "just_pressed"):
			change_state("Punch3")


func _exit(next_state):
	root.animplayer.stop()
	super._exit(next_state)
