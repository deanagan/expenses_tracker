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
                child: getMeasurementToggleButtons(),
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
                  readOnly: true,
                  controller: txtDateStart,
                  onTap: () => onSelectDate(context),
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

  ToggleButtons getMeasurementToggleButtons() {
    return ToggleButtons(
      children: getPaddedButtonText,
      isSelected: isSelected,
      onPressed: toggleMeasurement,
    );
  }

  List<Widget> get getPaddedButtonText {
    const measurementText = ['Tablespoons', 'Grams'];

    return measurementText
        .map((text) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(text, style: TextStyle(fontSize: fontSize))))
        .toList();
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

  void onSelectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));

    if (picked != null) {
      final dateStart = picked.toLocal().toString().split(' ')[0];
      setState(() {
        txtDateStart.text = dateStart;
      });
    }
  }
}
