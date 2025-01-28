import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "News",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'ShadowsIntoLight',
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Cloud",
          style: TextStyle(
            color: Colors.blue,
            fontFamily: 'ShadowsIntoLight',
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
