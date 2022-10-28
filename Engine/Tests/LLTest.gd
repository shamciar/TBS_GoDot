extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var ll = LinkedList.new()
	print("Created Linked List:")
	
	ll.push_front(0) # 0
	ll.push_front(-1) # -1, 0
	ll.push_back(1) # -1, 0, 1
	ll.push_front(-2) # -2, -1, 0, 1
	print(ll.pop_front()) # -1, 0, 1
	print(ll.pop_back()) # -1, 0
	ll.insert(-0.5, 1) # -1, -0.5, 0
	ll.insert(-40, -1) # -40, -1, -0.5, 0
	ll.insert(50, 35) # -40, -1, -0.5, 0, 50
	ll.insert(25, 4) # -40, -1, -0.5, 0, 25, 50
	ll.insert(-10, 1) # -40, -10, -1, -0.5, -0, 25, 50
	print(ll.remove(3)) # -40, -10, -1, -0, 25, 50
	print(ll._to_string())
	
	print("Getting")
	print(ll.get(2)) #-1
	print(ll.get(0)) #-40
	print(ll.get(42512351)) #50
	
	print("Setting")
	print(ll.set(20, 4))
	print(ll._to_string())
	print(ll.contains (20)) # true
	print(ll.contains (25)) # false
	print(ll.contains ("osivjiosdv")) # false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
