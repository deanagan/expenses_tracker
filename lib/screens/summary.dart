import 'package:flutter/material.dart';
import 'package:expenses_tracker/shared/bottom_navigation.dart';

class Summary extends StatelessWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Summary')),
        bottomNavigationBar: const BottomMenu(),
        body: const Center(
          child: FlutterLogo(),
        ));
  }
}
