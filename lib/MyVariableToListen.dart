import 'package:flutter/material.dart';

// Déclaration de variables globales pour les dimensions des widgets et un booléen
double width = 300;
double widgetSpace = 20;
double widgetSpaceSmall = 15;
bool myBool = false;

double poidsProtectionPassereaux = 35;
double limiteVolumePipetable = 0.035;
double limiteVolumeDilution = 0.005;

// La classe MyVariableToListen étend ChangeNotifier pour notifier les écouteurs des changements d'état
class MyVariableToListen with ChangeNotifier {
  // Propriétés privées pour stocker les valeurs des éléments de l'interface utilisateur
  String? _textDropdown1;
  String? _textDropdown2;
  String? _textDropdown3;

  int? _poids;
  double? _volumeAsDouble;
  String? _volume;
  String? _equation;

  double? _volumeAfterDilution;
  String? _roundVolumeAfterDilution;
  String? _nombreGoutte;
  String? _dilutionFactor;
  String? _volumeMedocDilution;
  String? _volumeNaclDilution;

  String? _mode;
  String? _info;
  String? _dureeTraitement;
  String? _uniteDosage;

  String _selectedRadioValue = "Dosage prédefini"; // Valeur initiale

  String? _inputManualDosage;

  // Contrôleur pour le champ de texte
  TextEditingController? _inputTextController = TextEditingController();

  // Getters pour les propriétés privées
  String? get textDropdown1 => _textDropdown1;
  String? get textDropdown2 => _textDropdown2;
  String? get textDropdown3 => _textDropdown3;

  int? get poids => _poids;
  double? get volumeAsDouble => _volumeAsDouble;
  String? get volume => _volume;
  String? get equation => _equation;

  double? get volumeAfterDilution => _volumeAfterDilution;
  String? get roundVolumeAfterDilution => _roundVolumeAfterDilution;
  String? get nombreGoutte => _nombreGoutte;
  String? get dilutionFactor => _dilutionFactor;
  String? get volumeMedocDilution => _volumeMedocDilution;
  String? get volumeNaclDilution => _volumeNaclDilution;

  String? get mode => _mode;
  String? get info => _info;
  String? get dureeTraitement => _dureeTraitement;
  String? get uniteDosage => _uniteDosage;

  String get selectedRadioValue => _selectedRadioValue;

  String? get inputManualDosage => _inputManualDosage;

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

  void setvolumeAsDouble(double? value) {
    _volumeAsDouble = value;
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

  void setVolumeAfterDilution(double? value) {
    _volumeAfterDilution = value;
    notifyListeners();
  }

  void setRoundVolumeAfterDilution(String? value) {
    _roundVolumeAfterDilution = value;
    notifyListeners();
  }

  void setNombreGoutte(String? value) {
    _nombreGoutte = value;
    notifyListeners();
  }

  void setDilutionFactor(String? value) {
    _dilutionFactor = value;
    notifyListeners();
  }

  void setVolumeMedocDilution(String? value) {
    _volumeMedocDilution = value;
    notifyListeners();
  }

  void setVolumeNaclDilution(String? value) {
    _volumeNaclDilution = value;
    notifyListeners();
  }

  void setMode(String? value) {
    _mode = value;
    notifyListeners();
  }

  void setInfo(String? value) {
    _info = value;
    notifyListeners();
  }

  void setDureeTraitement(String? value) {
    _dureeTraitement = value;
    notifyListeners();
  }

  void setUniteDosage(String? value) {
    _uniteDosage = value;
    notifyListeners();
  }

  void setRadio(String value) {
    _selectedRadioValue = value;
    notifyListeners(); // Notifie les widgets écoutant les changements
  }

  // Méthode pour nettoyer le contenu du TextEditingController et notifier les écouteurs
  void setInputText() {
    _inputTextController?.clear(); // Vide le champ de texte
    notifyListeners();
  }

  // Méthode pour définir la valeur (sans "mg/kg")
  void setInputManualDosage(String? value) {
    // Tente de convertir la valeur en double et met à jour l'état
   // _inputManualDosage = double.tryParse(value);
    _inputManualDosage = value;
    notifyListeners(); // Notifie les widgets abonnés à cette variable
  }

 // Méthode pour obtenir la valeur au format texte, incluant "mg/kg"
  String get inputManualDosageWithUnit {
 
    if (_inputManualDosage == null  ||  _uniteDosage == null) {

      return ''; // Retourne une chaîne vide si aucune valeur n'est définie
    }
    return '${_inputManualDosage!} $_uniteDosage'; // Ajoute " à la valeur
    
  }


//   String get inputManualDosageWithUnit {
//   // Ajout des impressions pour vérifier l'état des variables
//   print("Vérification des variables dans inputManualDosageWithUnit:");
//   print("_inputManualDosage: $_inputManualDosage");
//   print("_uniteDosage: $_uniteDosage");

//   // Vérifier si l'une des variables est null
//   if (_inputManualDosage == null || _uniteDosage == null) {
//     print("L'une des variables est null. Retourne une chaîne vide.");
//     return ''; // Retourne une chaîne vide si aucune valeur n'est définie
//   }

//   // Si les variables sont valides, on retourne la valeur formatée
//   print("Retourne la valeur formatée: '${_inputManualDosage!} mg/kg'");
//   return '${_inputManualDosage!} mg/kg'; // Ajoute "mg/kg" à la valeur
// }


// String get inputManualDosageWithUnit {
//   if (_inputManualDosage == null || _uniteDosage == null) {
//     return '${_inputManualDosage ?? '0.0'} mg/kg'; // Utilisation d'une valeur par défaut si _uniteDosage est null
//   }
//   return '${_inputManualDosage!} $_uniteDosage'; 
// }

  // Méthode appelée lorsque l'objet ChangeNotifier est supprimé
  @override
  void dispose() {
    _inputTextController
        ?.dispose(); // Libère les ressources du TextEditingController
    super.dispose(); // Appelle la méthode dispose de la classe parente
  }
}
