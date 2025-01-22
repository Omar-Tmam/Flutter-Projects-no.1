import 'package:fifth_project/containers/tune_container.dart';
import 'package:fifth_project/models/tune_model.dart';
import 'package:flutter/material.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<TuneModel> Tunes = const [
    TuneModel(color: Colors.red, sound: "note1.wav"),
    TuneModel(color: Colors.orange, sound: "note2.wav"),
    TuneModel(color: Colors.yellow, sound: "note3.wav"),
    TuneModel(color: Colors.green, sound: "note4.wav"),
    TuneModel(color: Colors.greenAccent, sound: "note5.wav"),
    TuneModel(color: Colors.blue, sound: "note6.wav"),
    TuneModel(color: Colors.purple, sound: "note7.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 66, 66, 66),
        title: Center(
          child: Text(
            "Flutter Tune",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: Tunes.map(
          (e) => TuneContainer(tune: e),
        ).toList(),
      ),
    );
  }
}
