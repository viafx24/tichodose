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

    // Récupération du mode d'administration

    String? mode = myMapMedocs[textDropdown2]?.nameMode;
    // Récupération des infos supplementaires
    String? info = myMapMedocs[textDropdown2]?.nameInfo;
    // Récupération de l'équation de calcul à partir de la carte de médicaments
    String? equation = myMapMedocs[textDropdown2]!.map[textDropdown3];

    // Remplacement de la variable "poids" dans l'équation par la valeur du poids
    equation = equation?.replaceAll("poids", poids.toString());

    // Interprétation de l'équation et formatage du résultat avec 4 décimales
    String volume = equation!.interpret().toStringAsFixed(4);
    double volumeAsDouble =
        double.parse(volume); // Conversion du volume en double

    // Ajustement du formatage du volume en fonction de sa taille
    if (volumeAsDouble >= 0.001 && volumeAsDouble < limiteVolumePipetable) {
      volume =
          equation.interpret().toStringAsFixed(3); // Formatage avec 3 décimales
    }

    if (volumeAsDouble >= limiteVolumePipetable) {
      volume =
          equation.interpret().toStringAsFixed(2); // Formatage avec 2 décimales
    }

    double volumeAfterDilution = 0;
    String roundVolumeAfterDilution = "";
    String nombreGoutte = "";
    String dilutionFactor = "";
    String volumeMedocDilution = "";
    String volumeNaclDilution = "";

    if (poids != null && volumeAsDouble < limiteVolumePipetable) {
      if (volumeAsDouble >= 0.02) {
        volumeAfterDilution = volumeAsDouble * 3;
        roundVolumeAfterDilution = ((volumeAfterDilution * 100).round() / 100)
            .toStringAsFixed(
                2); // pour gérer l'imprécision de tostringasfixed, on utilise round et on passe en entier en mutlipliant par 100
        nombreGoutte = ((volumeAsDouble * 100).round())
            .toString(); // Arrondi pour les gouttes
        dilutionFactor = 3.toString();
        volumeMedocDilution = 0.1.toString();
        volumeNaclDilution = 0.2.toString();
      }
      if (volumeAsDouble < 0.02 && volumeAsDouble >= 0.01) {
        volumeAfterDilution = volumeAsDouble * 5;
        roundVolumeAfterDilution =
            ((volumeAfterDilution * 100).round() / 100).toStringAsFixed(2);
        nombreGoutte = ((volumeAsDouble * 100).round())
            .toString(); // Arrondi pour les gou// pour gérer l'imprécision de tostringasfixed, on utilise round et on passe en entier en mutlipliant par 100
        dilutionFactor = 5.toString();
        volumeMedocDilution = 0.1.toString();
        volumeNaclDilution = 0.4.toString();
      }

      if (volumeAsDouble < 0.01 && volumeAsDouble >= limiteVolumeDilution) {
        volumeAfterDilution = volumeAsDouble * 10;
        roundVolumeAfterDilution = ((volumeAfterDilution * 100).round() / 100)
            .toStringAsFixed(
                2); // pour gérer l'imprécision de tostringasfixed, on utilise round et on passe en entier en mutlipliant par 100
        nombreGoutte = ((volumeAsDouble * 100).round())
            .toString(); // Arrondi pour les gouttes
        dilutionFactor = 10.toString();
        volumeMedocDilution = 0.1.toString();
        volumeNaclDilution = 0.9.toString();
      }
    }

    // Retourne un bouton ElevatedButton encapsulé dans un SizedBox
    return SizedBox(
      width: 300, // Largeur fixe du bouton
      child: ElevatedButton(
        onPressed: () {
          // Lors du clic sur le bouton, mettre à jour les variables d'état
          context.read<MyVariableToListen>().setEquation(equation);
          context.read<MyVariableToListen>().setVolume(volume);
          context.read<MyVariableToListen>().setvolumeAsDouble(volumeAsDouble);
          context
              .read<MyVariableToListen>()
              .setVolumeAfterDilution(volumeAfterDilution);
          context
              .read<MyVariableToListen>()
              .setRoundVolumeAfterDilution(roundVolumeAfterDilution);
          context.read<MyVariableToListen>().setNombreGoutte(nombreGoutte);
          context.read<MyVariableToListen>().setDilutionFactor(dilutionFactor);
          context
              .read<MyVariableToListen>()
              .setVolumeMedocDilution(volumeMedocDilution);
          context
              .read<MyVariableToListen>()
              .setVolumeNaclDilution(volumeNaclDilution);
          context.read<MyVariableToListen>().setMode(mode);
          context.read<MyVariableToListen>().setInfo(info);
          // La ligne suivante est commentée, mais elle pourrait servir à déboguer
          // print((poids).toString());
        },
        child: const Text(
            'Calcul du volume à prélever'), // Texte affiché sur le bouton
      ),
    );
  }
}
