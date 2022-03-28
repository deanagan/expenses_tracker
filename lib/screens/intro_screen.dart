import 'package:flutter/material.dart';
import 'package:expenses_tracker/shared/menu_drawer.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Expenses Tracker')),
        drawer: const MenuDrawer(),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/sunrise.jpg'), fit: BoxFit.cover),
          ),
          child: Center(
              child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white70,
                  ),
                  child: const Text(
                      'Track your expenses and make it \neasy come tax time!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, shadows: [
                        Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 2.0,
                            color: Colors.grey)
                      ])))),
        ));
  }
}
