extends Node2D
class_name Grid

## Class that represents the grid on a map
##
## This class represents a collection of cells
## on the map as a 2D array of cells

# Grid information
## Height of the map
export(int) var height
## Width of the map
export(int) var width
## List of all player (blue) units
var player_units
## List of all enemy (red) units
var enemy_units
## List of all ally (green) units
var ally_units
## List of all NPC (yellow) units
var npc_units
## Array of cells
var grid = []

# Signal
signal mapInformationLoaded

# Called when the node enters the scene tree for the first time.
func _ready():
	
	_setup_map_information()
	_setup_grid()
	print(grid)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

## Sets up the information of the map
func _setup_map_information() -> void:
	# ...
	pass
#	BattlefieldInfo.current_level = self
#	BattlefieldInfo.music_player.get_node("AllyLevel").volume_db = 0
#	BattlefieldInfo.victory_text = self.get_meta("Victory_Condition")
	
## Sets up the grid structure
func _setup_grid() -> void:
	
	# Create the array
	# Start 2D Array
	for i in width:
		grid.append([])
		for j in height:
			grid[i].append(Cell.new())
			
	# TODO: This node will eventually become a tool script
	# To set up the grid, the script will need to
	# initialize the grid with cells, each knowing their position and being of "plain" type
	# Then draw borders around each cell to make them clearer in the editor
	# Eventually allow for terrain editing and placing units on the map
			
## Sets up the information for each cell in the grid
func _setup_grid_cells() -> void:
	
	var cellInfoNode = $"CellInfo"
	for cellInfo in cellInfoNode.get_children():
		var mapCell = Cell.instance()
		var mapCellPosition = Vector2(cellInfo.position.x / Cell.CELL_SIZE, cellInfo.position.y / Cell.CELL_SIZE)
		
	

## Gets a string representation of this object
func _to_string():
	pass
