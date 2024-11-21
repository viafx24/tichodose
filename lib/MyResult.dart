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

    double? volumeAsDouble = context.watch<MyVariableToListen>().volumeAsDouble;
    String? roundVolumeAfterDilution =
        context.watch<MyVariableToListen>().roundVolumeAfterDilution;
    String? nombreGoutte = context.watch<MyVariableToListen>().nombreGoutte;
    String? dilutionFactor = context.watch<MyVariableToListen>().dilutionFactor;
    String? volumeMedocDilution =
        context.watch<MyVariableToListen>().volumeMedocDilution;
    String? volumeNaclDilution =
        context.watch<MyVariableToListen>().volumeNaclDilution;

    String? mode = context.watch<MyVariableToListen>().mode;

    String? info = context.watch<MyVariableToListen>().info;

    return Padding(
      padding: const EdgeInsets.all(
          16.0), // Ajoute un padding de 16 pixels autour du contenu
      child: Column(
        children: [
          const Divider(color: Colors.black, thickness: 1),
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
          const SizedBox(height: 5), // Espacement vertical entre les widgets
          // Affiche le résultat de l'équation avec un style en gras et plus grand
          Text("$equation",
              style: TextStyle(
                  fontSize: (volumeAsDouble != null &&
                          volumeAsDouble >= limiteVolumePipetable)
                      ? 18.0
                      : 14.0,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 5), // Espacement vertical entre les widgets
          Text("En arrondissant, on obtient:",
              style: TextStyle(
                  fontSize: (volumeAsDouble != null &&
                          volumeAsDouble >= limiteVolumePipetable)
                      ? 16.0
                      : 14.0)),
          const SizedBox(height: 1), // Espacement vertical entre les widgets
          // Affiche le volume avec une taille de police plus grande
          Text("$volume ml",
              style: TextStyle(
                  fontSize: (volumeAsDouble != null &&
                          volumeAsDouble >= limiteVolumePipetable)
                      ? 28.0
                      : 18.0,
                  fontWeight: FontWeight.bold)),

          const SizedBox(height: 1), // Espacement vertical entre les widgets

          Text.rich(
            TextSpan(
              style: const TextStyle(
                fontSize: 14.0, // Taille de police par défaut pour le texte
                color: Colors.black, // Couleur de texte par défaut
              ),
              children: <TextSpan>[
                const TextSpan(text: "Ce médicament s'utilise en "),
                TextSpan(
                    text: '$mode',
                    style: const TextStyle(
                        fontWeight: FontWeight
                            .bold)), // Met en gras le texte de textDropdown2
                if (volumeAsDouble != null &&
                    volumeAsDouble >= limiteVolumePipetable)
                  const TextSpan(
                    text: ". Il n'y a PAS de dilution nécessaire.",
                  )
                else if (volumeAsDouble != null &&
                    volumeAsDouble < limiteVolumePipetable &&
                    poids != null &&
                    poids < poidsProtectionPassereaux &&
                    mode != null &&
                    mode.contains("VO") &&
                    !mode.contains("IM") &&
                    !mode.contains("SC"))
                  const TextSpan(
                    text:
                        ". Il n'y a PAS de dilution nécessaire MAIS suivez les instructions ci-dessous.",
                  )
                else
                  const TextSpan(
                    text: ". Suivez les instructions ci-dessous.",
                  )
              ],
            ),
          ),

          const Divider(color: Colors.black, thickness: 1),
          // cas animaux dont le poids est supérieur à 30 gr.

          if (volumeAsDouble != null &&
              poids != null &&
              volumeAsDouble < limiteVolumePipetable &&
              volumeAsDouble >= limiteVolumeDilution &&
              poids >= poidsProtectionPassereaux) ...[
            // Affiche un texte riche avec plusieurs styles

            Text.rich(
              TextSpan(
                style: const TextStyle(
                  fontSize: 14.0, // Taille de police par défaut pour le texte
                  color: Colors.black, // Couleur de texte par défaut
                ),
                children: <TextSpan>[
                  const TextSpan(
                      text: "On va faire une dilution d'un facteur "),

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
                          ". Mélangez, placez votre aiguille puis expulsez le liquide jusqu'à :"),
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
              mode != null &&
              volumeAsDouble < limiteVolumePipetable &&
              volumeAsDouble >= limiteVolumeDilution &&
              poids < poidsProtectionPassereaux &&
              mode.contains("VO")) ...[
            // Affiche un texte riche avec plusieurs styles

            Text.rich(
              TextSpan(
                style: const TextStyle(
                  fontSize: 14.0, // Taille de police par défaut pour le texte
                  color: Colors.black, // Couleur de texte par défaut
                ),
                children: <TextSpan>[
                  const TextSpan(
                      text: 'Pour une VO',
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

            Text("$nombreGoutte goutte(s) c'est à dire $nombreGoutte x 0.01 ml",
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold)),

            const Divider(color: Colors.black, thickness: 1),
          ],

          if (volumeAsDouble != null &&
              poids != null &&
              mode != null &&
              volumeAsDouble < limiteVolumePipetable &&
              volumeAsDouble >= limiteVolumeDilution &&
              poids < poidsProtectionPassereaux &&
              (mode.contains("SC") || mode.contains("IM"))) ...[
            Text.rich(
              TextSpan(
                style: const TextStyle(
                  fontSize: 14.0, // Taille de police par défaut pour le texte
                  color: Colors.black, // Couleur de texte par défaut
                ),
                children: <TextSpan>[
                  const TextSpan(
                      text: "Pour une IM ou SC",
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
                          ". Mélangez, placez votre aiguille puis expulsez le surplus de liquide jusqu'à :"),
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

          if (volumeAsDouble != null &&
              volumeAsDouble < limiteVolumeDilution) ...[
            const Divider(color: Colors.black, thickness: 1),
            const Text(
                "Dans ce cas précis, la méthode de dilution appropriée necessite une discussion avec une soigneuse.",
                style: TextStyle(fontSize: 14.0)),
            const Divider(color: Colors.black, thickness: 1),
          ],

          const Text("Informations supplémentaires:",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),

          Text( "$info",
              style: const TextStyle(fontSize: 14.0)), // Aligne le texte à gauche
          const Divider(color: Colors.black, thickness: 1),
          // // Affiche un avertissement sur la vérification des résultats
          const Text("Pour l'instant, vérifiez les calculs par vous-même. ",
              style: TextStyle(fontSize: 14.0, color: Colors.red)),

          const Divider(color: Colors.black, thickness: 1),

          const Text("Tichodose version beta 0.2 / novembre 2024",
              style: TextStyle(fontSize: 14.0, color: Colors.cyan)),


        ],
      ),
    );
  }
}
