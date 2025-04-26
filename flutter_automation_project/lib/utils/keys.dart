// lib/utils/keys.dart
import 'package:flutter/widgets.dart';

abstract class AppKeys {
  // ─── Home Screen ───────────────────────────────────────────────────────────────
  static const homeScreenList            = Key('home_screen_list');
  static const homeScreenTitle           = Key('home_screen_title');
  static const homeScreenSearchField     = Key('home_screen_search_field');
  static const homeScreenSearchIcon      = Key('home_screen_search_icon');

  // Home Screen Tiles
  static const checkboxSelectionTile     = Key('checkbox_selection_tile');
  static const radioSelectionTile        = Key('radio_selection_tile');
  static const dropdownSelectionTile     = Key('dropdown_selection_tile');
  static const sliderSelectionTile       = Key('slider_selection_tile');
  static const toggleSelectionTile       = Key('toggle_selection_tile');
  static const datePickerSelectionTile   = Key('date_picker_selection_tile');

  // ─── Checkbox Selection Screen ────────────────────────────────────────────────
  static const checkboxSelectionScreen   = Key('checkbox_selection_screen');
  static const checkboxHeader            = Key('checkbox_header');      // ← new
  static const checkboxList              = Key('checkbox_list');        // ← new
  static const checkboxItem              = Key('checkbox_item');
  static const checkboxSelected          = Key('checkbox_selected');
  static const checkboxReset             = Key('checkbox_reset');

  // ─── Radio Selection Screen ───────────────────────────────────────────────────
  static const radioSelectionScreen      = Key('radio_selection_screen');
  static const radioOption               = Key('radio_option');
  static const radioSelected             = Key('radio_selected');

  // ─── Dropdown Selection Screen ───────────────────────────────────────────────
  static const dropdownSelectionScreen   = Key('dropdown_selection_screen');
  static const dropdownButton            = Key('dropdown_button');
  static const dropdownItem              = Key('dropdown_item');
  static const dropdownSelected          = Key('dropdown_selected');

  // ─── Slider Selection Screen ─────────────────────────────────────────────────
  static const sliderSelectionScreen     = Key('slider_selection_screen');
  static const sliderWidget              = Key('slider_widget');
  static const sliderValueText           = Key('slider_value_text');

  // ─── Toggle Selection Screen ─────────────────────────────────────────────────
  static const toggleSelectionScreen     = Key('toggle_selection_screen');
  static const toggleSwitch              = Key('toggle_switch');
  static const toggleStatus              = Key('toggle_status');

  // ─── Date Picker Selection Screen ────────────────────────────────────────────
  static const datePickerSelectionScreen = Key('date_picker_selection_screen');
  static const datePickerButton          = Key('date_picker_button');
  static const datePickerDisplay         = Key('date_picker_display');
  static const datePickerClear           = Key('date_picker_clear');
}