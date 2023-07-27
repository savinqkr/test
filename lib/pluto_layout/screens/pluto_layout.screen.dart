import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pluto_layout/pluto_layout.dart';
import 'package:test/pluto_layout/widgets/custom_ex_tab_item.widget.dart';

class PlutoLayoutScreen extends StatelessWidget {
  const PlutoLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PlutoLayout(
        shortcuts: {
          LogicalKeySet(LogicalKeyboardKey.escape):
              PlutoLayoutActions.hideAllTabView(),
          LogicalKeySet(LogicalKeyboardKey.alt, LogicalKeyboardKey.digit1):
              PlutoLayoutActions.rotateTabView(
            PlutoLayoutId.left,
          ),
          LogicalKeySet(LogicalKeyboardKey.alt, LogicalKeyboardKey.digit2):
              PlutoLayoutActions.rotateTabView(
            PlutoLayoutId.right,
          ),
          LogicalKeySet(LogicalKeyboardKey.alt, LogicalKeyboardKey.arrowUp):
              PlutoLayoutActions.increaseTabView(),
          LogicalKeySet(LogicalKeyboardKey.alt, LogicalKeyboardKey.arrowDown):
              PlutoLayoutActions.decreaseTabView(),
        },
        body: const PlutoLayoutContainer(
          child: Text('Body container'),
        ),
        top: PlutoLayoutContainer(
          child: PlutoLayoutTabs(
            items: [
              PlutoLayoutTabItem(
                id: 'top1',
                title: 'top1',
                tabViewWidget: const Text('top1'),
              ),
              PlutoLayoutTabItem(
                id: 'top2',
                title: 'top2',
                tabViewWidget: const Text('top2'),
              ),
            ],
          ),
        ),
        left: PlutoLayoutContainer(
          child: PlutoLayoutTabs(
            items: [
              CustomExTabItem(
                id: 'left1',
                title: 'left1',
                tabViewWidget: const Text('left1'),
              ),
              CustomExTabItem(
                id: 'left2',
                title: 'left2',
                tabViewWidget: const Text('left2'),
              ),
            ],
          ),
        ),
        // ----------------------------------------------------------------
        // -
        // -----------------------------------------------------------------
        // right: PlutoLayoutContainer(
        //   child: PlutoLayoutTabs(
        //     items: const [
        //       CustomImpleTabItem(
        //         enabled: true,
        //         label: Padding(
        //           padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        //           child: Text('RIGHT1'),
        //         ),
        //       ),
        //       CustomImpleTabItem(
        //         enabled: false,
        //         label: Padding(
        //           padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        //           child: Text('RIGHT2'),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        bottom: PlutoLayoutContainer(
          child: PlutoLayoutTabs(
            items: [
              PlutoLayoutTabItem(
                id: 'bottom1',
                title: 'bottom1',
                tabViewWidget: const Text('bottom1'),
              ),
              PlutoLayoutTabItem(
                id: 'bottom2',
                title: 'bottom2',
                tabViewWidget: const Text('bottom2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
