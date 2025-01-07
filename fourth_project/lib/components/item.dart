import 'package:flutter/material.dart';
import 'package:fourth_project/components/divider.dart';
import 'package:fourth_project/components/item_info.dart';
import 'package:fourth_project/models/data_model.dart';

class Item extends StatelessWidget {
  const Item(
      {super.key,
      required this.number,
      required this.color,
      required this.highlightedColor});
  final ItemModel number;
  final Color color;
  final Color highlightedColor;

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
              border: const Border(
                left: BorderSide(
                  color: Colors.brown,
                  width: 20,
                ),
              ),
            ),
            height: 100,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    color: const Color(0xffFFF6DC),
                    child: Image.asset(number.img),
                  ),
                ),
                Expanded(
                    child: ItemInfo(
                        number: number, highlightedColor: highlightedColor))
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 4),
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
