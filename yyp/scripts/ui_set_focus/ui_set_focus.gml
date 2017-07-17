///@func ui_set_focus([_id])
///@desc set / clear the UI's focus
///@param {Real} [_id]  the instance to set focus of, `undefined` or `noone`, optional, clears if not passed
gml_pragma("forceinline");
var _id = argument_count > 0 ? argument[0] : noone;
if (!is_real(_id) || !instance_exists(_id)) _id = noone;
with(UI) Focus = _id;