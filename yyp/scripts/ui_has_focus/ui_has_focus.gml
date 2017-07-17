///@func ui_has_focus([_id])
///@desc return wheter an instance has UI focus, or the focused instance if none passed
///@param {Real} [_id]  instance id
///@returns {Boolean|Real} true / false if `_id` is focused, `id` or `undefined` if none passed
gml_pragma("forceinline");
if (argument_count == 0)
  with(UI) return Focus;

var _id = argument[0];
if (_id != noone && _id != undefined) {
  with(UI) return _id == Focus;
}

return false;