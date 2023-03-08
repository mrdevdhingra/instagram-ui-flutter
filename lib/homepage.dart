import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/account.dart';
import 'package:flutter_application_1/pages/add.dart';
import 'package:flutter_application_1/pages/explore.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  
  _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    UserHome(),
    const UserExplore(),
    const UserAdd(),
    const UserShop(),
    const UserAccount()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label:'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label:'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label:'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label:'Account'),
          ],
      ),
    );
  }

}