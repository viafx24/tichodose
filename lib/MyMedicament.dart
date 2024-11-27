class MyMedicament {
  // Liste statique pour stocker toutes les instances de MyMedicament
  static final List<MyMedicament> _medicaments = [];

  // Map statique pour associer le nom du médicament à son instance
  static final Map<String, MyMedicament> _medicamentsMap = {};

  // Propriétés d'instance pour la catégorie, le nom et une carte de données associées au médicament
  String categorie;
  String name;
  String mode;
  String info;
  String dureeTraitement;
  String uniteDosage;
  String equation;
  String concentrationSolution;

  Map<String, String> map;

  // Getter pour le nom du médicament
  String get nameMedoc => name;

  // Getter pour la catégorie du médicament
  String get nameCategorie => categorie;

  String get nameMode => mode;
  String get nameInfo => info;

  String get nameDureeTraitement => dureeTraitement;

  String get nameUniteDosage => uniteDosage;
  String get nameEquation => equation;
  String get nameConcentrationSolution => concentrationSolution;

  // Constructeur qui initialise les propriétés d'un médicament
  // Ajoute également l'instance à la liste statique et au Map statique
  MyMedicament(this.name, this.categorie, this.mode, this.info, this.dureeTraitement,this.uniteDosage,this.concentrationSolution, this.equation, this.map) {
    _medicaments.add(this); // Ajoute l'instance à la liste des médicaments
    _medicamentsMap[nameMedoc] =
        this; // Ajoute l'instance au Map avec le nom comme clé
  }

  // Méthode statique pour obtenir une liste non modifiable de tous les médicaments
  static List<MyMedicament> getMedicaments() {
    return List.unmodifiable(
        _medicaments); // Retourne une copie non modifiable de la liste
  }

  // Méthode statique pour obtenir une map non modifiable des médicaments avec leur nom comme clé
  static Map<String, MyMedicament> getMedicamentsMap() {
    return Map.unmodifiable(
        _medicamentsMap); // Retourne une copie non modifiable de la map
  }

  // Méthode statique pour obtenir une liste des noms de catégories triée de tous les médicaments
  static List<String> getCategorieNames() {
    final Set<String> categories =
        {}; // Utilisation d'un Set pour éviter les doublons

    // Parcourt chaque médicament et ajoute sa catégorie au Set
    for (var medicament in _medicaments) {
      categories.add(medicament.nameCategorie);
    }

    // Convertit le Set en liste, la trie et la retourne
    return categories.toList()..sort();
  }
}
