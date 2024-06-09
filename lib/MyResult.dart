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
    String? textDropdown2 = context.watch<MyVariableToListen>().textDropdown2;
    String? textDropdown3 = context.watch<MyVariableToListen>().textDropdown3;
    int? poids = context.watch<MyVariableToListen>().poids;
    String? equation = context.watch<MyVariableToListen>().equation;
    String? volume = context.watch<MyVariableToListen>().volume;

    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text.rich(
              TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  const TextSpan(text: 'Le volume de '),
                  TextSpan(
                      text: '$textDropdown2',
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const TextSpan(text: ' à préléver pour un(e) '),
                  TextSpan(
                      text: '$textDropdown3',
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
            Text("$equation",
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            const Text("soit:", style: TextStyle(fontSize: 16.0)),
            const SizedBox(height: 1),
            Text("$volume ml",
                style: const TextStyle(
                    fontSize: 28.0, fontWeight: FontWeight.bold)),
            const SizedBox(height: 7),
            const Text(
                "Ne faites pas une confiance aveugle à ce logiciel. Vérifier les calculs par vous-même.",
                style: TextStyle(fontSize: 12.0, color: Colors.red)),
          ],
        ));
  }
}
