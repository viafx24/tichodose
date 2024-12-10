// Gestion des dosages spéciaux via radio button.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyVariableToListen.dart';

class MyRadioButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final selectedValue =
        context.watch<MyVariableToListen>().selectedRadioValue;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Radio<String>(
              value: 'Dosage prédefini',
              groupValue: selectedValue,
              onChanged: (value) {
                if (value != null) {
                  // met systématiquement tout en null en aval si il y a modification par l'utilisateur.
                  context.read<MyVariableToListen>().setRadio(value);
                  context.read<MyVariableToListen>().setInputManualDosage(null);
                  context.read<MyVariableToListen>().setInputText();
                  context.read<MyVariableToListen>().setPoids(null);
                  context.read<MyVariableToListen>().setVolume(null);
                  context.read<MyVariableToListen>().settextDropdown3(null); // Réinitialise la sélection du troisième menu déroulant
                }
              },
            ),
            const Text('Dosage prédefini'),
          ],
        ),
        const SizedBox(width: 20), // Espacement entre les boutons
        Row(
          children: [
            Radio<String>(
              value: 'Dosage manuel',
              groupValue: selectedValue,
              onChanged: (value) {
                if (value != null) {
                  context.read<MyVariableToListen>().setRadio(value);
                  context.read<MyVariableToListen>().setInputManualDosage(null);
                  context.read<MyVariableToListen>().setInputText();
                  context.read<MyVariableToListen>().setPoids(null);
                  context.read<MyVariableToListen>().setVolume(null);
                  context.read<MyVariableToListen>().settextDropdown3(null);
                }
              },
            ),
            const Text('Dosage manuel'),
          ],
        ),
      ],
    );
  }
}
