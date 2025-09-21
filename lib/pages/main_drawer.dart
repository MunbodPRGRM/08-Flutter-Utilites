import 'package:flutter/material.dart';
import 'package:flutter_utilities/pages/NavPages/page1.dart';
import 'package:flutter_utilities/pages/NavPages/page2.dart';
import 'package:flutter_utilities/widget/drawer.dart';

class MainDrawerPage extends StatefulWidget {
  const MainDrawerPage({super.key});

  @override
  State<MainDrawerPage> createState() => _MainDrawerPageState();
}

class _MainDrawerPageState extends State<MainDrawerPage> {
  int selectedIndex = 0;
  Widget currentPage = const Page1();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(title: const Text('Drawer')),
        drawer: const DrawerWidget(),

        // Nav bar
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: selectedIndex,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
              if (selectedIndex == 0) {
                currentPage = Page1();
              } else if (selectedIndex == 1) {
                currentPage = Page2();
              }
            });
          },
        ),
        body: currentPage,
      ),
    );
  }
}
