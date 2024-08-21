import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'MyVariableToListen.dart';

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
        onChanged: (poidsValue) {
          // Lorsqu'il y a un changement dans le champ de texte, met à jour le poids
          context
              .read<MyVariableToListen>()
              .setVolume(null); // Réinitialise le volume
          poidsValue.characters.isNotEmpty
              ? context.read<MyVariableToListen>().setPoids(
                  int.parse(poidsValue)) // Définit le poids s'il y a une valeur
              : context.read<MyVariableToListen>().setPoids(
                  null); // Réinitialise le poids s'il n'y a pas de valeur
        },
        onTap: () {
          // Lorsqu'on tape dans le champ de texte, réinitialise le poids et le volume
          context.read<MyVariableToListen>().setPoids(null);
          context.read<MyVariableToListen>().setVolume(null);
        },
        onTapOutside: ((event) {
          // Lorsque le champ de texte perd le focus, dé-focus le champ de texte
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




// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter/services.dart';
// import 'MyVariableToListen.dart';

// class MyInputField extends StatefulWidget {
//   const MyInputField({super.key});

//   @override
//   State<MyInputField> createState() => MyInputFieldState();
// }

// class MyInputFieldState extends State<MyInputField> {
//   // final TextEditingController inputTextController = TextEditingController();


//   @override
//   Widget build(BuildContext context) {
//     TextEditingController? inputTextController = context.watch<MyVariableToListen>().inputTextController;

//     return SizedBox(
//       width: width,
//       child: TextField(
//         controller:inputTextController,
//         onChanged: (poidsValue) {
//           context.read<MyVariableToListen>().setVolume(null);
//           poidsValue.characters.isNotEmpty ?
//             context.read<MyVariableToListen>().setPoids(int.parse(poidsValue))
//             : context.read<MyVariableToListen>().setPoids(null);
//           },
//         onTap: () {
//           context.read<MyVariableToListen>().setPoids(null);
//           context.read<MyVariableToListen>().setVolume(null);},

//         onTapOutside: ((event) {
//               FocusScope.of(context).unfocus();
//             }),
//         textAlign: TextAlign.center,
//         decoration: const InputDecoration(
//             border: OutlineInputBorder(),
//             labelStyle: TextStyle(fontSize: 14),//hintText: 'Entrer le poids en GRAMME',
//             labelText: "Entrer le poids de l'animal en GRAMME"),
            
           
//         keyboardType: TextInputType.number,
//         inputFormatters: <TextInputFormatter>[
//           FilteringTextInputFormatter.digitsOnly
//         ], // Only numbers can be entered
//       ),
//     );
//   }
// }