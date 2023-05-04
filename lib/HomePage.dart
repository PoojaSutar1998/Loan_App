import 'package:flutter/material.dart';
import 'Dashboard/home_screen (3).dart';
import 'Helper/globle style.dart';
import 'VehiclelList/My_Vehicle_List_Screen.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List screens = <Widget>[
     HomeScreen(),
    My_Vehicle_ListScreen(),
     HomeScreen(),


  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items:  <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 25,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 25,
                ),
                label: 'My Vehicle',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.miscellaneous_services_sharp,
                  size: 25,
                ),
                label: 'Service',
              ),

            ],
            currentIndex: selectedIndex,
            selectedItemColor: themeColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.grey,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedLabelStyle:
                const TextStyle(color: Colors.grey, fontSize: 12),
            selectedLabelStyle:
                const TextStyle(color: themeColor, fontSize: 12),
            onTap: _onItemTapped,
          ),
          body: screens[selectedIndex]),
    );
  }
}
