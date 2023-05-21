import 'package:flutter/material.dart';
import 'package:toku_app/componants/componants/componants.dart';
import 'package:toku_app/models/phrase.dart';

class PhrasePages extends StatelessWidget {
  const PhrasePages({super.key});
  final List<Phrase> phrase = const [
    Phrase(
      sound: 'dont_forget_to_subscribe.wav',
      enName: 'Don\'t forget to subscribe',
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
    ),
    Phrase(
      sound: 'i_love_programming.wav',
      enName: 'I love programming',
      jpName: 'Watashi wa puroguramingu daisukidesu',
    ),
    Phrase(
      sound: 'programming_is_easy.wav',
      enName: 'Programing is easy',
      jpName: 'Puroguramingu wa kantandesu',
    ),
    Phrase(
      sound: 'where_are_you_going.wav',
      enName: 'Where are you going',
      jpName: 'Doko ni iku no',
    ),
    Phrase(
      sound: 'what_is_your_name.wav',
      enName: 'What is your name',
      jpName: 'Namae wa nandesu ka',
    ),
    Phrase(
      sound: 'i_love_anime.wav',
      enName: 'I love anime',
      jpName: 'Watashi wa anime ga daisukidesu',
    ),
    Phrase(
      sound: 'how_are_you_feeling.wav',
      enName: 'How are you feeling',
      jpName: 'Go kibun wa ikagadesu ka',
    ),
    Phrase(
      sound: 'are_you_coming.wav',
      enName: 'Are you comming',
      jpName: 'Kimasu ka',
    ),
    Phrase(
      sound: 'yes_im_coming.wav',
      enName: 'Yes i\'m comming',
      jpName: 'Hai,ikimasu',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xfff47332c),
          title: const Text('Phrases'),
        ),
        body: ListView.builder(
          itemCount: phrase.length,
          itemBuilder: (context, index) => PhraseItem(
            itemType: 'Phrases',
            phrase: phrase[index],
            color: const Color(0xfff47a5cb),
          ),
        ));
  }
}
