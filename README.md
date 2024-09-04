# tichodose
## Le coin des testeurs
Tichodose est une application qui simplifie le calcul des doses de médicaments à administrer à des animaux sauvages. Développée pour un centre de sauvegarde de la faune sauvage en Isère (le Tichodrome), cette application s'adresse aux collaborateurs (bénévoles ou salariés) qui éprouvent des difficultés dans le calcul des dosages de médicaments et recherchent une solution susceptible de leur faire gagner du temps et de minimiser le risque d'erreur.
Avec cette application, il n'est plus nécessaire de résoudre les équations manuellement ou avec une calculatrice car toutes les équations (environ 75) sont prérentrées dans le programme et l'utilisateur n'a qu'à choisir le cas de figure qui correspond à son besoin. En particulier, l'utilisateur choisit le type de médicament, le nom du médicament, le dosage approprié et le poids de l'animal. L'application se charge de faire le calcul, donne le résultat et montre l'équation qui a été utilisée pour vérification par l’utilisateur.
ATTENTION, cette application est en version BETA c’est-à-dire en phase de test préliminaire afin de faire vérifier les équations par des professionnels. Pour l’instant, elle s’adresse donc UNIQUEMENT aux collaborateurs en mesure de vérifier les calculs par eux-mêmes. 


 Icône crée par kerismaker (www.flaticon.com)
).



## Le coin des devveloppeurs


Le dépôt GitHub analysé contient principalement du code Flutter pour une application qui semble gérer des médicaments, avec des menus déroulants pour sélectionner différents types de médicaments, ainsi que des boutons et des champs de saisie pour calculer des dosages. Voici un aperçu des fichiers principaux que j'ai examinés :

	1. main.dart : Ce fichier initialise l'application et configure plusieurs menus déroulants et boutons à l'aide de widgets Flutter personnalisés. Il gère également les interactions utilisateur via l'état observé (Provider). Le widget principal est DropdownMenuApp, qui intègre des menus déroulants conditionnels basés sur les sélections de l'utilisateur.
 
	2. Medicaments_Data.dart : Ce fichier définit une fonction initializeMedicaments() qui initialise plusieurs objets MyMedicament, représentant différents médicaments et leurs dosages pour diverses espèces animales. Chaque médicament est associé à une catégorie et à des formules de calcul de dose.
 
	3. MyButtonCompute.dart : Ce widget est un bouton qui, lorsqu'il est pressé, calcule le volume de médicament à prélever en fonction des sélections de l'utilisateur et du poids entré. Il utilise des expressions mathématiques interprétées à l'aide du package function_tree.
 
	4. MyDropDownMenu1.dart, MyDropDownMenu2.dart, MyDropDownMenu3.dart : Ces fichiers définissent trois menus déroulants différents, chacun permettant à l'utilisateur de sélectionner respectivement un type de médicament, un médicament spécifique et un dosage pour un animal donné. Les choix faits dans chaque menu affectent les options disponibles dans les menus suivants.
 
L'application semble bien structurée et utilise des techniques modernes de gestion d'état avec Flutter (Provider). Les menus déroulants sont dynamiques et s'adaptent aux choix précédents, ce qui améliore l'expérience utilisateur.
