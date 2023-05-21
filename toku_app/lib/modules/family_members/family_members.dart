import 'package:flutter/material.dart';
import 'package:toku_app/componants/componants/componants.dart';
import 'package:toku_app/models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<Item> person = const [
    Item(
        sound: 'father.wav',
        enName: 'Father',
        jpName: 'Chichioya',
        photoNum: 'assets/images/family_members/family_father.png'),
    Item(
        sound: 'daughter.wav',
        enName: 'Daughter',
        jpName: 'Musume',
        photoNum: 'assets/images/family_members/family_daughter.png'),
    Item(
        sound: 'grand father.wav',
        enName: 'Grand Father',
        jpName: 'Ojisan',
        photoNum: 'assets/images/family_members/family_grandfather.png'),
    Item(
        sound: 'mother.wav',
        enName: 'Mother',
        jpName: 'Hahaoya',
        photoNum: 'assets/images/family_members/family_mother.png'),
    Item(
        sound: 'grand mother.wav',
        enName: 'Grand Mother',
        jpName: 'Sobo',
        photoNum: 'assets/images/family_members/family_grandmother.png'),
    Item(
        sound: 'older brother.wav',
        enName: 'Older Brother',
        jpName: 'Nisan',
        photoNum: 'assets/images/family_members/family_older_brother.png'),
    Item(
        sound: 'older sister.wav',
        enName: 'Older Sister',
        jpName: 'Ane',
        photoNum: 'assets/images/family_members/family_older_sister.png'),
    Item(
        sound: 'son.wav',
        enName: 'Son',
        jpName: 'Musuko',
        photoNum: 'assets/images/family_members/family_son.png'),
    Item(
        sound: 'younger brother.wav',
        enName: 'Younger Brother',
        jpName: 'Ototo',
        photoNum: 'assets/images/family_members/family_younger_brother.png'),
    Item(
        sound: 'younger sister.wav',
        enName: 'Younger Sister',
        jpName: 'Imoto',
        photoNum: 'assets/images/family_members/family_younger_sister.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xfff47332c),
          title: const Text('Family Members'),
        ),
        body: ListView.builder(
          itemCount: person.length,
          itemBuilder: (context, index) => ListItem(
            itemType: 'family_members',
            number: person[index],
            color: const Color(0xfff528032),
          ),
        ));
  }
}
