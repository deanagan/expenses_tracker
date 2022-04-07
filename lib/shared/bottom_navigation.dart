import 'package:flutter/material.dart';
import 'package:sprouts_tracker/constants/routes.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: getBottomMenuItems(),
      onTap: (int index) {
        var currentRouteSettings = ModalRoute.of(context)?.settings;
        var newPage = Routes.routeMap[index] ?? Routes.home;
        if (currentRouteSettings?.name != newPage) {
          Navigator.popAndPushNamed(context, newPage);
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
