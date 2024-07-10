import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'MyVariableToListen.dart';

class MyInputField extends StatefulWidget {
  const MyInputField({super.key});

  @override
  State<MyInputField> createState() => MyInputFieldState();
}

class MyInputFieldState extends State<MyInputField> {
  // final TextEditingController inputTextController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    TextEditingController? inputTextController = context.watch<MyVariableToListen>().inputTextController;

    return SizedBox(
      width: width,
      child: TextField(
        controller:inputTextController,
        onChanged: (poidsValue) {
          context.read<MyVariableToListen>().setVolume(null);
          poidsValue.characters.isNotEmpty ?
            context.read<MyVariableToListen>().setPoids(int.parse(poidsValue))
            : context.read<MyVariableToListen>().setPoids(null);
          },
        onTap: () {
          context.read<MyVariableToListen>().setPoids(null);
          context.read<MyVariableToListen>().setVolume(null);},

        onTapOutside: ((event) {
              FocusScope.of(context).unfocus();
            }),
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelStyle: TextStyle(fontSize: 14),//hintText: 'Entrer le poids en GRAMME',
            labelText: "Entrer le poids de l'animal en GRAMME"),
            
           
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ], // Only numbers can be entered
      ),
    );
  }
}