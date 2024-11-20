import 'package:flutter/material.dart'; // Importation des widgets et matériaux Flutter
import 'package:provider/provider.dart'; // Importation de Provider pour la gestion d'état
import 'MyVariableToListen.dart'; // Importation de la classe pour la gestion des variables d'état
import 'MyMedicament.dart'; // Importation de la classe pour les médicaments
import 'package:function_tree/function_tree.dart'; // Importation pour l'interprétation des expressions mathématiques

// Déclaration de la classe MyButtonCompute qui est un widget Stateful
class MyButtonCompute extends StatefulWidget {
  const MyButtonCompute({super.key}); // Constructeur avec une clé optionnelle

  @override
  State<MyButtonCompute> createState() =>
      _MyButtonComputeState(); // Création de l'état pour ce widget
}

// État associé à MyButtonCompute
class _MyButtonComputeState extends State<MyButtonCompute> {
  @override
  Widget build(BuildContext context) {
    // Récupération des valeurs d'état à partir du Provider
    String? textDropdown2 = context.watch<MyVariableToListen>().textDropdown2;
    String? textDropdown3 = context.watch<MyVariableToListen>().textDropdown3;
    int? poids = context.watch<MyVariableToListen>().poids;

    // Récupération de la carte des médicaments
    Map<String, MyMedicament> myMapMedocs = MyMedicament.getMedicamentsMap();

    // Récupération de l'équation de calcul à partir de la carte de médicaments
    String? equation = myMapMedocs[textDropdown2]!.map[textDropdown3];

    // Remplacement de la variable "poids" dans l'équation par la valeur du poids
    equation = equation?.replaceAll("poids", poids.toString());

    // Interprétation de l'équation et formatage du résultat avec 4 décimales
    String volume = equation!.interpret().toStringAsFixed(4);
    double volumeAsDouble =
        double.parse(volume); // Conversion du volume en double

    // Ajustement du formatage du volume en fonction de sa taille
    if (volumeAsDouble >= 0.001 && volumeAsDouble < 0.035) {
      volume =
          equation.interpret().toStringAsFixed(3); // Formatage avec 3 décimales
    }

    if (volumeAsDouble >= 0.035) {
      volume =
          equation.interpret().toStringAsFixed(2); // Formatage avec 2 décimales
    }

    // Retourne un bouton ElevatedButton encapsulé dans un SizedBox
    return SizedBox(
      width: 300, // Largeur fixe du bouton
      child: ElevatedButton(
        onPressed: () {
          // Lors du clic sur le bouton, mettre à jour les variables d'état
          context.read<MyVariableToListen>().setEquation(equation);
          context.read<MyVariableToListen>().setVolume(volume);
          // La ligne suivante est commentée, mais elle pourrait servir à déboguer
          // print((poids).toString());
        },
        child: const Text(
            'Calcul du volume à prélever'), // Texte affiché sur le bouton
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'MyVariableToListen.dart';
// import 'MyMedicament.dart';
// import 'package:function_tree/function_tree.dart';

// class MyButtonCompute extends StatefulWidget {
//   const MyButtonCompute({super.key});

//   @override
//   State<MyButtonCompute> createState() => _MyButtonComputeState();
// }

// class _MyButtonComputeState extends State<MyButtonCompute> {
//   @override
//   Widget build(BuildContext context) {
//     String? textDropdown2 = context.watch<MyVariableToListen>().textDropdown2;
//     String? textDropdown3 = context.watch<MyVariableToListen>().textDropdown3;
//     int? poids = context.watch<MyVariableToListen>().poids;
//     Map<String, MyMedicament> myMapMedocs = MyMedicament.getMedicamentsMap();
//     String? equation = myMapMedocs[textDropdown2]!.map[textDropdown3];
//     equation = equation?.replaceAll("poids", poids.toString());
//     String volume = equation!.interpret().toStringAsFixed(4);
//     double volumeAsDouble=double.parse(volume);

//     if (volumeAsDouble >= 0.001 && volumeAsDouble < 0.03)
//     {
//       volume = equation.interpret().toStringAsFixed(3);
//     }

//     if (volumeAsDouble >= 0.03)
//     {
//       volume = equation.interpret().toStringAsFixed(2);
//     }

//     return SizedBox(
//       width: 300,
//       child: ElevatedButton(
//           onPressed: () {
//             context.read<MyVariableToListen>().setEquation(equation);
//             context.read<MyVariableToListen>().setVolume(volume);
//             //print((poids).toString());
//           },
//           child: const Text('Calcul du volume à préléver')),
//     );
//   }
// }