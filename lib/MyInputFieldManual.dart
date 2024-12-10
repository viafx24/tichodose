// L'entrée utilisateur des dosages spéciaux.

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
    String? uniteDosage = myMapMedocs[textDropdown2]?.nameUniteDosage; // récupère si mg/kg ou ml/kg

    return SizedBox(
      width: 300, // Exemple de largeur
      child: TextField(
        controller: controller,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        inputFormatters: [
          // Limite les entrées aux chiffres et au point
          FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d*$'))
        ],
        textAlign:
            TextAlign.center, // Centre le texte à l'intérieur du champ de texte
        decoration: InputDecoration(
          labelText:
              "Entrez une valeur en $uniteDosage", // Remplace hintText par labelText
          labelStyle: const TextStyle(fontSize: 14),
          border: const OutlineInputBorder(),
        ),
        onSubmitted: (value) {
          context.read<MyVariableToListen>().setUniteDosage(uniteDosage);
          context.read<MyVariableToListen>().setInputManualDosage(value);
        },
        onTap: () {
          // Lorsqu'on tape dans le champ de texte, réinitialise le poids et le volume

          context.read<MyVariableToListen>().setInputManualDosage(null);
          context.read<MyVariableToListen>().setInputText();
          context.read<MyVariableToListen>().setPoids(null);
          context.read<MyVariableToListen>().setVolume(null);
        },

        // deux possibilités pour l'utilisateur de valider son entrée: defocus ou entrer/check vert
        // mais avec onTapOutside on n'a pas accés à "value" car il y a déja "event" dedans donc
        // gestion que le chiffre entrée est OK (accepte les points et donc les décimaux) via regexp.

        onTapOutside: ((event) {
          // Lorsque le champ de texte perd le focus, dé-focus le champ de texte
          String currentValue = controller.text;

          // Valide si la valeur est un nombre valide
          bool isValidInput = RegExp(r'^\d+\.?\d*$').hasMatch(currentValue);

          if (isValidInput) {
            // Si la valeur est valide, mettez à jour le contexte
            context.read<MyVariableToListen>().setUniteDosage(uniteDosage);// indique au provider l'unité
            context
                .read<MyVariableToListen>()
                .setInputManualDosage(currentValue);// récupère la valeur entrée par l'utilisateur
          }

          FocusScope.of(context).unfocus();
        }),
      ),
    );
  }
}
