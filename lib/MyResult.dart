import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyVariableToListen.dart';


class MyResult extends StatefulWidget {
  const MyResult({super.key});

  @override
  State<MyResult> createState() => _MyResultState();
}

class _MyResultState extends State<MyResult> {
  @override
  Widget build(BuildContext context) {
    String? textDropdown1 = context.watch<MyVariableToListen>().textDropdown1;
    String? textDropdown2 = context.watch<MyVariableToListen>().textDropdown2;
    int? poids = context.watch<MyVariableToListen>().poids;
    String? equation = context.watch<MyVariableToListen>().equation;
    String? volume = context.watch<MyVariableToListen>().volume;

    return Column(
      
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text.rich(
             TextSpan(
              // Note: Styles for TextSpans must be explicitly defined.
              // Child text spans will inherit styles from parent
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                const TextSpan(text: 'Le volume de '),
                TextSpan(
                    text: '$textDropdown1',
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const TextSpan(text: ' à préléver pour un/une '),
                TextSpan(
                    text: '$textDropdown2',
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const TextSpan(text: ' pesant '),
                TextSpan(
                    text: '$poids',
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const TextSpan(
                    text: ' GRAMME',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const TextSpan(text: ' est de:'),
              ],
            ),
          ),
        ),
        Text("$equation",style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        const Text("soit:",style: TextStyle(fontSize: 16.0)),
        const SizedBox(height: 10),
        Text("$volume ml",
            style:
                const TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
                
      ],
    );
  }
}