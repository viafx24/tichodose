// cette classe gère les calculs, les dilutions et le formatage des données avec le bon chiffrage aprés la virgule.

import 'package:flutter/material.dart'; // Importation des widgets et matériaux Flutter
import 'package:provider/provider.dart'; // Importation de Provider pour la gestion d'état
import 'MyVariableToListen.dart'; // Importation de la classe pour la gestion des variables d'état
import 'MyMedicament.dart'; // Importation de la classe pour les médicaments
import 'package:function_tree/function_tree.dart'; // Importation pour l'interprétation des expressions mathématiques

class CalculationAndDilution with ChangeNotifier {
  String _formatVolume(num value, double limiteVolumePipetable) {
    double roundedValue = (value * 10000).round() / 10000;
    // Logique de formatage du volume
    if (roundedValue >= 0.001 && roundedValue < limiteVolumePipetable) {
      return roundedValue.toStringAsFixed(3); // 3 chiffres entre 0.001 et 0.04
    } else if (roundedValue >= limiteVolumePipetable && roundedValue <= 1) {
      return roundedValue
          .toStringAsFixed(2); // 2 chiffres aprés la virgule si entre 0.04 et 1
    } else if (roundedValue > 1) {
      return roundedValue.toStringAsFixed(1); // 1 seul chiffre si au dessu de 1
    } else {
      return roundedValue.toStringAsFixed(4); // sinon 4 chiffres.
    }
  }

  void calculateAndUpdate(BuildContext context) {
    // Récupération des valeurs d'état à partir du Provider
    String? textDropdown2 = context.read<MyVariableToListen>().textDropdown2;
    String? textDropdown3 = context.read<MyVariableToListen>().textDropdown3;
    int? poids = context.read<MyVariableToListen>().poids;

    // Récupération de la carte des médicaments
    Map<String, MyMedicament> myMapMedocs = MyMedicament.getMedicamentsMap();

    // Récupération du mode d'administration
    String? mode = myMapMedocs[textDropdown2]?.nameMode;
    // Récupération des infos supplementaires
    String? info = myMapMedocs[textDropdown2]?.nameInfo;
    String? concentrationSolution =
        myMapMedocs[textDropdown2]?.nameConcentrationSolution;

    // Récupération de l'équation de calcul à partir de la carte de médicaments
    String? posologie;

    if (textDropdown3 != null) {
      posologie =
          myMapMedocs[textDropdown2]!.map[textDropdown3]; // dosage predefini
    } else {
      posologie =
          context.read<MyVariableToListen>().inputManualDosage; // dosage manuel
    }

    String? equation = myMapMedocs[textDropdown2]!.nameEquation;

    // Remplacement des variables dans l'équation
    equation = equation.replaceAll("poids", poids.toString());
    equation = equation.replaceAll("posologie", posologie!);
    equation =
        equation.replaceAll("concentrationSolution", concentrationSolution!);

    // Interprétation de l'équation
    num result = equation.interpret();

    // Appel à la fonction pour formater le volume
    String volume = _formatVolume(result, limiteVolumePipetable);
    double volumeAsDouble = double.parse(volume);

    // gestion des dilutions: le facteur de dilution peut être 3 5 ou 10 et le but est d'avoir un volume
    // qui reste a peu prés entre 0.05 et 0.1

// reinitialise tout à chaque fois que appelé:
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
            .toStringAsFixed(2); // s'assure que l'arrondi est correcte
        nombreGoutte = ((volumeAsDouble * 100).round()).toString();
        dilutionFactor = 3.toString();
        volumeMedocDilution = 0.1.toString();
        volumeNaclDilution = 0.2.toString();
      }
      if (volumeAsDouble < 0.02 && volumeAsDouble >= 0.01) {
        volumeAfterDilution = volumeAsDouble * 5;
        roundVolumeAfterDilution =
            ((volumeAfterDilution * 100).round() / 100).toStringAsFixed(2);
        nombreGoutte = ((volumeAsDouble * 100).round()).toString();
        dilutionFactor = 5.toString();
        volumeMedocDilution = 0.1.toString();
        volumeNaclDilution = 0.4.toString();
      }
      if (volumeAsDouble < 0.01 && volumeAsDouble >= limiteVolumeDilution) {
        volumeAfterDilution = volumeAsDouble * 10;
        roundVolumeAfterDilution =
            ((volumeAfterDilution * 100).round() / 100).toStringAsFixed(2);
        nombreGoutte = ((volumeAsDouble * 100).round()).toString();
        dilutionFactor = 10.toString();
        volumeMedocDilution = 0.1.toString();
        volumeNaclDilution = 0.9.toString();
      }
    }

    // Mise à jour de l'état via Provider
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
  }
}
