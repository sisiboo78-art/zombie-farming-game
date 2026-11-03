extends Resource
class_name Item

@export var name: string
@expoer_enum("Tool","food","block") var type: string
@export var inv_icon: Texture2D
@export var stack_amnt: int
@export var item_path: string
