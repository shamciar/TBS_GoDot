class_name BaseStatContainer
extends Resource

## Resource implementation of a base stats container
## I am choosing to do this over individual values
## since these values can and will change during runtime

enum StatType {
	VIT,
	TEC,
	STR,
	MAG,
	BLD,
	INT,
	DEX,
	AGI,
	WIS,
	LCK
}

# This probably isn't the best way to implement this
# If anything, I can also resource-ify this
export(Dictionary) var stats = {
	StatType.VIT : 0,
	StatType.TEC : 0,
	StatType.STR : 0,
	StatType.MAG : 0,
	StatType.BLD : 0,
	StatType.INT : 0,
	StatType.DEX : 0,
	StatType.AGI : 0,
	StatType.WIS : 0,
	StatType.LCK : 0,
}
