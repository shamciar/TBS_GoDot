class_name LinkedList
extends Reference

## Implementation of a Linked List
##
## This class represents a collection of objects
## by chaining their references together.
## I chose to implement this to greatly speed up
## pathfinding and AI times compared to arrays
## This class can also be used to give units individual turns
## instead of team-based phases.
## The list keeps track of the head node
## As of now, I do not see much performance improvement
## needed to necesitate using a tail node
## I am using a dummy node to minimize the need of reattaching
## head references. This means that the first item in the list
## is actually head.next

# Information
## Dummy node at the start of the list
var _head = LinkedListNode.new(null)
## Size of the list
var _len : int = 0

## Get the size of the list
func size() -> int:
	return _len
	
## Add data to the beginning of an empty list
func _add_empty(data):
	_head.next = LinkedListNode.new(data)
	

## Add data to the front of a list
func push_front(data):
	
	if(_len == 0):
		_add_empty(data)
	else:
		# If there is something in the list,
		# scoot everything down
		# First, create a new head.next
		# Then point the new head.next to the original head.next
		# Then set the head dummy.next to the new node
		var new_head = LinkedListNode.new(data)
		new_head.next = _head.next
		_head.next = new_head
		
	_len += 1
	
## Add data to the back of the list
func push_back(data):
	
	if(_len == 0):
		_add_empty(data)
	else:
		# Here, we are looping through the whole list
		# until we reach the end. Then, we update the pointer
		var _current = _head.next
		while (_current.next):
			_current = _current.next
			
		_current.next = LinkedListNode.new(data)
		
	_len += 1

## Remove data from the front of the list
func pop_front():
	
	if(_len == 0):
		return null
	
	# Here, we get a reference to the head.next node
	# Then we update the head reference to make it point to the next node
	# Then unlink the original head node
	# Then return the data stored in the node
	var ret = _head.next
	_head.next = ret.next
	ret.next = null
	_len -= 1
	return ret.data
	
## Remove data from the back of the list
func pop_back():
	
	if(_len == 0):
		return null
		
	
	# Here, we are checking two nodes ahead
	# If the next node's next node is null, we know
	# that the next node is the last node in the list
	# and we want to unlink the next node from the current node
	# simply put, we are actually finding the next-to-last node
	# Note that the use of a dummy node removes the need for a
	# special case when the list has one element in it
	var _current = _head
	while(_current.next.next):
		_current = _current.next
		
	# Once we find the next-to-last node,
	# Get the next node
	# Remove the reference to the next node
	# and return its data
	var ret = _current.next
	_current.next = null
	_len -= 1
	return ret.data
	
## Get data from the front of the list
func peek_front():
	
	if(_len == 0):
		return null
	
	return _head.next.data
	
## Get data from the back of the list
func peek_back():
	
	if(_len == 0):
		return null
		
	var _current = _head.next
	while(_current.next):
		_current = _current.next
		
	return _current.data
		

## Insert data at a specific index in the list
func insert(data, index):
	
	if(index >= _len):
		push_back(data)
	elif(index <= 0):
		push_front(data)	
	else:
		
		# Loop through the list for as many times as we need
		# Stop at the position before we want to insert
		# Note that without the dummy node, our stopping index
		# would actually need to be index - 1
		var _current = _head
		for i in range(index):
			_current = _current.next
		
		# Create the new node and update pointers
		var new = LinkedListNode.new((data))
		new.next = _current.next
		_current.next = new
		_len += 1
	
## Remove data at a specified index
func remove(index):
	
	if(index >= _len - 1):
		return pop_back()
	elif(index <= 0):
		return pop_front()
	else:
		
		# Loop through until we're one position
		# before the node we want to remove
		# Note that without the dummy node, our stopping index
		# would actually need to be index - 1
		var _current = _head
		for i in range(index):
			_current = _current.next
			
		var ret = _current.next
		_current.next = ret.next
		ret.next = null
		_len -= 1
		return ret.data
			
	
## Get data at the specified index
func get(index):
	
	if(index >= _len - 1):
		return peek_back()
	if(index <= 0):
		return peek_front()
		
	var _current = _head.next
	for i in range(index):
		_current = _current.next
	
	return _current.data
	
## Set data at the specified index
func set(data, index):
	
	if(index >= _len):
		return set(data, _len - 1)
	if(index <= 0):
		return set(data, 0)
		
	var _current = _head.next
	for i in range(index):
		_current = _current.next
		
	var ret = _current.data
	_current.data = data
	return ret
	
func _to_string() -> String:
	var _current = _head.next
	var string = "Length: " + str(_len) + "\n"
	while(_current):
		string += _current._to_string() + "\n"
		_current = _current.next
	return string
		
	

# Inner Class
class LinkedListNode:
	extends Reference
	
	## Linked List Node
	##
	## This class represents a node of
	## data in a linked list.
	## It keeps track of the next object in the chain
	## I chose not to track previous items as that
	## would be redundant and create more references
	## to track
	
	## Node data
	var data
	## Next node in the list
	var next : LinkedListNode = null
	
	func _init(data):
		self.data = data
		
	func _to_string():
		return str(data)
