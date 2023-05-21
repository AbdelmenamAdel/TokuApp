import 'package:flutter/material.dart';
import 'package:toku_app/componants/componants/componants.dart';
import 'package:toku_app/models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Item> colors = const [
    Item(
        sound: 'black.wav',
        enName: 'Black',
        jpName: 'Burakku',
        photoNum: 'assets/images/colors/color_black.png'),
    Item(
        sound: 'brown.wav',
        enName: 'Brown',
        jpName: 'Chairo',
        photoNum: 'assets/images/colors/color_brown.png'),
    Item(
        sound: 'dusty yellow.wav',
        enName: 'Dusty Yellow',
        jpName: 'Hokori ppoi kiiro',
        photoNum: 'assets/images/colors/color_dusty_yellow.png'),
    Item(
        sound: 'gray.wav',
        enName: 'Gray',
        jpName: 'Gure',
        photoNum: 'assets/images/colors/color_gray.png'),
    Item(
        sound: 'green.wav',
        enName: 'Green',
        jpName: 'Midori',
        photoNum: 'assets/images/colors/color_green.png'),
    Item(
        sound: 'red.wav',
        enName: 'Red',
        jpName: 'Aka',
        photoNum: 'assets/images/colors/color_red.png'),
    Item(
        sound: 'white.wav',
        enName: 'White',
        jpName: 'Shirio',
        photoNum: 'assets/images/colors/color_white.png'),
    Item(
        sound: 'yellow.wav',
        enName: 'Yellow',
        jpName: 'Musuko',
        photoNum: 'assets/images/colors/yellow.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xfff47332c),
          title: const Text('Colors'),
        ),
        body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) => ListItem(
            itemType: 'colors',
            number: colors[index],
            color: const Color(0xfff7d40a2),
          ),
        ));
  }
}
