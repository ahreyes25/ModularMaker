/// @parma sprite_index

var _sprite = argument0;

return abs(sprite_get_bbox_left(_sprite) - sprite_get_bbox_right(_sprite));