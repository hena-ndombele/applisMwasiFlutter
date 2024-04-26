import 'package:flutter/material.dart';
import 'package:mwasi_app/pages/profil/ProfilePage.dart';
import 'package:mwasi_app/pages/questions/QuestionPage.dart';

import '../../utils/ColorPage.dart';
import 'HomePage.dart';


class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomePage(),
   QuestionPage(),
    ProfilePage()
  ];
  PageController pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ColorPages.COLOR_PRINCIPALE,
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedItemColor: ColorPages.COLOR_GRIS,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
            pageController.animateToPage(
              index,
              duration: Duration(milliseconds: 100),
              curve: Curves.easeInOut,
            );
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "Apropos",
            activeIcon: Icon(Icons.info),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            label: "Quetsion",
            activeIcon: Icon(Icons.question_answer),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profil",
            activeIcon: Icon(Icons.person),
          ),

        ],
      ),
    );
  }
}
