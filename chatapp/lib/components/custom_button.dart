import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({this.onTap, required this.textButton});
  final String textButton;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 60,
        width: double.infinity,
        child: Center(
          child: Text(
            textButton,
            style: TextStyle(fontFamily: 'Ubuntu', fontSize: 24),
          ),
        ),
      ),
    );
  }
}
