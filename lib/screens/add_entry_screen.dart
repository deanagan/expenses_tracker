import 'package:flutter/material.dart';
import 'package:sprouts_tracker/shared/bottom_navigation.dart';

class AddEntryScreen extends StatefulWidget {
  const AddEntryScreen({Key? key}) : super(key: key);

  @override
  State<AddEntryScreen> createState() => _AddEntryScreenState();
}

class _AddEntryScreenState extends State<AddEntryScreen> {
  final double fontSize = 18;
  String result = '';
  bool isTablespoons = true;
  bool isGrams = false;
  double? amount;
  int? targetDays;
  late List<bool> isSelected;

  @override
  void initState() {
    isSelected = [isTablespoons, isGrams];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Add Sprout Entry')),
        bottomNavigationBar: const BottomMenu(),
        body: Column(
          children: [
            ToggleButtons(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child:
                      Text('Tablespoons', style: TextStyle(fontSize: fontSize)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Grams', style: TextStyle(fontSize: fontSize)),
                ),
              ],
              isSelected: isSelected,
              onPressed: toggleMeasurement,
            ),
          ],
        ));
  }

  void toggleMeasurement(value) {
    if (value == 0) {
      isTablespoons = true;
      isGrams = false;
    } else {
      isTablespoons = false;
      isGrams = true;
    }
    setState(() {
      isSelected = [isTablespoons, isGrams];
    });
  }
}
