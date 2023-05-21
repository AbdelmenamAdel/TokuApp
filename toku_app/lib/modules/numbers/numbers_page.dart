import 'package:flutter/material.dart';
import 'package:toku_app/componants/componants/componants.dart';
import 'package:toku_app/models/item.dart';

class NumberPages extends StatelessWidget {
  const NumberPages({super.key});
  final List<Item> numbers = const [
    Item(
        sound: 'number_one_sound.mp3',
        enName: 'One',
        jpName: 'Iche',
        photoNum: 'assets/images/numbers/number_one.png'),
    Item(
        sound: 'number_two_sound.mp3',
        enName: 'Two',
        jpName: 'Ni',
        photoNum: 'assets/images/numbers/number_two.png'),
    Item(
        sound: 'number_three_sound.mp3',
        enName: 'three',
        jpName: 'San',
        photoNum: 'assets/images/numbers/number_three.png'),
    Item(
        sound: 'number_four_sound.mp3',
        enName: 'Four',
        jpName: 'Shi',
        photoNum: 'assets/images/numbers/number_four.png'),
    Item(
        sound: 'number_five_sound.mp3',
        enName: 'Five',
        jpName: 'Go',
        photoNum: 'assets/images/numbers/number_five.png'),
    Item(
        sound: 'number_six_sound.mp3',
        enName: 'Six',
        jpName: 'Roku',
        photoNum: 'assets/images/numbers/number_six.png'),
    Item(
        sound: 'number_seven_sound.mp3',
        enName: 'Seven',
        jpName: 'Sebun',
        photoNum: 'assets/images/numbers/number_seven.png'),
    Item(
        sound: 'number_eight_sound.mp3',
        enName: 'eight',
        jpName: 'Hachi',
        photoNum: 'assets/images/numbers/number_eight.png'),
    Item(
        sound: 'number_nine_sound.mp3',
        enName: 'Nine',
        jpName: 'Kyu',
        photoNum: 'assets/images/numbers/number_nine.png'),
    Item(
        sound: 'number_ten_sound.mp3',
        enName: 'Ten',
        jpName: 'Ju',
        photoNum: 'assets/images/numbers/number_ten.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xfff47332c),
          title: const Text('Numbers'),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) => ListItem(
            itemType: 'numbers',
            number: numbers[index],
            color: const Color(0xfffff9f3b),
          ),
        ));
  }
}
