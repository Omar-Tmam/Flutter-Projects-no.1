import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Start Searching For The',
              style: TextStyle(fontSize: 30, fontFamily: 'Ubuntu'),
            ),
            Text(
              'Latest Info 🔍',
              style: TextStyle(fontSize: 30, fontFamily: 'Ubuntu'),
            )
          ],
        ),
      ),
    );
  }
}
