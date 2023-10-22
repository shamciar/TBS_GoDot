class_name Weapon
extends Resource

enum WieldType {
	SINGLE,
	DUAL,
	TWO
}

enum ScalingType {
	PHYS,
	MAG,
	HYB,
	DEX,
	PDEX,
	MDEX,
	INT,
	WIS,
}

export(Resource) var type

# Information
export(String) var name
export(String) var description

# Weapon Stats
export(int) var might
export(int) var hit
export(int) var crit
export(int) var weight
export(int) var min_range
export(int) var max_range
export(int) var worth
export(int) var sort
export(ScalingType) var scale

# PRF export variable

export(Resource) var sprite

export(Array) var bonuses
