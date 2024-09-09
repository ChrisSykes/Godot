extends RigidBody2D

signal ball_left_screen


var velocity = Vector2(400,400)

func _physics_process(delta):		
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	 
	get_tree().quit()
