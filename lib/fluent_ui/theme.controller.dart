import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import 'package:test/fluent_ui/themes.dart';

class ThemeController extends GetxController {
  Rx<FluentThemeData> currentTheme = defaultTheme.obs;

  void setTheme(FluentThemeData theme) {
    currentTheme.value = theme;
    update();
  }
}
