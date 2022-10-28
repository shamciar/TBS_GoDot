class_name CellPriorityQueue

## Updated Priority Queue specifically for grid cells
## There is probably a better way to create a generic implementation,
## but this will do for now
## Now, instead of sorting every time we add a new object,
## We will instead add everything in sorted order
## I could have left this as an array, however given the nature of sorting
## and adding stuff to arrays, I chose to create a LinkedList for this

var queue : LinkedList = LinkedList.new()

func add_first(value):
	queue.push_front(value)

func add_last(value):
	queue.push_back(value)
	
func add_sorted(value):
	
	var index = _get_sorted_index(value)
	queue.insert(value, index)

func pop_front():
	return queue.pop_front()
	
func pop_last():
	return queue.pop_back()

func is_empty():
	return queue.size() == 0

func get_size():
	return queue.size()

func contains(value):
	return queue.contains(value)
	
func _get_sorted_index(value):
	
	for i in range(get_size()):
		if(value.get_fCost() < queue.get(i).get_fCost()):
			return i
			
	return get_size()
	

class CustomSorter:
	static func custom_sort(Cell_A, Cell_B):
		if Cell_A.get_fCost() < Cell_B.get_fCost():
			return true
		return false
