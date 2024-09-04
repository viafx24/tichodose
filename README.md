# tichodose
## Le coin des testeurs

<p>Tichodose est une application qui simplifie le calcul des doses de médicaments à administrer à des animaux sauvages. Développée pour un centre de sauvegarde de la faune sauvage en Isère (le Tichodrome), cette application s'adresse aux collaborateurs (bénévoles ou salariés) qui éprouvent des difficultés dans le calcul des dosages de médicaments et recherchent une solution susceptible de leur faire gagner du temps et de minimiser le risque d'erreur. Il existe actuellement une version Windows pour ordinateur et une version Android pour smartphone.  <p>  

<p align="center">
<img src="https://github.com/viafx24/tichodose/blob/main/images/DALL%C2%B7E%202024-09-01%2010.41.51%20-%20A%20m.png" alt="Image de présentation" width="50%">
</p>

<p>Avec cette application, il n'est plus nécessaire de résoudre les équations manuellement ou avec une calculatrice car toutes les équations (environ 75) sont pré-rentrées dans le programme et l'utilisateur n'a qu'à choisir le cas de figure qui correspond à son besoin. En particulier, l'utilisateur choisit le type de médicament, le nom du médicament, le dosage approprié et le poids de l'animal. L'application se charge de faire le calcul, donne le résultat et montre l'équation qui a été utilisée pour vérification par l’utilisateur.<p>
	
<p>ATTENTION, cette application est en version BETA c’est-à-dire en phase de test préliminaire durant laquelle les équations vont être vérifiées par des professionnels. Pour l’instant, elle s’adresse donc UNIQUEMENT aux collaborateurs en mesure de vérifier les calculs par eux-mêmes.<p>

<p align="center">
  <img src="https://github.com/viafx24/tichodose/blob/main/images/Capture_4.png" alt="capture d'écran">
</p>

## Le coin des développeurs

Si je devais me faire manger par un Hibou grand duc :smile:, voici quelques informations pour un eventuel informaticien qui voudrait reprendre la suite de ce travail. Le code est écrit en dart via le framework open-source "Flutter" développé par Google. Flutter/dart a l'avantage d'être multiplateforme: le même code peut fonctionner sous android, windows, linux, iOS et macOS. Pour l'instant Tichodose est seulement accessible sous windows et android (et eventuellement linux sur demande) pour de simples raisons financières: le devellopement de Tichodose pour les appareils apple aurait un cout annuel prohibitif pour notre association (100 euros/an).

Si Flutter est probablement l'alternative la plus facile et la plus simple pour développer à la fois sous Android et windows, cela reste, de mon point de vue, un outils reservé à des informaticiens chevronnés. Avoir quelques bases en informatique ne suffit probablement pas pour comprendre aisément le code source qui fait appel à de nombreux concepts avancés d'informatique. Et il faut nécessairement se taper un petit peu de documentation sur le fonctionnement de Flutter. Néanmoins, une fois les bases de Flutter assimilé ( ce qui est assez rapide), générer un executable windows ou un appbundle android est l'affaire d'un clique. C'est l'avantage du mutliplateforme. 

J'ai essayé de commenter correctement mon code (via des outils d'IA). Les fichiers principaux .dart sont ici: https://github.com/viafx24/tichodose/tree/main/lib

J'ai collé ci-dessous l'analyse askthecode/chatGPT qui fournit une brève analyse des fichiers principaux de Tichodose. 

Bon courage à tout repreneur/successeur éventuel de ce code et de l'application Tichodose.

Guillaume

### Analyse askthecode/ChatGPT

Le dépôt GitHub analysé contient principalement du code Flutter pour une application qui semble gérer des médicaments, avec des menus déroulants pour sélectionner différents types de médicaments, ainsi que des boutons et des champs de saisie pour calculer des dosages. Voici un aperçu des fichiers principaux que j'ai examinés :

1. **main.dart** : Ce fichier initialise l'application et configure plusieurs menus déroulants et boutons à l'aide de widgets Flutter personnalisés. Il gère également les interactions utilisateur via l'état observé (Provider). Le widget principal est DropdownMenuApp, qui intègre des menus déroulants conditionnels basés sur les sélections de l'utilisateur.
 
2. **Medicaments_Data.dart** : Ce fichier définit une fonction initializeMedicaments() qui initialise plusieurs objets MyMedicament, représentant différents médicaments et leurs dosages pour diverses espèces animales. Chaque médicament est associé à une catégorie et à des formules de calcul de dose.
 
3. **MyButtonCompute.dart** : Ce widget est un bouton qui, lorsqu'il est pressé, calcule le volume de médicament à prélever en fonction des sélections de l'utilisateur et du poids entré. Il utilise des expressions mathématiques interprétées à l'aide du package function_tree.
 
4. **MyDropDownMenu1.dart, MyDropDownMenu2.dart, MyDropDownMenu3.dart** : Ces fichiers définissent trois menus déroulants différents, chacun permettant à l'utilisateur de sélectionner respectivement un type de médicament, un médicament spécifique et un dosage pour un animal donné. Les choix faits dans chaque menu affectent les options disponibles dans les menus suivants.
 
L'application semble bien structurée et utilise des techniques modernes de gestion d'état avec Flutter (Provider). Les menus déroulants sont dynamiques et s'adaptent aux choix précédents, ce qui améliore l'expérience utilisateur.

L'icône de l'application a été créé par Kerismaker.
<p align="center">
<img src="https://github.com/viafx24/tichodose/blob/main/images/playstore.png" alt="Icône de l'application" width="10%">
</p>

