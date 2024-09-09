extends CharacterBody2D


var speed = 300


func get_input():
	var direction := Input.get_axis("up", "down" )
	
	if direction:
		velocity.y = direction * speed
		#print("Key pressed")
		#print(velocity.y)
	else: 
		velocity.y = 0
		#print(velocity.y)

func _physics_process(_delta):
	get_input()
	move_and_slide()
