@tool
extends Node

@export var map_size: Vector2i = Vector2i(110, 60)
@export var world_seed: String = "Hello Godot!"
@export var fractal_octaves: int = 4
@export var fractal_gain: float = 0.5
@export var fractal_lacunarity: float = 1
@export var noise_threshold: float = 0.2
@export var fractal_weighted_strength: float = 0.1
@export var frequency: float = 0.1

@export var generate_tiles:bool =false

var tile_map : TileMapLayer
var simplex_noise: FastNoiseLite = FastNoiseLite.new()

var map: Array[Vector2i]

func _ready():
	
		self.tile_map = get_parent() as TileMapLayer
		clear()
		generate()
	
func _process(delta: float) -> void:
	if Engine.is_editor_hint():
		if generate_tiles:
			print("hello")
			clear()
			generate()
			generate_tiles=false
		
	
		
		
		
		
func clear():
	self.tile_map.clear()
	
func generate():
	self.simplex_noise.noise_type = FastNoiseLite.TYPE_SIMPLEX_SMOOTH
	self.simplex_noise.seed = self.world_seed.hash()
	self.simplex_noise.fractal_octaves = self.fractal_octaves
	self.simplex_noise.fractal_gain = self.fractal_gain
	self.simplex_noise.fractal_lacunarity = self.fractal_lacunarity
	self.simplex_noise.fractal_weighted_strength = self.fractal_weighted_strength
	self.simplex_noise.frequency = self.frequency
	
	map.append(Vector2i(0, 0))
	for x in range(-self.map_size.x / 2, self.map_size.x / 2):
		for y in range(-self.map_size.y / 2, self.map_size.y / 2):
			if self.simplex_noise.get_noise_2d(x, y) < self.noise_threshold:
				map.append(Vector2i(x, y))
	
	_set_autotile()

func _set_autotile():
	tile_map.set_cells_terrain_connect( map, 0, 0, false)
