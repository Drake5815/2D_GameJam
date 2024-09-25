extends CharacterBody2D

@export var SPEED = 200.0
@export var DRAG = 1.0
@export var JUMP_VELOCITY = 400.0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y -= JUMP_VELOCITY
	# Constant Speed reduced by drag
	velocity.x += (SPEED - DRAG) * delta
	#print(velocity.x)
	# Smooth Movement
	move_and_slide()

func _on_water_body_entered(body: Node2D) -> void:
	# Destroy Player
	queue_free()
	# Change the Scene
	SceneSwitcher.switch_scene("res://tscn/UI/losing_scene.tscn")
	print("Entered Water")

func _on_window_body_entered(body: Node2D) -> void:
	# Change the Scene
	print("Entered Window")
