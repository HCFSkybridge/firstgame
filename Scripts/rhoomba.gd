extends Sprite



func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.position = Vector2(20,20)
