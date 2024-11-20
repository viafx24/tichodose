import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyVariableToListen.dart';

// Déclaration de la classe MyResult, qui est un StatefulWidget
class MyResult extends StatefulWidget {
  // Constructeur de MyResult avec une clé optionnelle
  const MyResult({super.key});

  @override
  State<MyResult> createState() => _MyResultState();
}

// Déclaration de l'état associé à MyResult
class _MyResultState extends State<MyResult> {
  @override
  Widget build(BuildContext context) {
    // Récupère les données nécessaires depuis le contexte à l'aide de Provider
    String? textDropdown2 = context.watch<MyVariableToListen>().textDropdown2;
    String? textDropdown3 = context.watch<MyVariableToListen>().textDropdown3;
    int? poids = context.watch<MyVariableToListen>().poids;
    String? equation = context.watch<MyVariableToListen>().equation;
    String? volume = context.watch<MyVariableToListen>().volume;

    double? volumeAsDouble;
    double volumeAfterDilution = 0;
    String roundVolumeAfterDilution = "";
    String nombreGoutte = "";
    String dilutionFactor = "";
    String volumeMedocDilution = "";
    String volumeNaclDilution = "";

    if (volume != null && poids != null) {
      volumeAsDouble = double.parse(volume);
      if (volumeAsDouble >= 0.015 && poids >= 30) {
        volumeAfterDilution = volumeAsDouble * 5;
        roundVolumeAfterDilution = volumeAfterDilution.toStringAsFixed(2);
        dilutionFactor = 5.toString();
        volumeMedocDilution = 0.1.toString();
        volumeNaclDilution = 0.4.toString();
      }
      if (volumeAsDouble < 0.015 && volumeAsDouble >= 0.005 && poids >= 30) {
        volumeAfterDilution = volumeAsDouble * 10;
        roundVolumeAfterDilution = volumeAfterDilution.toStringAsFixed(2);
        dilutionFactor = 10.toString();
        volumeMedocDilution = 0.1.toString();
        volumeNaclDilution = 0.9.toString();
      }

      if (volumeAsDouble >= 0.015 && poids < 30) {
        volumeAfterDilution = volumeAsDouble * 3;
        roundVolumeAfterDilution = volumeAfterDilution.toStringAsFixed(2);
        nombreGoutte = (double.parse(volumeAsDouble.toStringAsFixed(2)) * 100)
            .toInt()
            .toString();
        dilutionFactor = 3.toString();
        volumeMedocDilution = 0.1.toString();
        volumeNaclDilution = 0.2.toString();
      }

      if (volumeAsDouble < 0.015 && volumeAsDouble >= 0.01 && poids < 30) {
        volumeAfterDilution = volumeAsDouble * 5;
        roundVolumeAfterDilution = volumeAfterDilution.toStringAsFixed(2);
        nombreGoutte = (double.parse(volumeAsDouble.toStringAsFixed(2)) * 100)
            .toInt()
            .toString();
        dilutionFactor = 5.toString();
        volumeMedocDilution = 0.1.toString();
        volumeNaclDilution = 0.4.toString();
      }

      if (volumeAsDouble < 0.01 && volumeAsDouble >= 0.005 && poids < 30) {
        volumeAfterDilution = volumeAsDouble * 10;
        roundVolumeAfterDilution = volumeAfterDilution.toStringAsFixed(2);
        nombreGoutte = (double.parse(volumeAsDouble.toStringAsFixed(2)) * 100)
            .toInt()
            .toString();
        dilutionFactor = 10.toString();
        volumeMedocDilution = 0.1.toString();
        volumeNaclDilution = 0.9.toString();
      }

      // if (volumeAsDouble < 0.005) {
      //   volumeAfterDilution = volumeAsDouble * 50;
      //   dilutionFactor = 50.toString();
      //   volumeMedocDilution = 0.02.toString();
      //   volumeNaclDilution = 0.98.toString();
      // }
    }

    return Padding(
      padding: const EdgeInsets.all(
          16.0), // Ajoute un padding de 16 pixels autour du contenu
      child: Column(
        children: [
          // Affiche un texte riche avec plusieurs styles
          Text.rich(
            TextSpan(
              style: const TextStyle(
                fontSize: 14.0, // Taille de police par défaut pour le texte
                color: Colors.black, // Couleur de texte par défaut
              ),
              children: <TextSpan>[
                const TextSpan(text: 'Le volume de '),
                TextSpan(
                    text: '$textDropdown2',
                    style: const TextStyle(
                        fontWeight: FontWeight
                            .bold)), // Met en gras le texte de textDropdown2
                const TextSpan(text: ' à prélever pour un(e) '),
                TextSpan(
                    text: '$textDropdown3',
                    style: const TextStyle(
                        fontWeight: FontWeight
                            .bold)), // Met en gras le texte de textDropdown3
                const TextSpan(text: ' pesant '),
                TextSpan(
                    text: '$poids',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold)), // Met en gras le poids
                const TextSpan(
                    text: ' GRAMME',
                    style: TextStyle(
                        fontWeight: FontWeight.bold)), // Met en gras "GRAMME"
                const TextSpan(text: ' est de:'),
              ],
            ),
          ),
          // Affiche le résultat de l'équation avec un style en gras et plus grand
          Text("$equation",
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
          const SizedBox(height: 5), // Espacement vertical entre les widgets
          const Text("soit:", style: TextStyle(fontSize: 16.0)),
          const SizedBox(height: 1), // Espacement vertical entre les widgets
          // Affiche le volume avec une taille de police plus grande
          Text("$volume ml",
              style:
                  const TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),

          const SizedBox(height: 7), // Espacement vertical entre les widgets

          // cas animaux dont le poids est supérieur à 30 gr.

          if (volumeAsDouble != null &&
              poids != null &&
              volumeAsDouble < 0.04 &&
              volumeAsDouble >= 0.005 &&
              poids > 30) ...[
            // Affiche un texte riche avec plusieurs styles
            const Divider(color: Colors.black, thickness: 1),
            Text.rich(
              TextSpan(
                style: const TextStyle(
                  fontSize: 14.0, // Taille de police par défaut pour le texte
                  color: Colors.black, // Couleur de texte par défaut
                ),
                children: <TextSpan>[
                  const TextSpan(
                      text:
                          "Ce volume étant trop faible, on va faire une dilution d'un facteur "),

                  TextSpan(
                      text: dilutionFactor,
                      style: const TextStyle(
                          fontWeight: FontWeight
                              .bold)), // Met en gras le texte de textDropdown2

                  const TextSpan(text: ". Prélevez déjà "),

                  TextSpan(
                      text: volumeMedocDilution,
                      style: const TextStyle(
                          fontWeight: FontWeight
                              .bold)), // Met en gras le texte de textDropdown2
                  const TextSpan(
                      text: ' ml',
                      style: TextStyle(
                          fontWeight: FontWeight
                              .bold)), // Met en gras le texte de textDropdown2),

                  const TextSpan(text: " de "),
                  TextSpan(
                      text: '$textDropdown2',
                      style: const TextStyle(
                          fontWeight: FontWeight
                              .bold)), // Met en gras le texte de textDropdown3
                  const TextSpan(text: ' puis prélevez '),
                  TextSpan(
                      text: volumeNaclDilution,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold)), // Met en gras le poids

                  const TextSpan(
                      text: " ml",
                      style: TextStyle(fontWeight: FontWeight.bold)),

                  const TextSpan(text: ' de '),

                  const TextSpan(
                      text: "Nacl",
                      style: TextStyle(fontWeight: FontWeight.bold)),

                  const TextSpan(
                      text:
                          ". Tapotez pour mélanger puis expulsez le liquide jusqu'à :"),
                ],
              ),
            ),

            //const SizedBox(height: 1), // Espacement vertical entre les widgets
            // Affiche le volume avec une taille de police plus grande
            Text("$roundVolumeAfterDilution ml",
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold)),
            const Divider(color: Colors.black, thickness: 1),
          ],

          if (volumeAsDouble != null &&
              poids != null &&
              volumeAsDouble < 0.04 &&
              volumeAsDouble >= 0.005 &&
              poids <= 30) ...[
            // Affiche un texte riche avec plusieurs styles
            const Divider(color: Colors.black, thickness: 1),
            Text.rich(
              TextSpan(
                style: const TextStyle(
                  fontSize: 14.0, // Taille de police par défaut pour le texte
                  color: Colors.black, // Couleur de texte par défaut
                ),
                children: <TextSpan>[
                  const TextSpan(
                      text: 'Pour une V.O',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  const TextSpan(text: ", préparez une seringue de "),

                  const TextSpan(
                      text: '0.1 ml',
                      style: TextStyle(
                          fontWeight: FontWeight
                              .bold)), // Met en gras le texte de textDropdown2

                  const TextSpan(text: " de "),

                  TextSpan(
                      text: '$textDropdown2',
                      style: const TextStyle(
                          fontWeight: FontWeight
                              .bold)), // Met en gras le texte de textDropdown2

                  const TextSpan(text: " puis donnez avec une pipette rose:"),
                ],
              ),
            ),

            Text("$nombreGoutte goutte(s)",
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold)),

            const Divider(color: Colors.black, thickness: 1),
            Text.rich(
              TextSpan(
                style: const TextStyle(
                  fontSize: 14.0, // Taille de police par défaut pour le texte
                  color: Colors.black, // Couleur de texte par défaut
                ),
                children: <TextSpan>[
                  const TextSpan(
                      text: "Pour une I.M ou S.C",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const TextSpan(text: ", on dilue d'un facteur "),

                  TextSpan(
                      text: dilutionFactor,
                      style: const TextStyle(
                          fontWeight: FontWeight
                              .bold)), // Met en gras le texte de textDropdown2

                  const TextSpan(text: ". Prélevez déjà "),

                  TextSpan(
                      text: volumeMedocDilution,
                      style: const TextStyle(
                          fontWeight: FontWeight
                              .bold)), // Met en gras le texte de textDropdown2
                  const TextSpan(
                      text: ' ml',
                      style: TextStyle(
                          fontWeight: FontWeight
                              .bold)), // Met en gras le texte de textDropdown2),

                  const TextSpan(text: " de "),
                  TextSpan(
                      text: '$textDropdown2',
                      style: const TextStyle(
                          fontWeight: FontWeight
                              .bold)), // Met en gras le texte de textDropdown3
                  const TextSpan(text: ' puis '),
                  TextSpan(
                      text: volumeNaclDilution,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold)), // Met en gras le poids

                  const TextSpan(
                      text: " ml",
                      style: TextStyle(fontWeight: FontWeight.bold)),

                  const TextSpan(text: ' de '),

                  const TextSpan(
                      text: "Nacl",
                      style: TextStyle(fontWeight: FontWeight.bold)),

                  const TextSpan(
                      text:
                          ". Mélangez puis expulsez le surplus de liquide jusqu'à :"),
                ],
              ),
            ),

            const SizedBox(height: 1), // Espacement vertical entre les widgets
            // Affiche le volume avec une taille de police plus grande
            Text("$roundVolumeAfterDilution ml",
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold)),
            const Divider(color: Colors.black, thickness: 1),
          ],

          if (volumeAsDouble != null && volumeAsDouble < 0.005) ...[
            const Divider(color: Colors.black, thickness: 1),
            const Text(
                "Dans ce cas précis, la méthode de dilution appropriée necessite une discussion avec une soigneuse.",
                style: TextStyle(fontSize: 14.0)),
            const Divider(color: Colors.black, thickness: 1),
          ],
          // // Affiche un avertissement sur la vérification des résultats
          const Text("Pour l'instant, vérifiez les calculs par vous-même. ",
              style: TextStyle(fontSize: 12.0, color: Colors.red)),
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'MyVariableToListen.dart';

// class MyResult extends StatefulWidget {
//   const MyResult({super.key});

//   @override
//   State<MyResult> createState() => _MyResultState();
// }

// class _MyResultState extends State<MyResult> {
//   @override
//   Widget build(BuildContext context) {
//     String? textDropdown2 = context.watch<MyVariableToListen>().textDropdown2;
//     String? textDropdown3 = context.watch<MyVariableToListen>().textDropdown3;
//     int? poids = context.watch<MyVariableToListen>().poids;
//     String? equation = context.watch<MyVariableToListen>().equation;
//     String? volume = context.watch<MyVariableToListen>().volume;

//     return Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Text.rich(
//               TextSpan(
//                 // Note: Styles for TextSpans must be explicitly defined.
//                 // Child text spans will inherit styles from parent
//                 style: const TextStyle(
//                   fontSize: 14.0,
//                   color: Colors.black,
//                 ),
//                 children: <TextSpan>[
//                   const TextSpan(text: 'Le volume de '),
//                   TextSpan(
//                       text: '$textDropdown2',
//                       style: const TextStyle(fontWeight: FontWeight.bold)),
//                   const TextSpan(text: ' à préléver pour un(e) '),
//                   TextSpan(
//                       text: '$textDropdown3',
//                       style: const TextStyle(fontWeight: FontWeight.bold)),
//                   const TextSpan(text: ' pesant '),
//                   TextSpan(
//                       text: '$poids',
//                       style: const TextStyle(fontWeight: FontWeight.bold)),
//                   const TextSpan(
//                       text: ' GRAMME',
//                       style: TextStyle(fontWeight: FontWeight.bold)),
//                   const TextSpan(text: ' est de:'),
//                 ],
//               ),
//             ),
//             Text("$equation",
//                 style: const TextStyle(
//                     fontSize: 18.0, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 5),
//             const Text("soit:", style: TextStyle(fontSize: 16.0)),
//             const SizedBox(height: 1),
//             Text("$volume ml",
//                 style: const TextStyle(
//                     fontSize: 28.0, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 7),
//             const Text(
//                 "Les volumes à prélever inférieurs à 0.03 ml doivent faire l'objet d'un protocole de dilution. ",
//                 style: TextStyle(fontSize: 12.0, color: Colors.cyan)),
//             const Text(
//                 "Ne faites pas une confiance aveugle à ce logiciel. Vérifier les calculs par vous-même. ",
//                 style: TextStyle(fontSize: 12.0, color: Colors.red)),
//           ],
//         ));
//   }
// }
