class_name ClassData
extends Resource

# Information
export(String) var title
export(String) var description
export(Resource) var weapon
export(Resource) var parallel_class

# Visuals
# Map Sprite
# Combat Spritesheet

# Combat Data
export(Resource) var base_stats
# Mastery bonuses
# Currently only applicable to promoted classes
# But can be edited here
export(Resource) var mastery_bonuses

# Promotions array
# Normally is one or two
export(Array) var promotions

# Prerequisite class(es)
export(Array) var prerequisites

# Something for skills
# Could be like awakening, where you get two per class
