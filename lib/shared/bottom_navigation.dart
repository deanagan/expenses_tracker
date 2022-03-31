import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: getBottomMenuItems());
  }

  getBottomMenuItems() {
    final List<BottomNavigationBarItem> bottomMenuItems = [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.money),
        label: 'Summary',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.add),
        label: 'Add',
      ),
    ];

    return bottomMenuItems;
  }
}
