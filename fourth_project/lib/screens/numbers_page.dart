import 'package:flutter/material.dart';
import 'package:fourth_project/components/item.dart';
import 'package:fourth_project/models/data_model.dart';

class numbersPage extends StatelessWidget {
  const numbersPage({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
        sound: 'sounds/numbers/number_one_sound.mp3',
        img: 'assets/images/numbers/number_one.png',
        jpName: "Ichi",
        enName: 'One'),
    ItemModel(
        sound: 'sounds/numbers/number_two_sound.mp3',
        img: 'assets/images/numbers/number_two.png',
        jpName: "ni",
        enName: 'Two'),
    ItemModel(
        sound: 'sounds/numbers/number_three_sound.mp3',
        img: 'assets/images/numbers/number_three.png',
        jpName: "san",
        enName: 'Three'),
    ItemModel(
        sound: 'sounds/numbers/number_four_sound.mp3',
        img: 'assets/images/numbers/number_four.png',
        jpName: "shi",
        enName: 'Four'),
    ItemModel(
        sound: 'sounds/numbers/number_five_sound.mp3',
        img: 'assets/images/numbers/number_five.png',
        jpName: "go",
        enName: 'Five'),
    ItemModel(
        sound: 'sounds/numbers/number_six_sound.mp3',
        img: 'assets/images/numbers/number_six.png',
        jpName: "roku",
        enName: 'Six'),
    ItemModel(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        img: 'assets/images/numbers/number_seven.png',
        jpName: "shichi",
        enName: 'Seven'),
    ItemModel(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        img: 'assets/images/numbers/number_eight.png',
        jpName: "hachi",
        enName: 'Eight'),
    ItemModel(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        img: 'assets/images/numbers/number_nine.png',
        jpName: "kyuu",
        enName: 'Nine'),
    ItemModel(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        img: 'assets/images/numbers/number_ten.png',
        jpName: "juu",
        enName: 'Ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          "Numbers",
          style:
              TextStyle(color: Colors.white, fontFamily: 'Teko', fontSize: 35),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            highlightedColor: Colors.amber,
            color: Colors.orange,
            number: numbers[index],
          );
        },
      ),
    );
  }
}
