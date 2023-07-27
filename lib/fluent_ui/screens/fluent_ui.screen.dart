import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:get/get.dart';
import 'package:test/fluent_ui/theme.controller.dart';
import 'package:test/fluent_ui/themes.dart';
import 'package:test/fluent_ui/widgets/main.widget.dart';

class FluentUiScreen extends HookWidget {
  const FluentUiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());

    var currentTheme = useState<FluentThemeData>(defaultTheme);

    void setTheme(FluentThemeData theme) {
      currentTheme.value = theme;
    }

    useEffect(() {
      print(currentTheme.value);
      return null;
    }, [currentTheme]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Switcher'),
        backgroundColor: currentTheme.value.scaffoldBackgroundColor,
      ),
      body: MainWidget(currentTheme: currentTheme.value, onClick: setTheme),
    );
  }
}
