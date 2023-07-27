import 'package:fluent_ui/fluent_ui.dart';
import 'package:test/fluent_ui/themes.dart';

class MainWidget extends StatelessWidget {
  final FluentThemeData currentTheme;
  final Function onClick;
  const MainWidget(
      {super.key, required this.currentTheme, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FilledButton(
              style: ButtonStyle(
                  backgroundColor: ButtonState.all(currentTheme.menuColor)),
              onPressed: () {
                onClick(blueTheme);
              },
              child: Text(
                'Blue Theme',
                style: TextStyle(color: currentTheme.accentColor),
              ),
            ),
            FilledButton(
              style: ButtonStyle(
                  backgroundColor: ButtonState.all(currentTheme.menuColor)),
              onPressed: () {
                onClick(purpleTheme);
              },
              child: Text(
                'Purple Theme',
                style: TextStyle(color: currentTheme.accentColor),
              ),
            ),
            FilledButton(
              style: ButtonStyle(
                  backgroundColor: ButtonState.all(currentTheme.menuColor)),
              onPressed: () {
                onClick(defaultTheme);
              },
              child: Text(
                'Default Theme',
                style: TextStyle(color: currentTheme.accentColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
