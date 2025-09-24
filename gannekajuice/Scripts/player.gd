extends CharacterBody3D

@export var forward_speed: float = 5.0   # Speed along Z-axis
@export var side_speed: float = 4.0      # Speed along X-axis

#var velocity: Vector3 = Vector3.ZERO

func _physics_process(delta: float) -> void:
	# Always move forward on Z-axis
	velocity.z = forward_speed

	# Left/Right movement with Arrow Keys
	var input_x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	velocity.x = input_x * side_speed

	# Apply movement
	move_and_slide()
