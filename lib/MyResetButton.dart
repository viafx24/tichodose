import 'package:flutter/material.dart';
import 'MyVariableToListen.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:provider/provider.dart';

class MyResetButton extends StatefulWidget {
  // Constructeur de la classe MyResetButton
  const MyResetButton({super.key});

  @override
  State<MyResetButton> createState() => _MyResetButtonState();
}

class _MyResetButtonState extends State<MyResetButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300, // Définit la largeur du bouton à 300 pixels
      child: ElevatedButton(
        onPressed: () {
          // Réinitialise toutes les variables de l'état en accédant à MyVariableToListen
          context.read<MyVariableToListen>().settextDropdown1(
              null); // Réinitialise la sélection du premier menu déroulant
          context.read<MyVariableToListen>().settextDropdown2(
              null); // Réinitialise la sélection du deuxième menu déroulant
          context.read<MyVariableToListen>().settextDropdown3(
              null); // Réinitialise la sélection du troisième menu déroulant
          context
              .read<MyVariableToListen>()
              .setPoids(null); // Réinitialise le poids
          context
              .read<MyVariableToListen>()
              .setVolume(null); // Réinitialise le volume

          // Utilise Phoenix pour redémarrer l'application, ce qui réinitialise l'état de l'application
          Phoenix.rebirth(context);
        },
        child:
            const Text('Reset / nouveau calcul'), // Texte affiché sur le bouton
      ),
      
    );
  }
}



// import 'package:flutter/material.dart';
// import 'MyVariableToListen.dart';
// import 'package:flutter_phoenix/flutter_phoenix.dart';
// import 'package:provider/provider.dart';

// class MyResetButton extends StatefulWidget {
//   const MyResetButton({super.key});

//   @override
//   State<MyResetButton> createState() => _MyResetButtonState();
// }

// class _MyResetButtonState extends State<MyResetButton> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 300,
//       child: ElevatedButton(
        
//           onPressed: () {
//             context.read<MyVariableToListen>().settextDropdown1(null);
//             context.read<MyVariableToListen>().settextDropdown2(null);
//             context.read<MyVariableToListen>().settextDropdown3(null);
//             context.read<MyVariableToListen>().setPoids(null);
//             context.read<MyVariableToListen>().setVolume(null);
//             Phoenix.rebirth(context);
//           },
         
//           child: const Text('Reset / nouveau calcul')),
//     );
        
//   }
// }