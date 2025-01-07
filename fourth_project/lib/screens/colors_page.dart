import 'package:flutter/material.dart';
import 'package:fourth_project/components/item.dart';
import 'package:fourth_project/models/data_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
        sound: 'sounds/colors/black.wav',
        img: 'assets/images/colors/color_black.png',
        jpName: "Kuro",
        enName: 'Black'),
    ItemModel(
        sound: 'sounds/colors/brown.wav',
        img: 'assets/images/colors/color_brown.png',
        jpName: "Chairo",
        enName: 'Brown'),
    ItemModel(
        sound: 'sounds/colors/dusty_yellow.wav',
        img: 'assets/images/colors/color_dusty_yellow.png',
        jpName: "Hokori ppoi kiiro",
        enName: 'Dusty Yellow'),
    ItemModel(
        sound: 'sounds/colors/gray.wav',
        img: 'assets/images/colors/color_gray.png',
        jpName: "haha",
        enName: 'Gray'),
    ItemModel(
        sound: 'sounds/colors/green.wav',
        img: 'assets/images/colors/color_green.png',
        jpName: "musuko",
        enName: 'Green'),
    ItemModel(
        sound: 'sounds/colors/red.wav',
        img: 'assets/images/colors/color_red.png',
        jpName: "musume",
        enName: 'Red'),
    ItemModel(
        sound: 'sounds/colors/white.wav',
        img: 'assets/images/colors/color_white.png',
        jpName: "musume",
        enName: 'White'),
    ItemModel(
        sound: 'sounds/colors/yellow.wav',
        img: 'assets/images/colors/yellow.png',
        jpName: "musume",
        enName: 'Yellow')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          "Family Members",
          style:
              TextStyle(color: Colors.white, fontFamily: 'Teko', fontSize: 35),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            highlightedColor: Colors.greenAccent,
            color: Colors.green,
            number: numbers[index],
          );
        },
      ),
    );
  }
}
