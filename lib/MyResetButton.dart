import 'package:flutter/material.dart';
import 'MyVariableToListen.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:provider/provider.dart';

class MyResetButton extends StatefulWidget {
  const MyResetButton({super.key});

  @override
  State<MyResetButton> createState() => _MyResetButtonState();
}

class _MyResetButtonState extends State<MyResetButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
        
          onPressed: () {
            context.read<MyVariableToListen>().settextDropdown1(null);
            context.read<MyVariableToListen>().settextDropdown2(null);
            context.read<MyVariableToListen>().setPoids(null);
            context.read<MyVariableToListen>().setVolume(null);
            Phoenix.rebirth(context);
          },
         
          child: const Text('reset')),
    );
        
  }
}