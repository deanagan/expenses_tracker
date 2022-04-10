import 'package:flutter/material.dart';
import 'package:sprouts_tracker/shared/bottom_navigation.dart';

class AddEntryScreen extends StatefulWidget {
  const AddEntryScreen({Key? key}) : super(key: key);

  @override
  State<AddEntryScreen> createState() => _AddEntryScreenState();
}

class _AddEntryScreenState extends State<AddEntryScreen> {
  final TextEditingController txtAmount = TextEditingController();
  final TextEditingController txtKind = TextEditingController();
  final TextEditingController txtDateStart = TextEditingController();
  final double fontSize = 18;
  String result = '';
  bool isTablespoons = true;
  bool isGrams = false;
  double? amount;
  int? targetDays;
  String kind = '';
  late List<bool> isSelected;
  String amountMessage = '';
  String dateMessage = '';
  String kindMessage = '';

  @override
  void initState() {
    isSelected = [isTablespoons, isGrams];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    amountMessage =
        'Please enter amount of seeds in ${isTablespoons ? 'tablespoons' : 'grams'}';
    kindMessage = 'Enter kind of seeds (e.g. Broccoli, Radish)';
    dateMessage = 'Enter date started';

    return Scaffold(
        appBar: AppBar(title: const Text('Add Sprout Entry')),
        bottomNavigationBar: const BottomMenu(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ToggleButtons(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text('Tablespoons',
                          style: TextStyle(fontSize: fontSize)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child:
                          Text('Grams', style: TextStyle(fontSize: fontSize)),
                    ),
                  ],
                  isSelected: isSelected,
                  onPressed: toggleMeasurement,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: TextField(
                  controller: txtAmount,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: amountMessage),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: TextField(
                  controller: txtKind,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(hintText: kindMessage),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: TextField(
                  controller: txtDateStart,
                  onTap: showDatePicker,
                  decoration: InputDecoration(hintText: dateMessage),
                ),
              ),
              ElevatedButton(
                  onPressed: submitEntry,
                  child: Text('Add/Edit', style: TextStyle(fontSize: fontSize)))
            ],
          ),
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

  void submitEntry() {
    // Submit entry to backend
  }

  void showDatePicker() {
    // Implement date picker
  }
}
