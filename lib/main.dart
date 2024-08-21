import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:provider/provider.dart';
import 'MyVariableToListen.dart';
import 'MyButtonCompute.dart';
import 'MyDropDownMenu1.dart';
import 'MyDropDownMenu2.dart';
import 'MyDropDownMenu3.dart';
import 'MyInputField.dart';
import 'MyResetButton.dart';
import 'MyResult.dart';
import 'Medicaments_Data.dart';

// Fonction principale du programme
void main() {
  // Initialiser les données des médicaments
  initializeMedicaments();

  // Lancer l'application avec Phoenix et MultiProvider
  runApp(
    Phoenix(
      child: MultiProvider(
        providers: [
          // Fournir une instance de MyVariableToListen à tout le sous-arbre
          ChangeNotifierProvider(create: (_) => MyVariableToListen()),
        ],
        child: const DropdownMenuApp(),
      ),
    ),
  );
}

// Déclaration du widget principal de l'application
class DropdownMenuApp extends StatefulWidget {
  const DropdownMenuApp({super.key});

  @override
  State<DropdownMenuApp> createState() => _DropdownMenuAppState();
}

// État associé au widget DropdownMenuApp
class _DropdownMenuAppState extends State<DropdownMenuApp> {
  @override
  Widget build(BuildContext context) {
    // Récupération des valeurs observées de MyVariableToListen
    String? textDropdown1 = context.watch<MyVariableToListen>().textDropdown1;
    String? textDropdown2 = context.watch<MyVariableToListen>().textDropdown2;
    String? textDropdown3 = context.watch<MyVariableToListen>().textDropdown3;
    int? poids = context.watch<MyVariableToListen>().poids;
    String? volume = context.watch<MyVariableToListen>().volume;

    return MaterialApp(
      debugShowCheckedModeBanner: false, // Supprimer le bandeau de débogage
      theme: ThemeData(
        useMaterial3: true, // Utiliser le thème Material Design 3
        colorSchemeSeed: Colors.green, // Définir la couleur du schéma de couleurs
      ),
      home: Scaffold(
        body: SafeArea(
          child: Align(
            alignment: Alignment.topCenter, // Centrer le contenu
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: widgetSpace), // Espacement au-dessus
                  const MyDropDownMenu1(), // Menu déroulant 1

                  SizedBox(height: widgetSpace), // Espacement
                  
                  // Ajouter MyDropDownMenu2 si textDropdown1 n'est pas nul
                  if (textDropdown1 != null)
                    const MyDropDownMenu2()
                  else
                    SizedBox.shrink(), // Utiliser SizedBox.shrink() comme espace réservé

                  SizedBox(height: widgetSpace), // Espacement

                  // Ajouter MyDropDownMenu3 si textDropdown2 n'est pas nul
                  if (textDropdown2 != null)
                    const MyDropDownMenu3()
                  else
                    SizedBox.shrink(), // Utiliser SizedBox.shrink() comme espace réservé

                  SizedBox(height: widgetSpace), // Espacement

                  // Ajouter MyInputField si textDropdown3 n'est pas nul
                  if (textDropdown3 != null)
                    const MyInputField()
                  else
                    SizedBox.shrink(), // Utiliser SizedBox.shrink() comme espace réservé

                  SizedBox(height: widgetSpace), // Espacement

                  // Ajouter MyButtonCompute si poids n'est pas nul
                  if (poids != null)
                    const MyButtonCompute()
                  else
                    SizedBox.shrink(), // Utiliser SizedBox.shrink() comme espace réservé

                  // Ajouter MyResult si volume n'est pas nul
                  if (volume != null)
                    const MyResult()
                  else
                    SizedBox.shrink(), // Utiliser SizedBox.shrink() comme espace réservé

                  // Ajouter SizedBox avec hauteur différente selon que volume est nul ou non
                  if (volume != null)
                    const SizedBox(height: 1)
                  else
                    const SizedBox(height: 20),

                  const MyResetButton(), // Bouton de réinitialisation
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}













// import 'package:flutter/material.dart';
// import 'package:flutter_phoenix/flutter_phoenix.dart';
// import 'package:provider/provider.dart';
// import 'MyVariableToListen.dart';
// import 'MyButtonCompute.dart';
// import 'MyDropDownMenu1.dart';
// import 'MyDropDownMenu2.dart';
// import 'MyDropDownMenu3.dart';
// import 'MyInputField.dart';
// import 'MyResetButton.dart';
// import 'MyResult.dart';
// import 'Medicaments_Data.dart';

// // test commentaire
// void main() {
//   // Initialiser les médicaments
//   initializeMedicaments();

//   runApp(
//     Phoenix(
//       child: MultiProvider(
//         providers: [
//           ChangeNotifierProvider(create: (_) => MyVariableToListen()),
//         ],
//         child: const DropdownMenuApp(),
//       ),
//     ),
//   );
// }

// class DropdownMenuApp extends StatefulWidget {
//   const DropdownMenuApp({super.key});

//   @override
//   State<DropdownMenuApp> createState() => _DropdownMenuAppState();
// }

// class _DropdownMenuAppState extends State<DropdownMenuApp> {
//   @override
//   Widget build(BuildContext context) {
//     String? textDropdown1 = context.watch<MyVariableToListen>().textDropdown1;
//     String? textDropdown2 = context.watch<MyVariableToListen>().textDropdown2;
//     String? textDropdown3 = context.watch<MyVariableToListen>().textDropdown3;
//     int? poids = context.watch<MyVariableToListen>().poids;
//     String? volume = context.watch<MyVariableToListen>().volume;

//     return MaterialApp(
//       debugShowCheckedModeBanner: false, // Add this line
//       theme: ThemeData(
//         useMaterial3: true,
//         colorSchemeSeed: Colors.green,
//       ),
//       home: Scaffold(
//         body: SafeArea(
//           child: Align(
//             alignment: Alignment.topCenter,
//             child: SingleChildScrollView(
//               child: Column(
//                 children: <Widget>[
//                   SizedBox(height: widgetSpace),
//                   const MyDropDownMenu1(),
//                   SizedBox(height: widgetSpace),
                  
//                   // Remplacement des ternaires par if-else
//                   if (textDropdown1 != null)
//                     const MyDropDownMenu2()
//                   else
//                     Container(),
                  
//                   SizedBox(height: widgetSpace),
                  
//                   if (textDropdown2 != null)
//                     const MyDropDownMenu3()
//                   else
//                     Container(),
                  
//                   SizedBox(height: widgetSpace),
                  
//                   if (textDropdown3 != null)
//                     const MyInputField()
//                   else
//                     Container(),
                  
//                   SizedBox(height: widgetSpace),
                  
//                   if (poids != null)
//                     const MyButtonCompute()
//                   else
//                     Container(),
                  
//                   // Remplacement des ternaires pour volume
//                   if (volume != null)
//                     const MyResult()
//                   else
//                     Container(),
                  
//                   if (volume != null)
//                     const SizedBox(height: 1)
//                   else
//                     const SizedBox(height: 20),
                  
//                   const MyResetButton(),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }











// import 'package:flutter/material.dart';
// import 'package:flutter_phoenix/flutter_phoenix.dart';
// import 'package:provider/provider.dart';
// import 'MyVariableToListen.dart';
// import 'MyButtonCompute.dart';
// import 'MyDropDownMenu1.dart';
// import 'MyDropDownMenu2.dart';
// import 'MyDropDownMenu3.dart';
// import 'MyInputField.dart';
// import 'MyResetButton.dart';
// import 'MyResult.dart';
// import 'Medicaments_Data.dart';

// // test commentaire
// void main() {

//   // Initialiser les médicaments
//   initializeMedicaments();

//   runApp(
//     Phoenix(
//         child: MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => MyVariableToListen()),
//       ],
//       child: const DropdownMenuApp(),
//     )),
//   );
// }

// class DropdownMenuApp extends StatefulWidget {
//   const DropdownMenuApp({super.key});

//   @override
//   State<DropdownMenuApp> createState() => _DropdownMenuAppState();
// }

// class _DropdownMenuAppState extends State<DropdownMenuApp> {
//   @override
//   Widget build(BuildContext context) {
//     String? textDropdown1 = context.watch<MyVariableToListen>().textDropdown1;
//     String? textDropdown2 = context.watch<MyVariableToListen>().textDropdown2;
//     String? textDropdown3 = context.watch<MyVariableToListen>().textDropdown3;
//     int? poids = context.watch<MyVariableToListen>().poids;
//     String? volume = context.watch<MyVariableToListen>().volume;

//     return MaterialApp(
//         debugShowCheckedModeBanner: false,  // Add this line
//         theme: ThemeData(
//           useMaterial3: true,
//           colorSchemeSeed: Colors.green,
//         ),
//         home: Scaffold(
//             body: SafeArea(
//                 child: Align(
//                     alignment: Alignment.topCenter,
//                     child: SingleChildScrollView(
//                     child: Column(
//                       children: <Widget>[
//                         SizedBox(height: widgetSpace),
//                         const MyDropDownMenu1(),
//                         SizedBox(height: widgetSpace),
//                         textDropdown1 != null
//                             ? const MyDropDownMenu2()
//                             : Container(),
//                         SizedBox(height: widgetSpace),
//                         textDropdown2 != null
//                             ? const MyDropDownMenu3()
//                             : Container(),
//                         SizedBox(height: widgetSpace),
//                         textDropdown3 != null ? const MyInputField() : Container(),
//                         SizedBox(height: widgetSpace),
//                         poids != null ? const MyButtonCompute() : Container(),
//                         //SizedBox(height: 10),
//                         volume != null ? const MyResult() : Container(),
//                         volume != null ? const SizedBox(height: 1):const SizedBox(height: 20),
//                         const MyResetButton()
//                       ],
//                     ))))));
//   }
// }