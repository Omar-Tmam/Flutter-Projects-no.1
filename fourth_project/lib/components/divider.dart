import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider(
      {super.key, this.color, this.thickness, this.endIndent, this.indent});
  final Color? color;
  final double? thickness;
  final double? endIndent;
  final double? indent;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      thickness: thickness,
      endIndent: endIndent,
      indent: indent,
    );
  }
}
