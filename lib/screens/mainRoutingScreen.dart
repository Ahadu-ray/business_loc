import 'package:flutter/material.dart';
import 'package:kirb/constants/cutomThemeData.dart';
import 'package:kirb/screens/homeScreen.dart';
import 'package:kirb/screens/profileScreen.dart';
import 'package:kirb/screens/searchScreen.dart';

class MainRoutingScreen extends StatefulWidget {
  const MainRoutingScreen({Key? key}) : super(key: key);

  @override
  _MainRoutingScreenState createState() => _MainRoutingScreenState();
}

class _MainRoutingScreenState extends State<MainRoutingScreen> {
  int _selectedIndex = 0;
  List<Widget> _children = [HomeScreen(), SearchScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(height: size.height, child: _children[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 40,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 30,
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "search"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: "me",
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey[500],
        selectedItemColor: customThemeData.accentColor,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
