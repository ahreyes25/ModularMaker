/// @parma sprite_index

var _sprite = argument0;

return abs(sprite_get_bbox_top(_sprite) - sprite_get_bbox_bottom(_sprite));