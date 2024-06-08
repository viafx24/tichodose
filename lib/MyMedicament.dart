
class MyMedicament {
  //String categorie;
  String name;

  //String location;
  Map<String, String> map;

  String get nameMedoc {
    return name;
  }

  MyMedicament(this.name, this.map);
}

MyMedicament melox = MyMedicament(
  "Melox (metacam)",
   {
  'oiseau (1mg/kg)': 'poids/1500',
  'Gros rapace > 1500gr (0.5mg/kg)': 'poids/1500/2',
  'Cygne (0.2mg/ml)': 'poids/1500/5',
  'Hérisson(0.2mg/kg)':'poids*0.2/1000/1.5',
  'Lapin(1mg/kg)':'poids*1/1000/1.5',
  'Rongeur(0.5mg/kg)':'poids*0.5/1000/1.5',
  'Chauve-Souris(0.002mg/kg)':'poids*0.002/1.5',
  'Renard pleine dose (0.2mg/kg)':'poids*0.2/1000/1.5',
  'Renard demi-dose(0.1mg/kg)':'poids*0.1/1000/1.5',
  'Chevreuil(0.5mg/kg)':'poids*0.5/1000/1.5',

}
);

MyMedicament dexadreson = MyMedicament(
  "Dexadreson", {
  'Oiseau (4mg/kg)': 'poids/500',
  'Gros rapace (1mg/kg)': 'poids/500/4',
  'Gros rapace Neuro++ (4mg/kg)': 'poids/500',
  'Hérisson pleine dose(4mg/kg)':'poids*4/1000/2',
  'Hérisson demi dose(2mg/kg)':'poids*2/1000/2',
  'Rongeur/Lapin(2mg/kg)':'poids*2/1000/2',
  'Chevreuil (3ml/100kg)':'poids*3/100/1000',
  'Blaireau/Renard(0.5ml/10kg)':'poids*0.5/10/1000',
  'Chauve-Souris(0.003mg/g)':'poids*0.003/2',
});

MyMedicament traumasedyl = MyMedicament(
  "Traumasedyl", {
  'Mammifère/oiseau (1ml/kg)':'poids/1000',
  }
);

MyMedicament meloxidolor  = MyMedicament(
  "Meloxidolor (SC)", {
  'Hérisson (0.2mg/kg)':'poids*0.2/1000/5',
  'Lapin (1mg/kg)':'poids*1/1000/5',
  'Rongeur (0.5mg/kg)':'poids*0.5/1000/5',
  'Renard pleine dose(0.2mg/kg)':'poids*0.2/1000/5',
  'Renard demi-dose(0.1mg/kg)':'poids*0.1/1000/5',
  'Chevreuil (0.5mg/kg)':'poids*0.5/1000/5',
});


MyMedicament augmentin  = MyMedicament(
  "Augmentin", {
  'Oiseau (1ml/kg)':'poids/1000',
  'Hérisson (40 mg/kg)':'poids*40/1000/112.5',
  'Petit carnivore (10 mg/kg)':'poids*10/1000/112.5',
  'Chauve-Souris (0,005 mg/g)':'poids*0.005/112.5',
});


MyMedicament  zodon = MyMedicament(
  "Zodon liquide", {
  'Oiseau 50mg/kg':'poids/500',
});

MyMedicament  bactrim = MyMedicament(
  "Bactrim", {
  'Oiseau (0.8ml/kg)':'poids*0.8/1000',
});

MyMedicament  adjusol = MyMedicament(
  "Adjusol", {
  'Oiseau (0.3ml/kg)':'poids*0.3/1000',
  'Hérisson (30mg/kg)':'poids*30/1000/100',
  'Ecureuil/Rongeur (15mg/kg)':'poids*15/1000/100',
  'Ecureuil/Rongeur (30mg/kg)':'poids*30/1000/100',
});

MyMedicament  zytromax = MyMedicament(
  "Zytromax", {
  'Oiseau (1ml/kg)':'poids/1000',
});

MyMedicament  septotryl = MyMedicament(
  "Septotryl", {
  'Hérisson (30mg/kg)':'poids*30/1000/240',
  'Rongeur (15mg/kg)':'poids*15/1000/240',
  'Rongeur (30mg/kg)':'poids*30/1000/240',
});

MyMedicament oxytetracycline  = MyMedicament(
  "Oxytetracycline", {
  'Oiseau (1ml/kg)':'poids/1000',
  'Hérisson (50 mg/kg)':'poids*50/1000/50',
  'Petit carnivore (10mg/kg)':'poids*10/1000/50',
  'Renard (10mg/kg)':'poids*10/1000/50',
  'Blaireau (5mg/kg)':'poids*5/1000/50',
  'Rongeur (30mg/kg)':'poids*30/1000/50',
  'Lapin (50mg/kg':'poids*50/1000/50',
  'Chevreuil (2ml/10kg)':'poids*2/10/1000',

});

MyMedicament  shotapen = MyMedicament(
  "Shotapen", {
  'gros Mammifère + carnivore (0.1ml/kg)':'poids*0.1/1000',
});

MyMedicament  clavobay = MyMedicament(
  "Clavobay", {
  'Hérisson (0.7ml/kg)':'poids*0.7/1000 ',
});

