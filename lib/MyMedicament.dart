class MyMedicament {
  static final List<MyMedicament> _medicaments = [];
  static final Map<String, MyMedicament> _medicamentsMap = {};

  String categorie;
  String name;
  Map<String, String> map;

  String get nameMedoc => name;
  String get nameCategorie => categorie;

  MyMedicament(this.name, this.categorie, this.map) {
    _medicaments.add(this);
    _medicamentsMap[nameMedoc] = this;
  }

  static List<MyMedicament> getMedicaments() {
    return List.unmodifiable(_medicaments);
  }

  static Map<String, MyMedicament> getMedicamentsMap() {
    return Map.unmodifiable(_medicamentsMap);
  }

  static List<String> getCategorieNames() {
    final Set<String> categories = {};
    for (var medicament in _medicaments) {
      categories.add(medicament.nameCategorie);
    }
    return categories.toList()..sort();
  }
}



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