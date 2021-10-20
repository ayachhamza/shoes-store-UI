import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.all(12),
      icon: Icon(
        Icons.menu_rounded,
        color: Colors.black,
        size: 29,
      ),
      onPressed: () => ZoomDrawer.of(context)!.toggle(),
    );
  }
}
