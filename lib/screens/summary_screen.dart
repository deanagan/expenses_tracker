import 'package:flutter/material.dart';
import 'package:sprouts_tracker/shared/bottom_navigation.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({Key? key}) : super(key: key);

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
