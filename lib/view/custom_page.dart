import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomPage extends StatelessWidget {
  final Color panelColor;
  final String title;

  CustomPage({required this.panelColor, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: this.panelColor,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Center(child: Text(this.title)),
        ),
      ),
    );
  }
}
