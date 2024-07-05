import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MapboxView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UiKitView(
      viewType: 'MapboxView',
      layoutDirection: TextDirection.ltr,
    );
  }
}
