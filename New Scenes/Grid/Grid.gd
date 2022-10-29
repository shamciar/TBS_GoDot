extends Node2D
class_name Grid

## Class that represents the grid on a map
##
## This class represents a collection of cells
## on the map as a 2D array of cells

# Grid information
## Height of the map
var map_height: int
## Width of the map
var map_width: int
## Locations of all player (blue) units
var player_unit_locations
## Locations of all enemy (red) units
var enemy_unit_locations
## Locations of all ally (green) units
var ally_unit_location
## Locations of all NPC (yellow) units
var npc_unit_locations
## Array of cells
var grid = []

# Signal
signal mapInformationLoaded

# Called when the node enters the scene tree for the first time.
func _ready():
	
	_setup_map_information()
	_setup_grid()
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

## Sets up the information of the map
func _setup_map_information() -> void:
	# ...
	BattlefieldInfo.current_level = self
	BattlefieldInfo.music_player.get_node("AllyLevel").volume_db = 0
	BattlefieldInfo.victory_text = self.get_meta("Victory_Condition")
	
## Sets up the grid structure
func _setup_grid() -> void:
	
	# Get map dimensions
	map_height = self.get_meta("height")
	map_width = self.get_meta("width")
	
	# Create the array
	# Start 2D Array
	for i in map_width:
		grid.append([])
		for j in map_height:
			grid[i].append(0)
			
## Sets up the information for each cell in the grid
func _setup_grid_cells() -> void:
	
	var cellInfoNode = $"CellInfo"
	for cellInfo in cellInfoNode.get_children():
		var mapCell = Cell.instance()
		var mapCellPosition = Vector2(cellInfo.position.x / Cell.CELL_SIZE, cellInfo.position.y / Cell.CELL_SIZE)
		
	

## Gets a string representation of this object
func _to_string():
	pass
