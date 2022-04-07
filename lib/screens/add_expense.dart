import 'package:flutter/material.dart';
import 'package:sprouts_tracker/shared/bottom_navigation.dart';

class AddExpense extends StatelessWidget {
  const AddExpense({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Add Expense')),
        bottomNavigationBar: const BottomMenu(),
        body: const Center(
          child: FlutterLogo(),
        ));
  }
}
