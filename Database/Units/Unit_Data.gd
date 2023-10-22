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
export(Resource) var stat_increases

# Unit Knowledge
export(Array) var available_classes
export(Array) var mastered_weapons
# Class mastery status
# Weapon Ranks - This needs to be another dictionary
# Learned CAs
# Learned Spells
# Learned Skills

# Inventory Status
# Current Equipped Weapon
# Current Weapon Inventory
# Current Item Inventory
# Current Equipment Inventory
# Current Equipped Combat Arts
# Current Equipped Spells
# Current Equipped Passive Skills
