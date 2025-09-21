import 'package:flutter/material.dart';
import 'package:flutter_utilities/widget/drawer.dart';

class MainDrawerPage extends StatefulWidget {
  const MainDrawerPage({super.key});

  @override
  State<MainDrawerPage> createState() => _MainDrawerPageState();
}

class _MainDrawerPageState extends State<MainDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(title: const Text('Drawer')),
        drawer: const DrawerWidget(),
        body: Container(),
      ),
    );
  }
}
