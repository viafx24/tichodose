import 'package:flutter/material.dart';

double width = 300;
double widgetSpace = 20;
bool myBool = false;

class MyVariableToListen with ChangeNotifier {
  String? _textDropdown1;
  String? _textDropdown2;
  String? _textDropdown3;

  int? _poids;
  String? _volume;

  String? _equation;

  TextEditingController? _inputTextController = TextEditingController() ;
 
  String? get textDropdown1 => _textDropdown1;
  String? get textDropdown2 => _textDropdown2;
  String? get textDropdown3 => _textDropdown3;

  int? get poids => _poids;
  String? get volume => _volume;
  String? get equation => _equation;

  TextEditingController? get inputTextController => _inputTextController;

  void settextDropdown1(String? value) {
    _textDropdown1 = value;
    notifyListeners();
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

  void setInputText() {
    _inputTextController!.clear();
    notifyListeners();
  }

}