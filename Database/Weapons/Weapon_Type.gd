class_name WeaponType
extends Resource


## Weapon color for WTA
# Right now I see no need to expand this into a custom resource
enum WeaponColor {
	RED,
	BLUE,
	GREEN,
	WHITE,
	BLACK,
	CLEAR
}

export(WeaponColor) var color
export(Resource) var bg_sprite
