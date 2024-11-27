import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'MyVariableToListen.dart';
import 'MyMedicament.dart'; // Importation de la classe pour les médicaments

class MyInputFieldManual extends StatefulWidget {
  @override
  _MyInputFieldManualState createState() => _MyInputFieldManualState();
}

class _MyInputFieldManualState extends State<MyInputFieldManual> {
  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    // N'oubliez pas de libérer le contrôleur lorsque le widget est détruit.
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.text =
        context.watch<MyVariableToListen>().inputManualDosageWithUnit;
    String? textDropdown2 = context.watch<MyVariableToListen>().textDropdown2;
    Map<String, MyMedicament> myMapMedocs = MyMedicament.getMedicamentsMap();
    String? uniteDosage = myMapMedocs[textDropdown2]?.nameUniteDosage;

    return SizedBox(
      width: 300, // Exemple de largeur
      child: TextField(
        controller: controller,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        inputFormatters: [
          // Limite les entrées aux chiffres et au point
          FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$'))
        ],
        decoration: InputDecoration(
          hintText: "Entrez une valeur en $uniteDosage",
          labelStyle: const TextStyle(fontSize: 14),
          border: const OutlineInputBorder(),
        ),
        onSubmitted: (value) {
          context.read<MyVariableToListen>().setUniteDosage(uniteDosage);
          context.read<MyVariableToListen>().setInputManualDosage(value);
        },
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'MyVariableToListen.dart';
// import 'MyMedicament.dart'; // Importation de la classe pour les médicaments

// class MyInputFieldManual extends StatelessWidget {
//   final TextEditingController controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     // Récupérer les données du Provider
//     String? textDropdown2 = context.watch<MyVariableToListen>().textDropdown2;
//     Map<String, MyMedicament> myMapMedocs = MyMedicament.getMedicamentsMap();
//     String? uniteDosage = myMapMedocs[textDropdown2]?.uniteDosage;

//     // Synchronisation du contrôleur avec le Provider
//     final providerValue = context.watch<MyVariableToListen>().inputManualDosageWithUnit;

//     // Vérifiez si le texte du contrôleur n'est pas déjà à jour avant de le modifier
//     if (controller.text != providerValue && providerValue.isNotEmpty) {
//       controller.text = providerValue;
//     }

//     return SizedBox(
//       width: 300, // Exemple de largeur
//       child: TextField(
//         controller: controller,
//         keyboardType: const TextInputType.numberWithOptions(decimal: true),
//         decoration: InputDecoration(
//           hintText: "Entrez une valeur en $uniteDosage",
//           labelStyle: const TextStyle(fontSize: 14),
//           border: const OutlineInputBorder(),
//         ),
//         onSubmitted: (value) {
//           // Extraire la valeur saisie (sans unité) et mettre à jour le Provider
//           final numericValue = value.split(' ').first; // Garde uniquement la partie numérique
//           context.read<MyVariableToListen>().setInputManualDosage(numericValue);
//         },
//       ),
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'MyVariableToListen.dart';
// import 'MyMedicament.dart'; // Importation de la classe pour les médicaments

// class MyInputFieldManual extends StatelessWidget {

//   final  TextEditingController controller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     // Utilisation d'un contrôleur de texte pour garder la valeur actuelle
   
//     print("Reconstruire le widget MyInputFieldManual");
//     // Récupérer les données du Provider
//     String? textDropdown2 = context.watch<MyVariableToListen>().textDropdown2;
//     Map<String, MyMedicament> myMapMedocs = MyMedicament.getMedicamentsMap();
//     String? uniteDosage = myMapMedocs[textDropdown2]?.nameUniteDosage;
// // String? mode = myMapMedocs[textDropdown2]?.nameMode;

// //     String? uniteDosage = context.watch<MyVariableToListen>().uniteDosage;

    
//     print('test');
//     print(uniteDosage);

//     // Synchronisation du contrôleur avec le Provider
//     final providerValue =
//         context.watch<MyVariableToListen>().inputManualDosageWithUnit;
    
    

//     if (controller.text != providerValue) {
//       controller.text = providerValue;
//       print(controller.text);
//     }

//     return SizedBox(
//       width: width, // Largeur spécifiée pour le champ de texte
//       child: Row(
//         children: [
//           // Champ de texte avec le contrôleur
//           Expanded(
//             child: TextField(
//               controller: controller,
//               keyboardType: const TextInputType.numberWithOptions(decimal: true),
//               decoration:  InputDecoration(
//                 //labelText: 'Valeur',
//                 hintText: "Entrez une valeur en $uniteDosage",
//                 labelStyle: const TextStyle(fontSize: 14),
//                 border: const OutlineInputBorder(),
//               ),
//               onSubmitted: (value) {
//                 // Lorsque l'utilisateur appuie sur Entrée, on ajoute "mg/kg" et met à jour le provider
//                 context.read<MyVariableToListen>().setInputManualDosage(value);
//                 // Réactive le texte sans "mg/kg" dans le champ de texte
//                 print(value);
//                 print(uniteDosage);
                
//                 //controller.text = '$value $uniteDosage';
//                 print(controller.text);
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
//     TextEditingController controller = TextEditingController();

//     //String? textDropdown2 = context.watch<MyVariableToListen>().textDropdown2;
//     //Map<String, MyMedicament> myMapMedocs = MyMedicament.getMedicamentsMap();
//     // String? uniteDosage = myMapMedocs[textDropdown2]?.uniteDosage;

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
