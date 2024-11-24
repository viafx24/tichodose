import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyVariableToListen.dart';

class MyInputFieldManual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Utilisation d'un contrôleur de texte pour garder la valeur actuelle
    TextEditingController controller = TextEditingController();

    // Mise à jour du contrôleur à chaque changement de valeur dans le provider
    controller.text = context.watch<MyVariableToListen>().inputManualDosageWithUnit;

    return SizedBox(
      width: width, // Largeur spécifiée pour le champ de texte
      child: Row(
        children: [
          // Champ de texte avec le contrôleur
          Expanded(
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                labelText: 'Valeur',
                hintText: 'Entrez un nombre',
                labelStyle: TextStyle(fontSize: 14),
                border: OutlineInputBorder(),
              ),
              onSubmitted: (value) {
                // Lorsque l'utilisateur appuie sur Entrée, on ajoute "mg/kg" et met à jour le provider
                context.read<MyVariableToListen>().setInputManualDosage(value);
                // Réactive le texte sans "mg/kg" dans le champ de texte
                controller.text = '$value mg/kg';
              },
            ),
          ),
        ],
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'MyVariableToListen.dart';

// class MyInputFieldManual extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     TextEditingController controller = TextEditingController();

//     return Padding(
//       padding: const EdgeInsets.all(16.0), // Ajout de marges autour du Row
//       child: Row(
//         children: [
//           // Champ de texte avec le contrôleur
//           Expanded(
//             child: TextField(
//               controller: controller,
//               keyboardType: TextInputType.numberWithOptions(decimal: true),
//               decoration: const InputDecoration(
//                 labelText: 'Valeur',
//                 hintText: 'Entrez un nombre',
//                 labelStyle: TextStyle(fontSize: 14),
//                 border: OutlineInputBorder(),
//               ),
//               onSubmitted: (value) {
//                 // Lorsque l'utilisateur appuie sur Entrée, on ajoute "mg/kg" et on met à jour le provider
//                 String updatedValue = "$value mg/kg";
//                 controller.text = updatedValue;
//                 context.read<MyVariableToListen>().setInputManualDosage(
//                     updatedValue); // Met à jour le provider
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'MyVariableToListen.dart';

// class MyInputFieldManual extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return 

//       SizedBox(
//   width: width,  // Spécifiez la largeur souhaitée ici
//       child: Row(
//         children: [
//           // Champ de texte
//           Expanded(
//             child: TextField(
//               keyboardType: TextInputType.numberWithOptions(decimal: true),
//               decoration: const InputDecoration(
//                 labelText: 'Valeur',
//                 hintText: 'Entrez un nombre',
//                 labelStyle: TextStyle(fontSize: 14),
//                 border: OutlineInputBorder(),
//               ),
//               onSubmitted: (value) {
//                 // Lorsque l'utilisateur appuie sur "Entrée", mettre à jour la valeur avec " mg/kg"
//                 context.read<MyVariableToListen>().setInputManualDosage(value);
//               },
//             ),
//           ),
//           const SizedBox(width: 16), // Espace entre le champ et le texte
//           // Affichage du résultat choisi
//           Consumer<MyVariableToListen>(
//             builder: (context, myVariable, child) {
//               return Text(
//                 myVariable.inputManualDosage, // Afficher la valeur actuelle avec " mg/kg"
//                 style: const TextStyle(fontSize: 16),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:provider/provider.dart';
// import 'MyVariableToListen.dart';

// class MyInputDosageFieldManual extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Row(
//         children: [
//           Expanded(
//             child: TextField(
//               keyboardType: TextInputType.numberWithOptions(decimal: true),
//               inputFormatters: [
//                 FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$')),
//               ],
//               decoration: const InputDecoration(
//                 labelText: 'Valeur',
//                 hintText: 'Entrez un nombre',
//                 labelStyle: TextStyle(fontSize: 14),
//                 border: OutlineInputBorder(),
//               ),
//               onChanged: (value) {

//                 context.read<MyVariableToListen>().setInputManualDosage(value);
//                 // double? parsedValue = double.tryParse(value);
//                 // context.read<MyVariableToListen>().setInputManualDosage(parsedValue);
//               },
//               textInputAction: TextInputAction.done,  // Gère l'action "done" pour le bouton Entrée
//               onEditingComplete: () {
//                 FocusScope.of(context).unfocus();  // Ferme le clavier à l'édition complète
//               },
//             ),
//           ),
//           const SizedBox(width: 16),
//           Consumer<MyVariableToListen>(
//             builder: (context, myVariable, child) {
//               return Text(
//                 myVariable.inputManualDosage?.toString() ?? "Aucune valeur",
//                 style: const TextStyle(fontSize: 16),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:provider/provider.dart';
// import 'MyVariableToListen.dart';

// class MyInputDosageFieldManual extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0), // Ajout de marges autour du Row
//       child: Row(
//         children: [
//           // Champ de texte
//           Expanded(
//             child: TextField(
//               keyboardType: TextInputType.numberWithOptions(decimal: true),
//               inputFormatters: [
//                 // Limite les entrées aux chiffres et au point
//                 FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$')),
//               ],
//               decoration: const InputDecoration(
//                 labelText: 'Valeur',
//                 hintText: 'Entrez un nombre',
//                 labelStyle: TextStyle(fontSize: 14), // Style de texte
//                 border: OutlineInputBorder(),
//               ),
//               onChanged: (value) {
//                 // Mettre à jour la valeur via le provider
//                 context.read<MyVariableToListen>().setInputManualDosage(value);
//               },
//             ),
//           ),
//           const SizedBox(width: 16), // Espace entre le champ et le texte
//           // Affichage du résultat choisi
//           Consumer<MyVariableToListen>(
//             builder: (context, myVariable, child) {
//               return Text(
//                 myVariable.inputManualDosage?.toString() ?? "Aucune valeur", // Affiche la valeur actuelle ou un message si nulle
//                 style: const TextStyle(fontSize: 16),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:provider/provider.dart';
// import 'MyVariableToListen.dart';

// class MyInputFieldManual extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width/2, // Largeur spécifiée pour le champ de texte
//       child: TextField(
//         keyboardType: TextInputType.numberWithOptions(decimal: true),
//         inputFormatters: [
//           // Limite les entrées aux chiffres et au point
//           FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$')),
//         ],
//         decoration: const InputDecoration(
//           labelText: 'Valeur',
//           hintText: 'Entrez un nombre',
//           labelStyle: TextStyle(fontSize: 14), // Style de texte
//           border: OutlineInputBorder(),
//         ),
//         onChanged: (value) {
//           context.read<MyVariableToListen>().setInputManualDosage(
//               value); // Mettre à jour la valeur via le provider
//         },
//       ),
//     );
//   }
// }
