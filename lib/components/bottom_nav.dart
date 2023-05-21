import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:portfolio/const.dart';

class bottom_nav extends StatelessWidget {
  final void Function(int)? onTabChange;
  const bottom_nav({Key? key, required this.onTabChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
          onTabChange: (value) => onTabChange!(value),
          color: Colors.grey,
          activeColor: secondColor,
          tabBackgroundColor: Colors.white,
          tabBorderRadius: 24,
          tabActiveBorder: Border.all(color: secondColor),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.card_travel,
              text: 'Projects',
            ),
            GButton(
              icon: Icons.person,
              text: 'Links',
            ),
          ]),
    );
  }
}
