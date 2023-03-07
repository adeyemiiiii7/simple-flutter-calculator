import 'package:basic_calculator/screens/calculator_screen.dart';
import 'package:flutter/material.dart';

class Appc extends StatelessWidget {
  const Appc({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //to remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Flutter simple calculator ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Noto',
      ),
      home: const CalculatorScreen(),
    );
  }
}
