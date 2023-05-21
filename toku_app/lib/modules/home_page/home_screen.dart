import 'package:flutter/material.dart';
import 'package:toku_app/modules/Colors/colors.dart';
import 'package:toku_app/modules/family_members/family_members.dart';
import 'package:toku_app/modules/numbers/numbers_page.dart';
import 'package:toku_app/modules/phrase/phrase.dart';

import '../../componants/componants/componants.dart';

class Toku_app extends StatelessWidget {
  const Toku_app({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF4D9),
      appBar: AppBar(
        backgroundColor: const Color(0xff47332C),
        titleSpacing: 20,
        title: const Text('Toku',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        elevation: 100,
      ),
      body: Column(
        children: [
          DefaultContainer(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NumberPages(),
                    ));
              },
              color: const Color(0xffff99531),
              text: 'Numbers'),
          DefaultContainer(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FamilyMembersPage(),
                    ));
              },
              color: const Color(0xfff528032),
              text: 'FamilyMembers'),
          DefaultContainer(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ColorsPage(),
                    ));
              },
              color: const Color(0xfff7d40a2),
              text: 'Colors'),
          DefaultContainer(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PhrasePages(),
                    ));
              },
              color: const Color(0xfff47a5cb),
              text: 'Phrases'),
        ],
      ),
    );
  }
}
