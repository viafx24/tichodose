// gestion  du premier dropdown (efface tout le reste quand changement dans ce premier dropdown.)

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyVariableToListen.dart';
import 'MyMedicament.dart';

// Définition du widget Stateful MyDropDownMenu1
class MyDropDownMenu1 extends StatefulWidget {
  const MyDropDownMenu1({super.key});

  @override
  State<MyDropDownMenu1> createState() => _MyDropDownMenu1State();
}

// État associé au widget MyDropDownMenu1
class _MyDropDownMenu1State extends State<MyDropDownMenu1> {
  @override
  Widget build(BuildContext context) {
    // Obtient la liste des noms de catégories de médicaments
    List<String> categorieNames = MyMedicament.getCategorieNames();

    return DropdownMenu(
      // Propriétés du DropdownMenu (certaines sont commentées pour l'instant)
      initialSelection: null, // Pas de sélection initiale
      //enableFilter: true, // Activer les filtres de recherche (commenté)
      //enableSearch: true, // Activer la recherche dans le menu (commenté)
      //requestFocusOnTap: false, // Ne pas demander le focus au clic (commenté)
      width: width, // Largeur du menu déroulant (doit être défini ailleurs)
      //labelStyle: const TextStyle(color: Colors.blue), // Style du label (commenté)
      //inputDecorationTheme: InputDecoration(), // Thème de décoration du champ de saisie (commenté)

      // Étiquette du menu déroulant
      label: const Text("Choisir un type de médicament"),
      // Style du texte du menu déroulant
      textStyle: const TextStyle(color: Color.fromARGB(255, 2, 130, 7)),
      // Style du menu (commenté)
      // menuStyle: MenuStyle(backgroundColor: WidgetStateProperty.all(Color.fromARGB(255, 170, 215, 252))),

      // Fonction appelée lorsque l'utilisateur sélectionne une option
      onSelected: (newValue) {
        // Met à jour l'état dans MyVariableToListen avec la nouvelle valeur sélectionnée
        context.read<MyVariableToListen>().settextDropdown1(newValue);
        // Réinitialise les autres valeurs dans MyVariableToListen
        context.read<MyVariableToListen>().settextDropdown2(null);
        context.read<MyVariableToListen>().settextDropdown3(null);
        context.read<MyVariableToListen>().setPoids(null);
        context.read<MyVariableToListen>().setVolume(null);
        context.read<MyVariableToListen>().setInputManualDosage(null);
        context.read<MyVariableToListen>().setInputText();

      },

      // Génère les entrées du menu déroulant à partir des noms de catégories
      dropdownMenuEntries: categorieNames.map<DropdownMenuEntry>((value) {
        return DropdownMenuEntry(
          value: value, // Valeur de l'entrée
          label: value, // Label de l'entrée
          // Style de l'entrée du menu
          style: MenuItemButton.styleFrom(
            foregroundColor: Color.fromARGB(255, 2, 130, 7),
            //backgroundColor: const Color.fromARGB(255, 212, 234, 251), // Couleur de fond (commentée)
          ),
        );
      }).toList(), // Convertit la liste d'entrées en liste
    );
  }
}
