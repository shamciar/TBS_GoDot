class_name ClassData
extends Resource

# Information
export(String) var title
export(String) var description
export(Array) var usable_weapons
export(Resource) var parallel_class

# Visuals
# Map Sprite
# Combat Spritesheet

# Combat Data
export(Resource) var base_stats
export(Resource) var max_stats

export(Resource) var growth_bonuses
export(Resource) var enemy_growths

# Promotions array
# Normally is one or two
export(Array) var promotions

# Prerequisite class(es)
export(Array) var prerequisites

# Something for skills
# Could be like awakening, where you get two per class
