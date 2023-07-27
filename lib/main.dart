import 'package:fluent_ui/fluent_ui.dart';
import 'package:test/fluent_ui/screens/fluent_ui.screen.dart';

import 'package:get/get.dart';
import 'package:test/fluent_ui/theme.controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // -----------------------------------------------------------
  // PLUTO_LAYOUT
  // -----------------------------------------------------------
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: ThemeData(
  //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  //       useMaterial3: true,
  //     ),
  //     home: const PlutoLayoutScreen(),
  //   );
  // }

  // -----------------------------------------------------------
  // FLUENT_UI ( theme )
  // -----------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());

    return FluentApp(
      title: 'Flutter Demo',
      theme: themeController.currentTheme.value,
      home: const FluentUiScreen(),
    );
  }
}
