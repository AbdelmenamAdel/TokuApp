import 'package:flutter/material.dart';
import 'package:toku_app/models/item.dart';

import 'package:audioplayers/audioplayers.dart';
import 'package:toku_app/models/phrase.dart';

class DefaultContainer extends StatelessWidget {
  DefaultContainer({super.key, this.color, this.onTap, this.text});
  @required
  Function()? onTap;
  @required
  Color? color;
  @required
  String? text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          color: color!,
          height: 65,
          width: double.infinity,
          child: Text(
            text!,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          )),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem(
      {super.key,
      required this.number,
      required this.color,
      required this.itemType});
  final Item number;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 80,
      child: Row(
        children: [
          Container(
              color: const Color(0xffffffde4),
              child: Image.asset(number.photoNum)),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.jpName,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                number.enName,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Spacer(flex: 1),
          IconButton(
              onPressed: () {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/$itemType/');
                //player.play(number.sound);
              },
              icon: const Icon(Icons.play_arrow))
        ],
      ),
    );
  }
}

class PhraseItem extends StatelessWidget {
  const PhraseItem(
      {super.key,
      required this.phrase,
      required this.color,
      required this.itemType});
  final Phrase phrase;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 80,
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                phrase.jpName,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                phrase.enName,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Spacer(flex: 1),
          IconButton(
              onPressed: () {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/$itemType/');
                //player.play(phrase.sound);
              },
              icon: const Icon(Icons.play_arrow))
        ],
      ),
    );
  }
}
