import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: getBottomMenuItems(),
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/');
            break;
          case 1:
            Navigator.pushNamed(context, '/summary');
            break;
          case 2:
            Navigator.pushNamed(context, '/add');
            break;
        }
      },
    );
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
