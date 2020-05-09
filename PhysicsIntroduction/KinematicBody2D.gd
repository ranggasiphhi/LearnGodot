extends KinematicBody2D

var velocity = Vector2(250, 250)

func _physics_process(delta):
	var collision_info = move_and_collide(velocity * delta);
	if collision_info:
		var collision_point = collision_info.position
		velocity = velocity.bounce(collision_info.normal)
