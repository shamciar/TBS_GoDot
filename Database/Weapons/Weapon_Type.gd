class_name WeaponType
extends Resource


## Weapon color for Fates/FEH style weapon triangle
# Right now I see no need to expand this into a custom resource
# Not using now, but I am leaving it in in case I change my mind again
enum WeaponColor {
	RED,
	BLUE,
	GREEN,
	WHITE,
	BLACK,
	CLEAR
}

enum WeaponType {
	SWORD,
	LANCE,
	AXE,
	BRAWL,
	DAGGER,
	BOW,
	STAFF,
	FAITH,
	REASON,
	ARCANE,
	STORM,
	NATURE,
	COSMIC
}

# For WTA.
# Currently only allowing for one strong type and one weak type
export(String) var name
export(WeaponType) var type
export(WeaponType) var strong_against
export(WeaponType) var weak_against
export(Resource) var type_sprite
