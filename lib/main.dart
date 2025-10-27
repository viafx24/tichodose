// fichier principale d'entrée dans l'application. Son rôle principal est de gérer l'empilement des widgets
// et ce, de manière conditionnel.

import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:provider/provider.dart';
import 'MyVariableToListen.dart';
import 'MyDropDownMenu1.dart';
import 'MyDropDownMenu2.dart';
import 'MyDropDownMenu3.dart';
import 'MyInputField.dart';
import 'MyResetButton.dart';
import 'MyResult.dart';
import 'Medicaments_Data.dart';
import 'MyRadioButton.dart';
import 'MyInputFieldManual.dart';
import 'CalculationAndDilution.dart';

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
          // Fournir une instance de CalculationAndDilution à tout le sous-arbre
          ChangeNotifierProvider(create: (_) => CalculationAndDilution()),
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
    //int? poids = context.watch<MyVariableToListen>().poids;
    String? volume = context.watch<MyVariableToListen>().volume;
    String selectedRadioValue =
        context.watch<MyVariableToListen>().selectedRadioValue;

    String? inputManualDosage =
        context.watch<MyVariableToListen>().inputManualDosage;

    return MaterialApp(
      debugShowCheckedModeBanner: false, // Supprimer le bandeau de débogage
      theme: ThemeData(
        useMaterial3: true, // Utiliser le thème Material Design 3
        colorSchemeSeed:
            Colors.green, // Définir la couleur du schéma de couleurs
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Align(
            alignment: Alignment.topCenter, // Centrer le contenu
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: widgetSpace), // Espacement au-dessus
                  const MyResetButton(), // Bouton de réinitialisation
                  SizedBox(height: widgetSpace), // Espacement au-dessus
                  const MyDropDownMenu1(), // Menu déroulant 1

                  // Ajouter MyDropDownMenu2 si textDropdown1 n'est pas nul
                  if (textDropdown1 != null)
                    Column(
                      children: [
                        SizedBox(height: widgetSpace),
                        const MyDropDownMenu2()
                      ],
                    )
                  else
                    const SizedBox.shrink(),

                  // Ajouter MyDropDownMenu3 si textDropdown2 n'est pas nul
                  if (textDropdown2 != null &&
                      textDropdown1 != '\u200B Cas spécial sans calcul')
                    Column(
                      children: [
                        SizedBox(height: widgetSpaceSmall), // Espacement
                        MyRadioButton(),
                        SizedBox(height: widgetSpaceSmall),
                        selectedRadioValue == "Dosage prédefini"
                            ? const MyDropDownMenu3()
                            : selectedRadioValue == "Dosage manuel"
                                ? MyInputFieldManual()
                                : const SizedBox.shrink(),
                      ],
                    )
                  else
                    const SizedBox.shrink(),

                  // Ajouter MyInputField si textDropdown3 n'est pas nul ou si inputManualDosage n'est pas nul
                  if (textDropdown3 != null || inputManualDosage != null)
                    Column(
                      children: [
                        SizedBox(height: widgetSpace),
                        const MyInputField(),
                      ],
                    )
                  else
                    const SizedBox.shrink(),

// Ajouter MyResult si volume est non nul ou selon les conditions spécifiques
                  if (volume != null ||
                      (textDropdown1 == '\u200B Cas spécial sans calcul' &&
                          textDropdown2 != null)) ...[
                    const MyResult(),
                  ] else ...[
                    const SizedBox.shrink(),
                  ],

                  // gestion  de la fin (avertissement et mention)

                  const Padding(
                    padding: EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                        bottom: 16.0,
                        top:
                            8), // Ajoute un padding de 16 pixels autour du contenu
                    child: Column(
                      children: [
                        Divider(
                            color: Colors.black, thickness: 1), // Séparateur
                        Text(
                          "Pour l'instant, vérifiez les calculs par vous-même.",
                          style: TextStyle(fontSize: 14.0, color: Colors.red),
                        ),
                        Divider(
                            color: Colors.black, thickness: 1), // Séparateur
                        Text(
                          "Tichodose 0.3 / Phase de test (Octobre 2025)",
                          style: TextStyle(fontSize: 14.0, color: Colors.cyan),
                        ),
                        Divider(
                            color: Colors.black, thickness: 1), // Séparateur
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
