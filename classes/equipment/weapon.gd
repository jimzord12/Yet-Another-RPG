class_name Weapon
extends EquipmentItem

@export var physical_atk: float
@export var magical_atk: float
@export var weight: float
@export var crit_chance: float

var equipmentType := Consts.EquipmentTypes.WEAPON

func _init(p_atk: float, m_atk: float, _weight: float, _crit_chance: float):
	print("= Creating Weapon =")
	super("Simple Sword")
	physical_atk = p_atk * rarity
	magical_atk = m_atk * rarity
	weight = _weight
	crit_chance = _crit_chance * rarity
	
	print("Rarity Type: ", rarityType)
	print("Rarity %: ", rarity)
	print("Name: ", itemName)
	print("Created The Weapon #", id, ", P_ATK: ", physical_atk, ", M_ATK: ", magical_atk, ", WEIGHT: ", weight, ", CRIT: ", crit_chance)


func _on_button_pressed():
	pass # Replace with function body.
