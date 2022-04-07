import 'package:flutter/material.dart';
import 'package:sprouts_tracker/screens/intro_screen.dart';
import 'package:sprouts_tracker/screens/summary.dart';
import 'package:sprouts_tracker/screens/add_expense.dart';

void main() {
  runApp(const SproutsTrackerApp());
}

class SproutsTrackerApp extends StatelessWidget {
  const SproutsTrackerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      routes: {
        '/': (context) => const IntroScreen(),
        '/summary': (context) => const Summary(),
        '/add': (context) => const AddExpense()
      },
      //home: const IntroScreen(),
    );
  }
}
