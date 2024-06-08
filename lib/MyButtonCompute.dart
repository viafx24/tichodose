import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyVariableToListen.dart';
import 'MyMedicament.dart';
import 'package:function_tree/function_tree.dart';

class MyButtonCompute extends StatefulWidget {
  const MyButtonCompute({super.key});

  @override
  State<MyButtonCompute> createState() => _MyButtonComputeState();
}

class _MyButtonComputeState extends State<MyButtonCompute> {
  @override
  Widget build(BuildContext context) {
    String? textDropdown1 = context.watch<MyVariableToListen>().textDropdown1;
    String? textDropdown2 = context.watch<MyVariableToListen>().textDropdown2;
    int? poids = context.watch<MyVariableToListen>().poids;
    String? equation = MyMapMedocs[textDropdown1]!.map[textDropdown2];
    equation = equation?.replaceAll("poids", poids.toString());
    String volume = equation!.interpret().toStringAsFixed(3);
    return SizedBox(
      width: 300,
      child: ElevatedButton(
          onPressed: () {
            context.read<MyVariableToListen>().setEquation(equation);
            context.read<MyVariableToListen>().setVolume(volume);
            //print((poids).toString());
          },
          child: const Text('Calcul du volume à préléver')),
    );
  }
}