import 'package:audioplayers/audioplayers.dart';
import 'package:fifth_project/models/tune_model.dart';
import 'package:flutter/material.dart';

class TuneContainer extends StatelessWidget {
  const TuneContainer({super.key, required this.tune});
  final TuneModel tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
