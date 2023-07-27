import 'package:flutter/material.dart';
import 'package:pluto_layout/pluto_layout.dart';

class CustomExTabItem extends PlutoLayoutTabItem {
  CustomExTabItem({
    required final Object id,
    required final String title,
    final Widget? icon,
    final Widget? tabViewWidget,
    final PlutoLayoutTabItemSizeResolver sizeResolver =
        const PlutoLayoutTabItemSizeFlexible(),
    final bool showRemoveButton = false,
    final bool enabled = false,
  }) : super(
          id: id,
          title: title,
          icon: icon,
          tabViewWidget: tabViewWidget,
          sizeResolver: sizeResolver,
          showRemoveButton: showRemoveButton,
          enabled: enabled,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.teal)),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.teal,
          fontSize: 36,
        ),
      ),
    );
  }
}
