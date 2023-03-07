import 'package:basic_calculator/utils/calculator_functions.dart';
import 'package:basic_calculator/utils/margins/y_margin.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final CalculatorFunctions calculatorFunctions = CalculatorFunctions();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 5.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                calculatorFunctions.expression,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                ),
              ),
              const YMargin(20),
              Text(
                calculatorFunctions.result,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
              const YMargin(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: 'C',
                    buttonColor: Colors.grey,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performAction('C');
                      });
                    },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '⌫',
                    buttonColor: Colors.grey,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performAction('⌫');
                      });
                    },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '%',
                    buttonColor: Colors.grey,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performAction('%');
                      });
                    },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '/',
                    buttonColor: Colors.orange,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performAction('/');
                      });
                    },
                    textColor: Colors.white,
                  ),
                ],
              ),
              const YMargin(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: '7',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performAction('7');
                      });
                    },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '8',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performAction('8');
                      });
                    },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '9',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performAction('9');
                      });
                    },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '*',
                    buttonColor: Colors.orange,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performAction('*');
                      });
                    },
                    textColor: Colors.white,
                  ),
                ],
              ),
              const YMargin(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: '4',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performAction('4');
                      });
                    },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '5',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performAction('5');
                      });
                    },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '6',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performAction('6');
                      });
                    },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '-',
                    buttonColor: Colors.orange,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performAction('-');
                      });
                    },
                    textColor: Colors.white,
                  ),
                ],
              ),
              const YMargin(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: '1',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performAction('1');
                      });
                    },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '2',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performAction('2');
                      });
                    },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '3',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performAction('3');
                      });
                    },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '+',
                    buttonColor: Colors.orange,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performAction('+');
                      });
                    },
                    textColor: Colors.white,
                  ),
                ],
              ),
              const YMargin(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    buttonText: '0',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performAction('0');
                      });
                    },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '.',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performAction('.');
                      });
                    },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '00',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performAction('00');
                      });
                    },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '=',
                    buttonColor: Colors.orange,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performAction('=');
                      });
                    },
                    textColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*Safe Area" is a widget that provides padding to its child elements to 
ensure they are not obscured by system-level UI elements 
such as the device's status bar, notch, or rounded corners*/

//safeArea -- column --(Text, text [Row --(custom button)])
