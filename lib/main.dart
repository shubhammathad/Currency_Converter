import 'package:currency_converter/practice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.black, // cursor line
          selectionColor: Colors.black12, // highlighted text
          selectionHandleColor: Colors.black, // the purple drop
        ),
      ),
      home: Practice(),
    );
  }
}
