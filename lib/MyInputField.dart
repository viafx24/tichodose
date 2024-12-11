// myinputfield correspond au champ d'entrée utilisateur pour le poids.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'MyVariableToListen.dart';
import 'CalculationAndDilution.dart';

// Déclare un widget d'entrée personnalisé qui utilise un champ de texte pour entrer des poids.
class MyInputField extends StatefulWidget {
  const MyInputField({super.key});

  @override
  State<MyInputField> createState() => MyInputFieldState();
}

class MyInputFieldState extends State<MyInputField> {
  // Le TextEditingController est commenté ici car il est censé être fourni par le Provider.

  @override
  Widget build(BuildContext context) {
    // Récupère le TextEditingController depuis le Provider MyVariableToListen
    TextEditingController? inputTextController =
        context.watch<MyVariableToListen>().inputTextController;

    // Construit un widget SizedBox pour définir une largeur spécifique pour le TextField
    return SizedBox(
      width: width, // Largeur spécifiée pour le champ de texte
      child: TextField(
        controller:
            inputTextController, // Utilise le contrôleur de texte fourni par MyVariableToListen

        onSubmitted: (poidsValue) {
          context
              .read<MyVariableToListen>()
              .setVolume(null); // Réinitialise le volume

          if (poidsValue.characters.isNotEmpty) {
            // Définit le poids s'il y a une valeur
            context.read<MyVariableToListen>().setPoids(int.parse(poidsValue));

            // Appelle la fonction calculateAndUpdate uniquement si un poids a été défini
            context.read<CalculationAndDilution>().calculateAndUpdate(context);
          } else {
            // Réinitialise le poids s'il n'y a pas de valeur
            context.read<MyVariableToListen>().setPoids(null);
            context.read<MyVariableToListen>().setInputText();
          }
        },

        onTap: () {
          // Lorsqu'on tape dans le champ de texte, réinitialise le poids et le volume
          context.read<MyVariableToListen>().setPoids(null);
          context.read<MyVariableToListen>().setVolume(null);
          context
              .read<MyVariableToListen>()
              .setInputText(); //clear le controller
        },

        // je décide qu'il y a deux manière de valider une entrée utilisateur: en validant normalement
        // avec entrée ou le check vert du smartphone (1) ou bien en quittant la zone sans faire entrer.
        // cela facilite la gestion windows / smartphone ainsi que les gens pour qui le check vert du pavé virtuel
        // n'est pas directement intuitif. Autrement dit, tout fonctionne pour valider une entrée: quitter la zone
        // ou valider.

        onTapOutside: ((event) {
          // Lorsque le champ de texte perd le focus, dé-focus le champ de texte
          String poidsValue = inputTextController!.text;

          // la regexp verifie que le poids est un entier (j'ai été obligé de faire un peu différement ici
          // mais je ne sais plus exactement pourquoi: peut-être parce que le inputformatter ne marchait pas ici.

          if (RegExp(r'^\d+$').hasMatch(poidsValue)) {
            context
                .read<MyVariableToListen>()
                .setVolume(null); // Réinitialise le volume
            context
                .read<MyVariableToListen>()
                .setPoids(int.parse(poidsValue)); // Définit le poids
            context
                .read<CalculationAndDilution>()
                .calculateAndUpdate(context); // Appelle la fonction de calcul
          } else {
            // Réinitialise le poids s'il n'y a pas de valeur
            context
                .read<MyVariableToListen>()
                .setInputText(); //clear le controller
            context.read<MyVariableToListen>().setPoids(null);
          }

          FocusScope.of(context).unfocus();
        }),
        textAlign:
            TextAlign.center, // Centre le texte à l'intérieur du champ de texte
        decoration: const InputDecoration(
            border: OutlineInputBorder(), // Bordure autour du champ de texte
            labelStyle:
                TextStyle(fontSize: 14), // Style du texte de l'étiquette
            labelText:
                "Entrer le poids de l'animal en GRAMME"), // Texte de l'étiquette du champ de texte

        keyboardType: TextInputType
            .number, // Spécifie que le clavier doit être de type numérique
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter
              .digitsOnly // Autorise uniquement les chiffres
        ],
      ),
    );
  }
}
