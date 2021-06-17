import 'package:flutter/material.dart';
import 'package:gym_app/Screens/SubScreens/History.dart';
import 'package:gym_app/Screens/SubScreens/WorkoutPlan.dart';
//import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class LandingPage extends StatefulWidget {
  static String id = 'home_screen';
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedPage = 0;
  final _pageOptions = [
    WorkoutPlan(),
    History(),
    Text('Bag'),
    Text('Orders'),
    Text('Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
//      child: Scaffold(
//        body: _pageOptions[selectedPage],
//        bottomNavigationBar: TitledBottomNavigationBar(
//          currentIndex: selectedPage,
//          activeColor: Colors.black,
//          inactiveColor: Colors.grey,
//          onTap: (index) {
//            print("Selected Index: $index");
//            setState(() {
//              selectedPage = index;
//            });
//          },
//          items: [
//            TitledNavigationBarItem(
//              title: 'Home',
//              icon: Icons.home,
//            ),
//            TitledNavigationBarItem(title: 'Search', icon: Icons.search),
//            TitledNavigationBarItem(title: 'Bag', icon: Icons.card_travel),
//            TitledNavigationBarItem(title: 'Orders', icon: Icons.shopping_cart),
//            TitledNavigationBarItem(
//                title: 'Profile', icon: Icons.person_outline),
//          ],
//        ),
//      ),
    );
  }
}
