class_name EquipmentItem
extends Node

var rarity: float
var rarityType: Consts.Rarities
var level: int
var id: int
@export var itemName: String

func _init(_name: String):
	id = UniqueIdManager.get_unique_id()
	var rarities = _assign_rarity()
	rarity = rarities[0]
	rarityType = rarities[1]
	level = _assign_rand_level()
	itemName = _name

func _assign_rarity() -> Array:
	var randomNum = randf()
	if randomNum > 0.95: # Legendary 5%
		return [Consts.RarityValues[Consts.Rarities.LEGENDARY], Consts.Rarities.LEGENDARY]
	elif randomNum > 0.85: # Mythic 10%
		return [Consts.RarityValues[Consts.Rarities.MYTHIC], Consts.Rarities.MYTHIC]
	elif randomNum > 0.7: # Rare 15%
		return [Consts.RarityValues[Consts.Rarities.RARE], Consts.Rarities.RARE]
	elif randomNum > 0.4: # Special 30%
		return [Consts.RarityValues[Consts.Rarities.SPECIAL], Consts.Rarities.SPECIAL]
	else: # Common 40%
		return [Consts.RarityValues[Consts.Rarities.COMMON], Consts.Rarities.COMMON]

func _assign_rand_level():
	var randomNum = randf()
	if randomNum > 0.9: # Lucky Bastard
		return 3
	if randomNum > 0.6: # Semi-lucky Bastard
		return 2
	else: # Has the some luck as me
		return 1

func _ready():
	pass # Replace with function body.


	
