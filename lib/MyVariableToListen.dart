import 'package:flutter/material.dart';

// Déclaration de variables globales pour les dimensions des widgets et un booléen
double width = 300;
double widgetSpace = 20;
bool myBool = false;

// La classe MyVariableToListen étend ChangeNotifier pour notifier les écouteurs des changements d'état
class MyVariableToListen with ChangeNotifier {
  // Propriétés privées pour stocker les valeurs des éléments de l'interface utilisateur
  String? _textDropdown1;
  String? _textDropdown2;
  String? _textDropdown3;

  int? _poids;
  String? _volume;

  String? _equation;

  // Contrôleur pour le champ de texte
  TextEditingController? _inputTextController = TextEditingController();

  // Getters pour les propriétés privées
  String? get textDropdown1 => _textDropdown1;
  String? get textDropdown2 => _textDropdown2;
  String? get textDropdown3 => _textDropdown3;

  int? get poids => _poids;
  String? get volume => _volume;
  String? get equation => _equation;

  TextEditingController? get inputTextController => _inputTextController;

  // Méthodes pour modifier les valeurs des propriétés et notifier les écouteurs des changements
  void settextDropdown1(String? value) {
    _textDropdown1 = value;
    notifyListeners(); // Notifie les écouteurs que l'état a changé
  }

  void settextDropdown2(String? value) {
    _textDropdown2 = value;
    notifyListeners();
  }

  void settextDropdown3(String? value) {
    _textDropdown3 = value;
    notifyListeners();
  }

  void setPoids(int? value) {
    _poids = value;
    notifyListeners();
  }

  void setVolume(String? value) {
    _volume = value;
    notifyListeners();
  }

  void setEquation(String? value) {
    _equation = value;
    notifyListeners();
  }

  // Méthode pour nettoyer le contenu du TextEditingController et notifier les écouteurs
  void setInputText() {
    _inputTextController?.clear(); // Vide le champ de texte
    notifyListeners();
  }

  // Méthode appelée lorsque l'objet ChangeNotifier est supprimé
  @override
  void dispose() {
    _inputTextController
        ?.dispose(); // Libère les ressources du TextEditingController
    super.dispose(); // Appelle la méthode dispose de la classe parente
  }
}



// import 'package:flutter/material.dart';

// double width = 300;
// double widgetSpace = 20;
// bool myBool = false;

// class MyVariableToListen with ChangeNotifier {
//   String? _textDropdown1;
//   String? _textDropdown2;
//   String? _textDropdown3;

//   int? _poids;
//   String? _volume;

//   String? _equation;

//   TextEditingController? _inputTextController = TextEditingController() ;
 
//   String? get textDropdown1 => _textDropdown1;
//   String? get textDropdown2 => _textDropdown2;
//   String? get textDropdown3 => _textDropdown3;

//   int? get poids => _poids;
//   String? get volume => _volume;
//   String? get equation => _equation;

//   TextEditingController? get inputTextController => _inputTextController;

//   void settextDropdown1(String? value) {
//     _textDropdown1 = value;
//     notifyListeners();
//   }

//   void settextDropdown2(String? value) {
//     _textDropdown2 = value;
//     notifyListeners();
//   }

//     void settextDropdown3(String? value) {
//     _textDropdown3 = value;
//     notifyListeners();
//   }

//   void setPoids(int? value) {
//     _poids = value;
//     notifyListeners();
//   }

//   void setVolume(String? value) {
//     _volume = value;
//     notifyListeners();
//   }

//   void setEquation(String? value) {
//     _equation = value;
//     notifyListeners();
//   }

//   void setInputText() {
//     _inputTextController!.clear();
//     notifyListeners();
//   }

// }