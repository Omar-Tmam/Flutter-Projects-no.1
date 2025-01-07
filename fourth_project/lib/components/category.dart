import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key, this.text, this.color, this.onTap});
  final VoidCallback? onTap;
  final String? text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 18),
        alignment: Alignment.centerLeft,
        height: 80,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontFamily: "Teko",
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
