import "MyMedicament.dart";

void initializeMedicaments() {
  MyMedicament melox =
      MyMedicament("Melox / metacam (1.5mg/ml)", "Anti-inflammatoire", "VO","Antalgique, anti-inflammatoire; molécule active: meloxicam","1 à 2 fois par jour (pendant 3 à 7 jours).","mg/kg","1.5","(poids*(posologie/1000))/concentrationSolution", {
    'Oiseau (1mg/kg)': '1',
    'Gros rapace > 1500gr (0.5mg/kg)': '0.5',
    'Cygne (0.2mg/kg)': '0.2',
    'Hérisson (0.2mg/kg)': '0.2',
    'Lapin dose min (0.3mg/kg)': '0.3',
    'Lapin dose max (1mg/kg)': '1',
    'Rongeur (0.5mg/kg)': '0.5',
    //'Chauve-Souris (0.002mg/g)': '2',
    'Chauve-Souris (2mg/kg)': '2',
    'Renard demi dose (0.1mg/kg)': '0.1',
    'Renard pleine dose (0.2mg/kg)': '0.2',
    'Chevreuil (0.5mg/kg)': '0.5',
  });

  MyMedicament dexadreson = MyMedicament("Dexadreson", "Anti-inflammatoire","SC ou IM","Etat de choc, troubles neurologiques; Hérisson : 4 mg/kg le 1er jour puis 2mg/kg.","1 fois par jour (de 1 à 5 jours)","mg/kg","2","(poids*(posologie/1000))/concentrationSolution", {
    'Oiseau pleine dose (4mg/kg)': '4',
    'Oiseau demi dose (2mg/kg)': '5',
    'Gros rapace (1mg/kg)': '1',
    'Gros rapace Neuro++ (4mg/kg)': '4',
    'Hérisson pleine dose (4mg/kg)': '4',
    'Hérisson demi dose (2mg/kg)': '2',
    'Rongeur/Lapin dose min (0.5mg/kg)': '0.5',
    'Rongeur/Lapin dose max (2mg/kg)': '2',
    'Chevreuil (0.06mg/kg)':'0.06',
    'Blaireau/Renard (0.1mg/kg)':'0.1',
    'Chauve-Souris (3mg/kg)': '3',
    // 'Chevreuil (3ml/100kg)': 'poids*3/100000',
    // 'Blaireau/Renard (0.5ml/10kg)': 'poids*0.5/10000',
    //'Chauve-Souris (0.003mg/g)': '3',
  });

  MyMedicament traumasedyl = MyMedicament("Traumasedyl", "Anti-inflammatoire","VO","Homéopathie (antalgique)","2 fois par jour (minimum 1 semaine)" ,"ml/kg","inconnue","poids*posologie/1000",{
    'Mammifère/oiseau (1ml/kg)': '1',
  });

  MyMedicament meloxidolor =
      MyMedicament("Meloxidolor (SC)", "Anti-inflammatoire","SC","Antalgique, anti-inflammatoire ; attention au risque de confusion avec le melox/metacam.","1 fois par jour (pendant 3 à 7 jours)","mg/kg", "5","(poids*(posologie/1000))/concentrationSolution",{
    'Hérisson (0.2mg/kg)': '0.2',
    'Lapin dose min (0.3mg/kg)': '0.3',
    'Lapin dose max (1mg/kg)': '1',
    'Rongeur (0.5mg/kg)': '0.5',
    'Renard pleine dose (0.2mg/kg)': '0.2',
    'Renard demi dose (0.1mg/kg)': '0.1',
    'Chevreuil (0.5mg/kg)': '0.5',
  });

  MyMedicament augmentin = MyMedicament("Augmentin", "Antibiotique","VO","Large spectre : troubles respiratoires, plaies, mauvais état général. Attention : jamais en VO pour les rongeurs. Amoxicilline (100mg/ml) + acide clavulanique (12.5mg/ml)","2 fois par jour pendant 7 jours","mg/kg","112.5","(poids*(posologie/1000))/concentrationSolution", {
    //'Oiseau (1ml/kg)': 'poids/1000',
    'Oiseau (112.5mg/kg)': '112.5',
    'Hérisson (40mg/kg)': '40',
    'Petit carnivore (10mg/kg)': '10',
    'Chauve-Souris (5mg/kg)': '5',
    //'Chauve-Souris (0,005 mg/g)': '5',
  });

  MyMedicament zodon = MyMedicament("Zodon liquide", "Antibiotique","VO","molecule = clindamycine (25mg/ml)","2 fois par jour.","ml/kg","25","(poids*(posologie/1000))/concentrationSolution", {
    'Oiseau (50mg/kg)': '50',
  });

  MyMedicament bactrim = MyMedicament("Bactrim", "Antibiotique","VO","molecules: Sulfaméthoxazole(40 mg/ml ?)/ Triméthoprime(8 mg/ml?)." ,"2 fois par jour", "ml/kg","n/a","poids*posologie/1000",{
    'Oiseau (0.8ml/kg)': '0.8',
  });

  MyMedicament adjusol = MyMedicament("Adjusol", "Antibiotique","VO","Large spectre (Troubles digestifs + respiratoires + contre salmonelles et coccidies); Sulfadiazine + triméthoprime", "1 à 2 fois par jour Pendant 6 à 7 jours (peut être prolongé jusqu’à amélioration des symptômes).","mg/kg","100","(poids*(posologie/1000))/concentrationSolution", {
    //'Oiseau (0.3ml/kg)': 'poids*0.3/1000',
    'Oiseau (30mg/kg)': '30',
    'Hérisson (30mg/kg)': '30',
    'Ecureuil/Rongeur dose min (15mg/kg)': '15',
    'Ecureuil/Rongeur dose max (30mg/kg)': '30',
  });

  MyMedicament zytromax = MyMedicament("Zytromax", "Antibiotique","VO","molecule: Azithromycine (40mg/ml) ","1 fois par jour.","ml/kg","n/a","poids*posologie/1000", {
    'Oiseau (1ml/kg)': '1',
  });

  MyMedicament septotryl = MyMedicament("Septotryl", "Antibiotique","SC ou IM","Large spectre (troubles digestifs + respiratoires + contre salmonelles et coccidies);sulfaméthoxypyridazine(200mg/kg) + triméthoprime(40mg/kg)","2 fois par jours pendant 7 jours.","mg/kg","240","(poids*(posologie/1000))/concentrationSolution", {
    'Hérisson (30mg/kg)': '30',
    'Rongeur dose min (15mg/kg)': '15',
    'Rongeur dose max (30mg/kg)': '30',
  });

  MyMedicament oxytetracycline =
      MyMedicament("Oxytetracycline", "Antibiotique","VO ou SC","Large spectre (plaies, mauvais état général, encéphalite); molecule: oxytétracycline (50mg/ml)", "Pendant 6 à 7 jours (peut être prolongé jusqu’à amélioration des symptômes)","mg/kg","50","(poids*(posologie/1000))/concentrationSolution",{
    'Oiseau (50mg/kg)': '50',
    'Hérisson (50 mg/kg)': '50',
    'Petit carnivore dose min (5mg/kg)': '5',
    'Petit carnivore dose max (10mg/kg)': '10',
    'Renard (10mg/kg)': '10',
    'Blaireau (5mg/kg)': '5',
    'Rongeur (30mg/kg)': '30',
    'Lapin VO (50mg/kg) ': '50',
    'Chevreuil (10mg/kg)': '10'
    //'Chevreuil (2ml/10kg)': 'poids*2/10000',
  });

  // MyMedicament shotapen = MyMedicament("Shotapen", "Antibiotique","SC ou IM","Large spectre et longue action (Pour plaie); Pénicilline; Attention produit épais = injecter avec aiguille verte + bien secouer le produit.","1 fois par 72 heures","ml/kg", {
  //   'Gros mammifère/carnivore (0.1ml/kg)': 'poids*0.1/1000',
  // });

  // MyMedicament clavobay = MyMedicament("Clavobay", "Antibiotique","SC","Large spectre (Idem Augmentin: Amoxicilline + acide clavulanique) ; Important : Bien agiter le flacon avant utilisation (1). Préparer la seringue au dernier moment (2). Injecter avec une aiguille verte (3).", "1 fois par jour","ml/kg", {
  //   'Hérisson (0.7ml/kg)': 'poids*0.7/1000 ',
  // });

  // MyMedicament panacur = MyMedicament("Panacur", "Antiparasitaire","VO","Nématodes intestinaux et certains respiratoires + oxyures; toxique pour les vautours","1 fois par jour pendant 5 jours","mg/kg","25","(poids*(posologie/1000))/concentrationSolution", {
  //   'Oiseau (20mg/kg)': 'poids/1250',
  //   'Hérisson (100mg/kg)': 'poids*100/1000/25',
  //   'Ecureuil/Lapin (20mg/kg)': 'poids*20/1000/25',
  //   'Chauve-Souris (0.005mg/g)': 'poids*0.005/25',
  // });

  // // MyMedicament virbamec = MyMedicament("Virbamec", "Antiparasitaire","SC","Parasites externes, gale, myiases, Nématodes intestinaux ;" {
  // //   'Gros oiseau (0.05ml/kg)': 'poids*0.05/1000',
  // // });

  // MyMedicament flagyl = MyMedicament("Flagyl", "Antiparasitaire","VO","Troubles digestifs (bactéries clostridium) ; Mauvais état général ; métronidazol ; Déconseillé pour les passereaux", "Hérisson: 1 fois par jour / Ecureuil 2 fois par jour pendant 7 jours.","mg/kg","25","(poids*(posologie/1000))/concentrationSolution", {
  //   'Oiseau hors passereau (20mg/kg)': 'poids/1250',
  //   'Hérisson (40mg/kg)': 'poids*40*5/1000/125',
  //   'Ecureuil (20mg/kg)': 'poids*20*5/1000/125',
  // });

  // MyMedicament alazol = MyMedicament("Alazol", "Antiparasitaire","VO","R.A.S","1 fois par jour pendant 7 jours","ml/kg", {
  //   'Oiseau (35mg/kg)': 'poids/5000',
  // });

  // MyMedicament dolthene =
  //     MyMedicament("Dolthene (Synanthic)", "Antiparasitaire","VO","Nématodes intestinaux et certains respiratoires + oxyures ; oxfendazole ; A renouveler 2 semaines plus tard si besoin ; Si surdosage : pas de danger. ","Hérisson: 1 fois par jour pendant 7 jours/ petit carnivore (Renard): 1 fois par jour pendant 3 jours.","mg/kg","22.65","(poids*(posologie/1000))/concentrationSolution", {
  //   'Hérisson (100mg/kg)': 'poids*100/1000/22.65',
  //   'Petit carnivore/Renard (0.5ml/kg)': 'poids*0.5/1000',
  // });

  // MyMedicament levamisole = MyMedicament("Levamisole", "Antiparasitaire","VO","Nématodes intestinaux et certains respiratoires. Si surdosage : hypersalivation, vomissements, diarrhée, polypnée, ataxie, tremblements, convulsions.","1 fois par jour (pendant 3 jours) puis 1 fois/semaine pendant 2 semaines","mg/kg","31.8","(poids*(posologie/1000))/concentrationSolution", {
  //   'Mammifère (25mg/kg)': 'poids*25/1000/31.8',
  // });

  // MyMedicament nemisole = MyMedicament("Nemisole", "Antiparasitaire","SC","Nématodes intestinaux et certains respiratoires. Si surdosage : hypersalivation, vomissements, diarrhée, polypnée, ataxie, tremblements, convulsions. Si l'animal est faible : demi-dose pendant 3 jours puis dose normale.","1 fois par jour (pendant 3 jours) puis 1 fois/semaine pendant 2 semaines","mg/kg","150","(poids*(posologie/1000))/concentrationSolution", {
  //   'Mammifère demi dose (12.5mg/kg)': 'poids*12.5/1000/150',
  //   'Mammifère pleine dose (25mg/kg)': 'poids*25/1000/150',
  // });

  // MyMedicament emeprid = MyMedicament("Emeprid ", "Divers","VO","Météorisation et ballonnements; métoclopramide chlorhydrate anhydre","2 fois par jours (de 1 à 3 jours)","mg/kg","1","(poids*(posologie/1000))/concentrationSolution", {
  //   'Oiseau (0.1ml/kg)': 'poids*0.1/1000',
  //   'Mammifère dose min (0.2mg/kg)': 'poids*0.2/1000',
  //   'Mammifère dose max (1mg/kg)': 'poids*1/1000',
  // });

  // MyMedicament intrafungol = MyMedicament("Intrafungol", "Divers","VO","R.A.S","1 fois par jour","ml/kg", {
  //   'Oiseau (1ml/kg)': 'poids/1000',
  // });

  // MyMedicament fercobsang = MyMedicament("Fercobsang", "Divers","VO","R.A.S"," 1 fois par jour de 2 à 3 prises un jour sur deux.","ml/kg", {
  //   'Oiseau (0.5ml/kg)': 'poids*0.5/1000',
  // });

  // MyMedicament actiselem = MyMedicament("Actiselem", "Divers","VO","peut être mis dans l'eau.","1 fois par jour pendant 1 à 2 semaines.","ml/kg", {
  //   'Oiseau (1ml/10kg)': 'poids*1/10000',
  // });
  // MyMedicament kaopectate = MyMedicament("Kaopectate", "Divers","VO","Diarrhée + salmonellose; kaolin + pectine ; Attention : ne pas donner en même temps que les médocs en VO : décaler de 1h avec les médocs en VO. Dose à augmenter si le traitement est inefficace.","2 à 3 fois par jour (de 3 à 5 jours)","ml/kg", {
  //   'Mammifère (1ml/kg)': 'poids/1000',
  // });

  // MyMedicament smecta =
  //     MyMedicament("Smecta (sachet dilué dans l'eau)", "Divers","VO","Diarrhée ; diosmectine ; Attention : ne pas donner en même temps que les médocs en VO : décaler de 1h avec les médocs en VO. Dose à augmenter si le traitement est inefficace. Pas de risque de surdosage.","2 à 3 fois par jour (jusqu’à disparition des symptômes)","ml/kg",{
  //   'Mammifère': 'poids/1000 ',
  // });
}
