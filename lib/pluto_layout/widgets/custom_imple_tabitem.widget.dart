import 'package:flutter/material.dart';
import 'package:pluto_layout/pluto_layout.dart';

class CustomImpleTabItem extends StatelessWidget implements PlutoLayoutTabItem {
  final Widget label;
  @override
  final bool enabled;

  const CustomImpleTabItem(
      {super.key, required this.enabled, required this.label});

  @override
  PlutoLayoutTabItem copyWith(
      {Object? id,
      String? title,
      Widget? icon,
      Widget? tabViewWidget,
      PlutoLayoutTabItemSizeResolver? sizeResolver,
      bool? showRemoveButton,
      bool? enabled,
      double? size}) {
    return CustomImpleTabItem(
      enabled: enabled ?? this.enabled,
      label: label,
    );
  }

  @override
  Widget? get icon => const Icon(Icons.star);

  @override
  Object get id => UniqueKey();

  @override
  bool get maintainState => false;

  @override
  void requestFocus() {
    // TODO: implement requestFocus
  }

  @override
  bool get showRemoveButton => false;

  @override
  PlutoLayoutTabItemSizeResolver get sizeResolver =>
      const PlutoLayoutTabItemSizeFlexible();

  @override
  Widget? get tabViewWidget => const Text('This is TabWidget.');

  @override
  String get title => 'TabTitle';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.teal)),
      child: label,
    );
  }
}
