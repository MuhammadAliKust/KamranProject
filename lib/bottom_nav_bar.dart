import 'package:flutter/material.dart';
import 'package:kamran_project/dynamic_list.dart';
import 'package:kamran_project/login.dart';
import 'package:kamran_project/single_list.dart';

class BottomNavBarView extends StatefulWidget {
  BottomNavBarView({super.key});

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  int selectedIndex = 0;

  List<Widget> screenList = [
    LoginView(),
    SingleListViewDemo(),
    DynamicListViewDemo()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screenList.elementAt(selectedIndex),

      /// screenList.elementAt() -> It will show screen based on the value of selected index
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
