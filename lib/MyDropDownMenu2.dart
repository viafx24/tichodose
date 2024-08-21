import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyVariableToListen.dart';
import 'MyMedicament.dart';

// Définition du widget Stateful MyDropDownMenu2
class MyDropDownMenu2 extends StatefulWidget {
  const MyDropDownMenu2({super.key});

  @override
  State<MyDropDownMenu2> createState() => _MyDropDownMenu2State();
}

// État associé au widget MyDropDownMenu2
class _MyDropDownMenu2State extends State<MyDropDownMenu2> {
  @override
  Widget build(BuildContext context) {
    // Récupère la valeur actuelle du premier menu déroulant depuis le Provider
    var textDropdown1 = context.watch<MyVariableToListen>().textDropdown1;

    // Obtient la liste complète des médicaments à partir de la classe MyMedicament
    List<MyMedicament> mesMedocs = MyMedicament.getMedicaments();

    // Filtre les médicaments pour ne conserver que ceux dont la catégorie correspond à la valeur de textDropdown1
    final List<MyMedicament> filteredMedicament = mesMedocs
        .where(
            (MyMedicament medicament) => medicament.categorie == textDropdown1)
        .toList();

    // Crée une liste des noms des médicaments filtrés
    final List<String> filteredMedicamentString = filteredMedicament
        .map((MyMedicament medicament) => medicament.nameMedoc)
        .toList();

    // Trie la liste des noms de médicaments par ordre alphabétique
    filteredMedicamentString.sort();

    return DropdownMenu(
      // Clé unique pour le menu déroulant basée sur la valeur de textDropdown1
      key: ValueKey(textDropdown1),
      initialSelection: null, // Pas de sélection initiale
      // controller: dropDownMenu2Controller, // Contrôleur commenté, potentiellement inutile ou non utilisé
      // enableFilter: true, // Activer le filtrage dans le menu commenté
      // requestFocusOnTap: true, // Demander le focus au clic commenté
      width:
          width, // Largeur du menu déroulant, doit être définie ailleurs dans le code
      label: const Text(
          "Choisir un médicament"), // Étiquette affichée sur le menu déroulant
      textStyle: const TextStyle(
          color: Color.fromARGB(
              255, 6, 42, 250)), // Style du texte du menu déroulant

      // Fonction appelée lorsque l'utilisateur sélectionne une option
      onSelected: (newValue) {
        // Met à jour l'état dans MyVariableToListen avec la nouvelle valeur sélectionnée
        context.read<MyVariableToListen>().settextDropdown2(newValue);
        // Réinitialise les autres valeurs dans MyVariableToListen
        context.read<MyVariableToListen>().settextDropdown3(null);
        context.read<MyVariableToListen>().setPoids(null);
        context.read<MyVariableToListen>().setVolume(null);
      },

      // Génère les entrées du menu déroulant à partir des noms de médicaments filtrés
      dropdownMenuEntries:
          filteredMedicamentString.map<DropdownMenuEntry>((value) {
        return DropdownMenuEntry(
          value: value, // Valeur de l'entrée du menu déroulant
          label: value, // Label de l'entrée du menu déroulant
          // Style de l'entrée du menu
          style: MenuItemButton.styleFrom(
            foregroundColor: Color.fromARGB(255, 6, 42, 250),
            // backgroundColor: const Color.fromARGB(255, 212, 234, 251), // Couleur de fond commentée
          ),
        );
      }).toList(), // Convertit la liste d'entrées en liste
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'MyVariableToListen.dart';
// import 'MyMedicament.dart';

// class MyDropDownMenu2 extends StatefulWidget {
//   const MyDropDownMenu2({super.key});

//   @override
//   State<MyDropDownMenu2> createState() => _MyDropDownMenu2State();
// }

// class _MyDropDownMenu2State extends State<MyDropDownMenu2> {

//   @override
//   Widget build(BuildContext context) {
//     var textDropdown1 = context.watch<MyVariableToListen>().textDropdown1;

//     List<MyMedicament> mesMedocs = MyMedicament.getMedicaments();

//     final List<MyMedicament> filteredMedicament = mesMedocs
//         .where((MyMedicament) => MyMedicament.categorie == textDropdown1)
//         .toList();

//     final List<String> filteredMedicamentString = filteredMedicament
//         .map((MyMedicament) => MyMedicament.nameMedoc)
//         .toList();

//     filteredMedicamentString.sort();

//     return DropdownMenu(
//       key: ValueKey(textDropdown1),
//       initialSelection: null,
//       // controller: dropDownMenu2Controller,
//       // enableFilter: true,
//       //requestFocusOnTap: true,
//       width: width,
//       label: const Text("Choisir un médicament"),
//       textStyle: const TextStyle(color:Color.fromARGB(255, 6, 42, 250)),
//       onSelected: (newValue) {
//         context.read<MyVariableToListen>().settextDropdown2(newValue);
//         context.read<MyVariableToListen>().settextDropdown3(null);// David
//         context.read<MyVariableToListen>().setPoids(null);
//         context.read<MyVariableToListen>().setVolume(null);
//       },
//       dropdownMenuEntries:
//           filteredMedicamentString.map<DropdownMenuEntry>((value) {
//         return DropdownMenuEntry(
//           value: value,
//           label: value,
//           style: MenuItemButton.styleFrom(
//             foregroundColor: Color.fromARGB(255, 6, 42, 250),

//           )
//         );
//       }).toList(),
//     );
//   }
// }
