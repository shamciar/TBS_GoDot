class_name UnitData
extends Resource

# Information
export(String) var name
export(String) var description
# Portrait
# Color palette

# Combat information
var current_class : int = 0 # Not exporting this since I don't think it's necessary
export var level : int = 1 # Need to find a way to cap
var current_exp : int = 0 # Find some way to increase exp needed per level
export(Resource) var stat_increases # List of stat increases held by the unit. Also base stats

# Unit Knowledge
export(Array) var available_classes
# Class mastery status - Array of classes (not indices!) and mastery level
# Weapon Ranks - This needs to be another dictionary
# Learned CAs
# Learned Spells
# Learned Skills

# Inventory Status
# Current Equipped Weapon (Make this the top weapon to keep the trade trick)
# Current Weapon Inventory
# Current Item Inventory
# Current Equipment Inventory
# Current Equipped Combat Arts
# Current Equipped Spells
# Current Equipped Passive Skills
