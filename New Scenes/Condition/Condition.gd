class_name Condition
extends Resource

## Superclass for victory and defeat conditions
## This should allow for more flexibility
## when creating new levels
## However, I do worry that this may introduce
## higher levels of coupling

enum condition {
	ROUT,
	KILL,
	SURVIVE,
	ESCAPE
}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _check_condition():
	print("Condition function should be overwritten")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
