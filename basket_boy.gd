extends Area2D


var screen_size
signal hit
@export var speed = 400
func start(pos):
	position = pos
	show()
	$CollisionShape2D.set_deferred("disabled", false)

func _ready() -> void:
	
	screen_size = get_viewport_rect() .size

# Called when the node enters the scene tree for the first time.
func _process(delta: float) -> void:
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
	
	


	# Replace with function body.


func _on_body_entered(body: Node2D) -> void:
	body.queue_free()
	
	
