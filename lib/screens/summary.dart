import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Summary')),
        body: const Center(
          child: FlutterLogo(),
        ));
  }
}