MyMedicament  panacur = MyMedicament(
  "Panacur", {
  'Oiseau(20mg/kg)':'poids/1250',
  'Hérisson (100mg/kg)':'poids*100/1000/25',
  'Ecureuil/Lapin (20mg/kg)':'poids*20/1000/25',
  'Chauve-Souris (0.005mg/g)':'poids*0.005/25',

});

MyMedicament  virbamec = MyMedicament(
  "Virbamec", {
  'Gros oiseau (0.05ml/kg)':'poids/20000',
});

MyMedicament flagyl  = MyMedicament(
  "Flagyl", {
  'Oiseau hors passereaux (20mg/kg)':'poids/1250',
  'Hérisson (40mg/kg)':'poids*40*5/1000/125',
  'Ecureuil (20mg/kg)':'poids*20/1000/125',
});

// MyMedicament  alazol = MyMedicament(
//   "Alazol", {
//   'Oiseau (35mg/kg)':'poids/5000',
// });

// MyMedicament dolthene  = MyMedicament(
//   "Dolthene(Synanthic)", {
//   'Hérisson(100mg/kg)':'poids*100/1000/22.65',
//   'Petit carnivore/Renard (0.5ml/kg)':'poids*0.5/1000',
// });


// MyMedicament levamisole  = MyMedicament(
//   "levamisole", {
//   'Mammifère (25mg/kg)':'poids*25/1000/31.8',
// });

// MyMedicament nemisole  = MyMedicament(
//   "Nemisole", {
//   'Mammifère (pleine dose: 25mg/kg)':'poids*0.25/1000',
//   'Mammifère (demi-dose: 12.5mg/kg)':'poids*0.125/1000',
// });

// MyMedicament emeprid   = MyMedicament(
//   "Emeprid ", {
//   'Oiseau (0.1ml/kg)':'poids/10000',
//   'Mammifère dosage min(0.2mg/kg)':'poids*0.2/1000',
//   'Mammifère dosage max(1mg/kg)':'poids*1/1000',

// });

// MyMedicament intrafungol  = MyMedicament(
//   "Intrafungol", {
//   'Oiseau (1ml/kg)':'poids/1000',
// });

// MyMedicament fercobsang  = MyMedicament(
//   "Fercobsang", {
//   'Oiseau (0.5ml/kg)':'poids*0.5/1000',
// });

// MyMedicament actiselem = MyMedicament(
//   "Actiselem", {
//   'Oiseau (1ml/10kg)':'poids*0.1/1000',
// });
// MyMedicament kaopectate  = MyMedicament(
//   "Kaopectate", {
//   'Mammifère(1ml/kg)':'poids*1000',
// });

// MyMedicament  smecta = MyMedicament(
//   "Smecta (sachet dilué dans eau)", {
//   'Mammifère':'poids/1000 ',

// });


final Map<String, MyMedicament> MyMapMedocs = {
melox.nameMedoc:melox,
dexadreson.nameMedoc:dexadreson,
traumasedyl.nameMedoc:traumasedyl,
meloxidolor.nameMedoc:meloxidolor,
augmentin.nameMedoc:augmentin,
zodon.nameMedoc:zodon,
bactrim.nameMedoc:bactrim,
zytromax.nameMedoc:zytromax,
septotryl.nameMedoc:septotryl,
adjusol.nameMedoc:adjusol,
oxytetracycline.nameMedoc:oxytetracycline,
shotapen.nameMedoc:shotapen,
clavobay.nameMedoc:clavobay,
panacur.nameMedoc:panacur,
virbamec.nameMedoc:virbamec,
flagyl.nameMedoc:flagyl,
// alazol.nameMedoc:alazol,
// dolthene.nameMedoc:dolthene,
// levamisole.nameMedoc:levamisole,
// nemisole.nameMedoc:nemisole,
// emeprid.nameMedoc:emeprid,
// intrafungol.nameMedoc:intrafungol,
// fercobsang.nameMedoc:fercobsang,
// actiselem.nameMedoc:actiselem,
// kaopectate.nameMedoc:kaopectate,
// smecta.nameMedoc:smecta
};

List<MyMedicament> MesMedocs = [
melox,
dexadreson,
traumasedyl,
meloxidolor,
augmentin,
zodon,
bactrim,
zytromax,
septotryl,
adjusol,
oxytetracycline,
shotapen,
clavobay,
panacur,
virbamec,
flagyl,
// alazol,
// dolthene,
// levamisole,
// nemisole,
// emeprid,
// intrafungol,
// fercobsang,
// actiselem,
// kaopectate,
// smecta
];

final List<String> MedocNames =
    MesMedocs.map((MyMedicament) => MyMedicament.nameMedoc).toList();
// MyMedicament   = MyMedicament(
//   "", {
//   '':'',
//   '':'',
//   '':'',
//   '':'',
//   '':'',
//   '':'',

// });
// MyMedicament   = MyMedicament(
//   "", {
//   '':'',
//   '':'',
//   '':'',
//   '':'',
//   '':'',
//   '':'',

// });
// MyMedicament   = MyMedicament(
//   "", {
//   '':'',
//   '':'',
//   '':'',
//   '':'',
//   '':'',
//   '':'',

// });