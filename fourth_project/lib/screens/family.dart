import 'package:flutter/material.dart';
import 'package:fourth_project/components/item.dart';
import 'package:fourth_project/models/data_model.dart';

class Family extends StatelessWidget {
  const Family({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
        sound: 'sounds/family_members/grandfather.wav',
        img: 'assets/images/family_members/family_grandfather.png',
        jpName: "ojiisan",
        enName: 'Grand Father'),
    ItemModel(
        sound: 'sounds/family_members/grandmother.wav',
        img: 'assets/images/family_members/family_grandmother.png',
        jpName: "sobo",
        enName: 'Grand Mother'),
    ItemModel(
        sound: 'sounds/family_members/father.wav',
        img: 'assets/images/family_members/family_father.png',
        jpName: "chichi",
        enName: 'Father'),
    ItemModel(
        sound: 'sounds/family_members/mother.wav',
        img: 'assets/images/family_members/family_mother.png',
        jpName: "haha",
        enName: 'Mother'),
    ItemModel(
        sound: 'sounds/family_members/son.wav',
        img: 'assets/images/family_members/family_son.png',
        jpName: "musuko",
        enName: 'Son'),
    ItemModel(
        sound: 'sounds/family_members/daughter.wav',
        img: 'assets/images/family_members/family_daughter.png',
        jpName: "musume",
        enName: 'Daughter'),
    ItemModel(
        sound: 'sounds/family_members/older_bother.wav',
        img: 'assets/images/family_members/family_older_brother.png',
        jpName: "oniisan ",
        enName: 'Older Brother'),
    ItemModel(
        sound: 'sounds/family_members/older_sister.wav',
        img: 'assets/images/family_members/family_older_sister.png',
        jpName: "ane ",
        enName: 'Older Sister'),
    ItemModel(
        sound: 'sounds/family_members/younger_brohter.wav',
        img: 'assets/images/family_members/family_younger_brother.png',
        jpName: "otouto ",
        enName: 'Younger Brother'),
    ItemModel(
        sound: 'sounds/family_members/younger_sister.wav',
        img: 'assets/images/family_members/family_younger_sister.png',
        jpName: "imouto ",
        enName: 'Younger Sister'),
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
