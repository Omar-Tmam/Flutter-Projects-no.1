import 'package:flutter/material.dart';
import 'package:fourth_project/components/divider.dart';
import 'package:fourth_project/components/item_info.dart';
import 'package:fourth_project/models/data_model.dart';

class PhrasesItem extends StatelessWidget {
  final ItemModel number;
  final Color highlightedColor;

  final Color color;
  const PhrasesItem({
    super.key,
    required this.number,
    required this.highlightedColor,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: color,
            ),
            height: 100,
            child: ItemInfo(
              number: number,
              highlightedColor: highlightedColor,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: MyDivider(
              thickness: 3,
              color: Colors.brown,
              endIndent: 50,
              indent: 50,
            ),
          )
        ],
      ),
    );
  }
}
