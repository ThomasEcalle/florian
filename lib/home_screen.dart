import 'package:cours_florian/a_widget.dart';
import 'package:cours_florian/b_widget.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'lis_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  Color _color = Colors.amber;

  final widgets = [
    const AWidget(),
    const BWidget(),
    ListWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: widgets[_currentIndex],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Center(
          child: Icon(Icons.add),
        ),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            tooltip: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'coucou',
            tooltip: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
            tooltip: 'List',
          ),
        ],
      ),
    );
  }

  void _onTap(int selectedIndex) {
    print('Previous index was $_currentIndex');

    setState(() {
      _currentIndex = selectedIndex;
    });

    print('New index was $_currentIndex');
  }
}
