import 'package:cook_me_release/Pages/call_farmer_page.dart';
import 'package:flutter/material.dart';
import '../Pages/bmi_page.dart';
import '../Pages/home_page.dart';
import '../Pages/resep_page.dart';

class BottomNavigation extends StatefulWidget {

  BottomNavigation({Key key, this.title}) : super (key: key);
  final String title;

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _seledtedIndex = 0;
  final _layoutPage = [
    HomePage(),
    ResepPage(),
    BmiPage(),
    CallFarmerPage(),
  ];

  void _onTapItem(int index) {
    setState(() {
      _seledtedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_seledtedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt),
              title: Text('Resep')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility),
              title: Text('BMI')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone_forwarded),
              title: Text('Call Farmer')
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _seledtedIndex,
        fixedColor: Colors.brown,
        onTap: _onTapItem,
      ),
    );
  }
}