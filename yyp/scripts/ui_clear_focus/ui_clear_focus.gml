///@func ui_clear_focus([_id])
///@desc clears the UI focus **only** if the focus is `_id`, unless none passed
///@param {Real} [_id]  focused `id` to clear, or none, and will clear.
gml_pragma("forceinline");
if (argument_count > 0) {
  var _id = argument[0];
  with (UI) if (Focus == _id) Focus = noone;
} else {
  with (UI) Focus = noone;
}