import 'package:fluent_ui/fluent_ui.dart';

final blueTheme = FluentThemeData(
  brightness: Brightness.light,
  accentColor: Colors.blue,
  menuColor: Colors.blue.lightest,
  scaffoldBackgroundColor: const Color.fromARGB(255, 6, 0, 87),
  // Define other properties of the theme as needed
);

final purpleTheme = FluentThemeData(
  brightness: Brightness.light,
  accentColor: Colors.purple,
  menuColor: Colors.purple.lightest,
  scaffoldBackgroundColor: const Color.fromARGB(255, 37, 0, 71),
);

final defaultTheme = FluentThemeData(
  brightness: Brightness.light,
  accentColor: Colors.teal,
  menuColor: Colors.teal.lightest,
  scaffoldBackgroundColor: const Color.fromARGB(255, 0, 48, 28),
);
