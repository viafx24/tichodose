class MyMedicament {
  // Liste statique pour stocker toutes les instances de MyMedicament
  static final List<MyMedicament> _medicaments = [];

  // Map statique pour associer le nom du médicament à son instance
  static final Map<String, MyMedicament> _medicamentsMap = {};

  // Propriétés d'instance pour la catégorie, le nom et une carte de données associées au médicament
  String categorie;
  String name;
  Map<String, String> map;

  // Getter pour le nom du médicament
  String get nameMedoc => name;

  // Getter pour la catégorie du médicament
  String get nameCategorie => categorie;

  // Constructeur qui initialise les propriétés d'un médicament
  // Ajoute également l'instance à la liste statique et au Map statique
  MyMedicament(this.name, this.categorie, this.map) {
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




// class MyMedicament {
//   static final List<MyMedicament> _medicaments = [];
//   static final Map<String, MyMedicament> _medicamentsMap = {};

//   String categorie;
//   String name;
//   Map<String, String> map;

//   String get nameMedoc => name;
//   String get nameCategorie => categorie;

//   MyMedicament(this.name, this.categorie, this.map) {
//     _medicaments.add(this);
//     _medicamentsMap[nameMedoc] = this;
//   }

//   static List<MyMedicament> getMedicaments() {
//     return List.unmodifiable(_medicaments);
//   }

//   static Map<String, MyMedicament> getMedicamentsMap() {
//     return Map.unmodifiable(_medicamentsMap);
//   }

//   static List<String> getCategorieNames() {
//     final Set<String> categories = {};
//     for (var medicament in _medicaments) {
//       categories.add(medicament.nameCategorie);
//     }
//     return categories.toList()..sort();
//   }
// }



// List<String> categorieNames = MyMedicament.getCategorieNames();
// List<MyMedicament> mesMedocs = MyMedicament.getMedicaments();
// Map<String, MyMedicament> myMapMedocs = MyMedicament.getMedicamentsMap();

// final Map<String, MyMedicament> myMapMedocs = {
//   melox.nameMedoc: melox,
//   dexadreson.nameMedoc: dexadreson,
//   traumasedyl.nameMedoc: traumasedyl,
//   meloxidolor.nameMedoc: meloxidolor,
//   augmentin.nameMedoc: augmentin,
//   zodon.nameMedoc: zodon,
//   bactrim.nameMedoc: bactrim,
//   zytromax.nameMedoc: zytromax,
//   septotryl.nameMedoc: septotryl,
//   adjusol.nameMedoc: adjusol,
//   oxytetracycline.nameMedoc: oxytetracycline,
//   shotapen.nameMedoc: shotapen,
//   clavobay.nameMedoc: clavobay,
//   panacur.nameMedoc: panacur,
//   virbamec.nameMedoc: virbamec,
//   flagyl.nameMedoc: flagyl,
//   alazol.nameMedoc: alazol,
//   dolthene.nameMedoc: dolthene,
//   levamisole.nameMedoc: levamisole,
//   nemisole.nameMedoc: nemisole,
//   emeprid.nameMedoc: emeprid,
//   intrafungol.nameMedoc: intrafungol,
//   fercobsang.nameMedoc: fercobsang,
//   actiselem.nameMedoc: actiselem,
//   kaopectate.nameMedoc: kaopectate,
//   smecta.nameMedoc: smecta
// };

// List<MyMedicament> mesMedocs = [
//   melox,
//   dexadreson,
//   traumasedyl,
//   meloxidolor,
//   augmentin,
//   zodon,
//   bactrim,
//   zytromax,
//   septotryl,
//   adjusol,
//   oxytetracycline,
//   shotapen,
//   clavobay,
//   panacur,
//   virbamec,
//   flagyl,
//   alazol,
//   dolthene,
//   levamisole,
//   nemisole,
//   emeprid,
//   intrafungol,
//   fercobsang,
//   actiselem,
//   kaopectate,
//   smecta
// ];



// final List<String> categorieNames = [
//   "Antibiotique",
//   "Anti-inflammatoire",
//   "Antiparasitaire",
//   "Divers"
// ];