import 'package:flutter/material.dart';
import 'package:portfolio/components/bottom_nav.dart';
import 'package:portfolio/const.dart';
import 'package:portfolio/pages/projectPage.dart';

import 'aboutPage.dart';
import 'dashboardPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void NavigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const DashboardPage(),
    const ProjectPage(),
    const AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: firstColor,
      bottomNavigationBar: bottom_nav(
        onTabChange: (index) => NavigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
