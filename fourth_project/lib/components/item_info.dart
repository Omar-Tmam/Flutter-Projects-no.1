import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:fourth_project/models/data_model.dart';

class ItemInfo extends StatelessWidget {
  final ItemModel number;
  final Color highlightedColor;
  const ItemInfo(
      {super.key, required this.number, required this.highlightedColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                number.jpName,
                style: const TextStyle(
                    color: Colors.black, fontSize: 28, fontFamily: 'Teko'),
              ),
              Text(
                number.enName,
                style: const TextStyle(
                    color: Colors.black, fontSize: 28, fontFamily: 'Teko'),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(
            highlightColor: highlightedColor,
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(number.sound));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.black,
              size: 34,
            ),
          ),
        ),
      ],
    );
  }
}
