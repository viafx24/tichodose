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


// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'MyVariableToListen.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyRadioButton(),
//     );
//   }
// }

// class MyRadioButton extends StatefulWidget {
//   @override
//   _MyRadioButtonState createState() => _MyRadioButtonState();
// }

// class _MyRadioButtonState extends State<MyRadioButton> {
//   String? _selectedOption =
//       "Dosage prédefini"; // Variable pour suivre l'option sélectionnée

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Row(
//           children: [
//             Radio<String>(
//               value: "Dosage prédefini",
//               groupValue: _selectedOption,
//               onChanged: (value) {
//                 context.read<MyVariableToListen>().setRadio(value);
//               },
//             ),
//             Text("Dosage prédefini"),
//           ],
//         ),
//         SizedBox(width: 20), // Espace entre les deux options
//         Row(
//           children: [
//             Radio<String>(
//               value: "Dosage manuel",
//               groupValue: _selectedOption,
//               onChanged: (String? value) {
//                 setState(() {
//                   _selectedOption = value;
//                 });
//               },
//             ),
//             Text("Dosage manuel"),
//           ],
//         ),
//       ],
//     );
//   }
// }
