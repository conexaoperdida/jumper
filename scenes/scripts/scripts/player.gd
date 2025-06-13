extends KinematicBody2D

export var gravity = 900
export var jump_force = -400
var velocity = Vector2.ZERO

func _physics_process(delta):
    velocity.y += gravity * delta

    if Input.is_action_just_pressed("jump"):
        velocity.y = jump_force

    velocity = move_and_slide(velocity, Vector2.UP)
