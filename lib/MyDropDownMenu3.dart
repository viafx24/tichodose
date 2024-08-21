import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyVariableToListen.dart';
//import 'Medicaments_Data.dart'; // Import commenté, potentiellement non utilisé
import 'MyMedicament.dart';

// Définition du widget Stateful MyDropDownMenu3
class MyDropDownMenu3 extends StatefulWidget {
  const MyDropDownMenu3({super.key});

  @override
  State<MyDropDownMenu3> createState() => _MyDropDownMenu3State();
}

// État associé au widget MyDropDownMenu3
class _MyDropDownMenu3State extends State<MyDropDownMenu3> {
  // Commentaire sur la variable inutilisée
  // final TextEditingController dropDownMenu3Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Récupère la valeur actuelle du deuxième menu déroulant depuis le Provider
    var textDropdown2 = context.watch<MyVariableToListen>().textDropdown2;

    // Obtient la carte des médicaments à partir de la classe MyMedicament
    Map<String, MyMedicament> myMapMedocs = MyMedicament.getMedicamentsMap();

    // Récupère les clés du médicament correspondant à la valeur de textDropdown2
    List<String> mapMedocsKeys = myMapMedocs[textDropdown2]!.map.keys.toList();

    // Trie les clés par ordre alphabétique
    mapMedocsKeys.sort();

    return DropdownMenu(
      // Clé unique pour le menu déroulant basée sur la valeur de textDropdown2
      key: ValueKey(textDropdown2),
      initialSelection: null, // Pas de sélection initiale
      // controller: dropDownMenu3Controller, // Contrôleur commenté, potentiellement inutile ou non utilisé
      // enableFilter: true, // Filtrage activé commenté
      enableSearch: true, // Recherche activée
      // requestFocusOnTap est activé/désactivé par les plateformes quand il est nul
      // Sur les plateformes mobiles, il est faux par défaut. Le définir sur vrai
      // demandera le focus sur le champ de texte et le clavier virtuel apparaîtra ensuite
      // Sur les plateformes de bureau, il est vrai par défaut.
      // requestFocusOnTap: true, // Commenté, activation/désactivation automatique par plateforme
      width:
          width, // Largeur du menu déroulant, doit être définie ailleurs dans le code
      label: const Text(
          "Choisir un animal/dosage"), // Étiquette affichée sur le menu déroulant
      textStyle: const TextStyle(
          color: Color.fromARGB(
              255, 184, 2, 144)), // Style du texte du menu déroulant

      // Fonction appelée lorsque l'utilisateur sélectionne une option
      onSelected: (newValue) {
        // Met à jour l'état dans MyVariableToListen avec la nouvelle valeur sélectionnée
        context.read<MyVariableToListen>().settextDropdown3(newValue);
        // Réinitialise le poids et le volume
        context.read<MyVariableToListen>().setPoids(null);
        context.read<MyVariableToListen>().setVolume(null);
        // Si le contrôleur de texte d'entrée est non nul, met à jour la valeur d'entrée
        if (context.read<MyVariableToListen>().inputTextController != null) {
          context.read<MyVariableToListen>().setInputText();
        }
      },

      // Génère les entrées du menu déroulant à partir des clés des médicaments
      dropdownMenuEntries: mapMedocsKeys.map<DropdownMenuEntry>((value) {
        return DropdownMenuEntry(
          value: value, // Valeur de l'entrée du menu déroulant
          label: value, // Label de l'entrée du menu déroulant
          // Style de l'entrée du menu
          style: MenuItemButton.styleFrom(
            foregroundColor: Color.fromARGB(255, 184, 2, 144),
            // foregroundColor: test.color, // Couleur du texte commentée, peut être un test
          ),
        );
      }).toList(), // Convertit la liste d'entrées en liste
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'MyVariableToListen.dart';
// //import 'Medicaments_Data.dart';
// import 'MyMedicament.dart';

// class MyDropDownMenu3 extends StatefulWidget {
//   const MyDropDownMenu3({super.key});

//   @override
//   State<MyDropDownMenu3> createState() => _MyDropDownMenu3State();
// }

// class _MyDropDownMenu3State extends State<MyDropDownMenu3> {
//   //final TextEditingController dropDownMenu3Controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     var textDropdown2 = context.watch<MyVariableToListen>().textDropdown2;
//     Map<String, MyMedicament> myMapMedocs = MyMedicament.getMedicamentsMap();
//     List mapMedocsKeys = myMapMedocs[textDropdown2]!.map.keys.toList();
//     mapMedocsKeys.sort();

//     return DropdownMenu(
//       key: ValueKey(textDropdown2),
//       initialSelection: null,
//       // controller: dropDownMenu3Controller,
//       // enableFilter: true,
//       enableSearch: true,
//       // // requestFocusOnTap is enabled/disabled by platforms when it is null.
//       // // On mobile platforms, this is false by default. Setting this to true will
//       // // trigger focus request on the text field and virtual keyboard will appear
//       // // afterward. On desktop platforms however, this defaults to true.
//       //requestFocusOnTap: true,
//       width: width,
//       label: const Text("Choisir un animal/dosage"),
//       textStyle: const TextStyle(color:Color.fromARGB(255, 184, 2, 144)),
//       onSelected: (newValue) {
//         context.read<MyVariableToListen>().settextDropdown3(newValue);
//         context.read<MyVariableToListen>().setPoids(null);
//         context.read<MyVariableToListen>().setVolume(null);
//         if (context.read<MyVariableToListen>().inputTextController != null) {
//         context.read<MyVariableToListen>().setInputText();
//          }

//       },

//       dropdownMenuEntries:
//           mapMedocsKeys.map<DropdownMenuEntry>((value) {
//         return DropdownMenuEntry(
//           value: value,
//           label: value,
//           style: MenuItemButton.styleFrom(
//             foregroundColor: Color.fromARGB(255, 184, 2, 144),
//           // foregroundColor: test.color,
//           )
//         );
//       }).toList(),
//     );
//   }
// }