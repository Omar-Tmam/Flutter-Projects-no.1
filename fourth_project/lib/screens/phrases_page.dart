import 'package:flutter/material.dart';
import 'package:fourth_project/components/phrases_item.dart';
import 'package:fourth_project/models/data_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
        sound: 'sounds/phrases/i_love_programming.wav',
        img: 'assets/images/numbers/number_one.png',
        jpName: "Watashi wa puroguramingu ga daisukidesu",
        enName: 'I love programming'),
    ItemModel(
        sound: 'sounds/phrases/programming_is_easy.wav',
        img: 'assets/images/numbers/number_two.png',
        jpName: "Puroguramingu wa kantan",
        enName: 'Programming is easy'),
    ItemModel(
        sound: 'sounds/phrases/i_love_anime.wav',
        img: 'assets/images/numbers/number_three.png',
        jpName: "Watashi wa anime ga daisukidesu",
        enName: 'I love Anime'),
    ItemModel(
        sound: 'sounds/phrases/are_you_coming.wav',
        img: 'assets/images/numbers/number_four.png',
        jpName: "Kimasu ka?",
        enName: 'Are you coming?'),
    ItemModel(
        sound: 'sounds/phrases/yes_im_coming.wav',
        img: 'assets/images/numbers/number_five.png',
        jpName: "Hai, ikimasu",
        enName: 'Yes, I\'m coming'),
    ItemModel(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        img: 'assets/images/numbers/number_six.png',
        jpName: "Go kibun wa ikagadesu ka?",
        enName: 'How are you feeling?'),
    ItemModel(
        sound: 'sounds/phrases/what_is_your_name.wav',
        img: 'assets/images/numbers/number_seven.png',
        jpName: "Anata no namae wa nanidesu ka?",
        enName: 'What is your name?'),
    ItemModel(
        sound: 'sounds/phrases/where_are_you_going.wav',
        img: 'assets/images/numbers/number_eight.png',
        jpName: "Doko ni iku no?",
        enName: 'Where are you going?'),
    ItemModel(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        img: 'assets/images/numbers/number_nine.png',
        jpName: "Kōdoku o wasurenaide kudasai",
        enName: 'Don\'t forget to subscribe'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          "Phrases",
          style:
              TextStyle(color: Colors.white, fontFamily: 'Teko', fontSize: 35),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            highlightedColor: Colors.blueAccent,
            color: Colors.blue,
            number: numbers[index],
          );
        },
      ),
    );
  }
}
