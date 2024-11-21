import "MyMedicament.dart";

void initializeMedicaments() {
  MyMedicament melox =
      MyMedicament("Melox / metacam", "Anti-inflammatoire", "VO","Antalgique, anti-inflammatoire", {
    'Oiseau (1mg/kg)': 'poids/1500',
    'Gros rapace > 1500gr (0.5mg/kg)': 'poids/1500/2',
    'Cygne (0.2mg/kg)': 'poids/1500/5',
    'Hérisson (0.2mg/kg)': 'poids*0.2/1000/1.5',
    'Lapin dose min (0.3mg/kg)': 'poids*0.3/1000/1.5',
    'Lapin dose max (1mg/kg)': 'poids*1/1000/1.5',
    'Rongeur (0.5mg/kg)': 'poids*0.5/1000/1.5',
    'Chauve-Souris (0.002mg/g)': 'poids*0.002/1.5',
    'Renard demi dose (0.1mg/kg)': 'poids*0.1/1000/1.5',
    'Renard pleine dose (0.2mg/kg)': 'poids*0.2/1000/1.5',
    'Chevreuil (0.5mg/kg)': 'poids*0.5/1000/1.5',
  });

  MyMedicament dexadreson = MyMedicament("Dexadreson", "Anti-inflammatoire","SC ou IM","Etat de choc, troubles neurologiques; Hérisson : 4 mg/kg le 1er jour puis 2mg/kg.", {
    'Oiseau pleine dose (4mg/kg)': 'poids/500',
    'Oiseau demi dose (2mg/kg)': 'poids/500/2',
    'Gros rapace (1mg/kg)': 'poids/500/4',
    'Gros rapace Neuro++ (4mg/kg)': 'poids/500',
    'Hérisson pleine dose (4mg/kg)': 'poids*4/1000/2',
    'Hérisson demi dose (2mg/kg)': 'poids*2/1000/2',
    'Rongeur/Lapin dose min (0.5mg/kg)': 'poids*0.5/1000/2',
    'Rongeur/Lapin dose max (2mg/kg)': 'poids*2/1000/2',
    'Chevreuil (3ml/100kg)': 'poids*3/100000',
    'Blaireau/Renard (0.5ml/10kg)': 'poids*0.5/10000',
    'Chauve-Souris (0.003mg/g)': 'poids*0.003/2',
  });

  MyMedicament traumasedyl = MyMedicament("Traumasedyl", "Anti-inflammatoire","VO","Homéopathie (antalgique)", {
    'Mammifère/oiseau (1ml/kg)': 'poids/1000',
  });

  MyMedicament meloxidolor =
      MyMedicament("Meloxidolor (SC)", "Anti-inflammatoire","SC","Antalgique, anti-inflammatoire ; attention au risque de confusion avec le melox/metacam.", {
    'Hérisson (0.2mg/kg)': 'poids*0.2/1000/5',
    'Lapin dose min (0.3mg/kg)': 'poids*0.3/1000/5',
    'Lapin dose max (1mg/kg)': 'poids*1/1000/5',
    'Rongeur (0.5mg/kg)': 'poids*0.5/1000/5',
    'Renard pleine dose (0.2mg/kg)': 'poids*0.2/1000/5',
    'Renard demi dose (0.1mg/kg)': 'poids*0.1/1000/5',
    'Chevreuil (0.5mg/kg)': 'poids*0.5/1000/5',
  });

  MyMedicament augmentin = MyMedicament("Augmentin", "Antibiotique","VO","Large spectre : troubles respiratoires, plaies, mauvais état général. Attention : jamais en VO pour les rongeurs.", {
    'Oiseau (1ml/kg)': 'poids/1000',
    'Hérisson (40 mg/kg)': 'poids*40/1000/112.5',
    'Petit carnivore (10 mg/kg)': 'poids*10/1000/112.5',
    'Chauve-Souris (0,005 mg/g)': 'poids*0.005/112.5',
  });

  MyMedicament zodon = MyMedicament("Zodon liquide", "Antibiotique","VO","molecule=clindamycine", {
    'Oiseau (50mg/kg)': 'poids/500',
  });

  MyMedicament bactrim = MyMedicament("Bactrim", "Antibiotique","VO","R.A.S" ,{
    'Oiseau (0.8ml/kg)': 'poids*0.8/1000',
  });

  MyMedicament adjusol = MyMedicament("Adjusol", "Antibiotique","VO","Large spectre (Troubles digestifs + respiratoires + contre salmonelles et coccidies); Sulfadiazine + triméthoprime", {
    'Oiseau (0.3ml/kg)': 'poids*0.3/1000',
    'Hérisson (30mg/kg)': 'poids*30/1000/100',
    'Ecureuil/Rongeur dose min (15mg/kg)': 'poids*15/1000/100',
    'Ecureuil/Rongeur dose max (30mg/kg)': 'poids*30/1000/100',
  });

  MyMedicament zytromax = MyMedicament("Zytromax", "Antibiotique","VO","R.A.S", {
    'Oiseau (1ml/kg)': 'poids/1000',
  });

  MyMedicament septotryl = MyMedicament("Septotryl", "Antibiotique","SC ou IM","Large spectre (Troubles digestifs + respiratoires + contre salmonelles et coccidies);sulfaméthoxypyridazine + triméthoprime", {
    'Hérisson (30mg/kg)': 'poids*30/1000/240',
    'Rongeur dose min (15mg/kg)': 'poids*15/1000/240',
    'Rongeur dose max (30mg/kg)': 'poids*30/1000/240',
  });

  MyMedicament oxytetracycline =
      MyMedicament("Oxytetracycline", "Antibiotique","VO ou SC","Large spectre (Plaies, mauvais état général, encéphalite)", {
    'Oiseau (1ml/kg)': 'poids/1000',
    'Hérisson (50 mg/kg)': 'poids*50/1000/50',
    'Petit carnivore dose min (5mg/kg)': 'poids*5/1000/50',
    'Petit carnivore dose max (10mg/kg)': 'poids*10/1000/50',
    'Renard (10mg/kg)': 'poids*10/1000/50',
    'Blaireau (5mg/kg)': 'poids*5/1000/50',
    'Rongeur (30mg/kg)': 'poids*30/1000/50',
    'Lapin VO (50mg/kg) ': 'poids*50/1000/50',
    'Chevreuil (2ml/10kg)': 'poids*2/10000',
  });

  MyMedicament shotapen = MyMedicament("Shotapen", "Antibiotique","SC ou IM","Large spectre et longue action (Pour plaie); Pénicilline; Attention produit épais = injecter avec aiguille verte + bien secouer le produit.",  {
    'Gros mammifère/carnivore (0.1ml/kg)': 'poids*0.1/1000',
  });

  MyMedicament clavobay = MyMedicament("Clavobay", "Antibiotique","SC","Large spectre (Idem Augmentin) ; Important : Bien agiter le flacon avant utilisation (1). Préparer la seringue au dernier moment (2). Injecter avec une aiguille verte (3).", {
    'Hérisson (0.7ml/kg)': 'poids*0.7/1000 ',
  });

  MyMedicament panacur = MyMedicament("Panacur", "Antiparasitaire","VO","Nématodes intestinaux et certains respiratoires + oxyures; toxique pour les vautours", {
    'Oiseau (20mg/kg)': 'poids/1250',
    'Hérisson (100mg/kg)': 'poids*100/1000/25',
    'Ecureuil/Lapin (20mg/kg)': 'poids*20/1000/25',
    'Chauve-Souris (0.005mg/g)': 'poids*0.005/25',
  });

  // MyMedicament virbamec = MyMedicament("Virbamec", "Antiparasitaire","SC","Parasites externes, gale, myiases, Nématodes intestinaux ;" {
  //   'Gros oiseau (0.05ml/kg)': 'poids*0.05/1000',
  // });

  MyMedicament flagyl = MyMedicament("Flagyl", "Antiparasitaire","VO","Troubles digestifs (bactéries clostridium) ; Mauvais état général ; métronidazol ; Déconseillé pour les passereaux", {
    'Oiseau hors passereau (20mg/kg)': 'poids/1250',
    'Hérisson (40mg/kg)': 'poids*40*5/1000/125',
    'Ecureuil (20mg/kg)': 'poids*20*5/1000/125',
  });

  MyMedicament alazol = MyMedicament("Alazol", "Antiparasitaire","VO","R.A.S", {
    'Oiseau (35mg/kg)': 'poids/5000',
  });

  MyMedicament dolthene =
      MyMedicament("Dolthene (Synanthic)", "Antiparasitaire","VO","Nématodes intestinaux et certains respiratoires + oxyures ; oxfendazole ; A renouveler 2 semaines plus tard si besoin ; Si surdosage : pas de danger. ", {
    'Hérisson (100mg/kg)': 'poids*100/1000/22.65',
    'Petit carnivore/Renard (0.5ml/kg)': 'poids*0.5/1000',
  });

  MyMedicament levamisole = MyMedicament("Levamisole", "Antiparasitaire","VO","Nématodes intestinaux et certains respiratoires. Si surdosage : hypersalivation, vomissements, diarrhée, polypnée, ataxie, tremblements, convulsions.", {
    'Mammifère (25mg/kg)': 'poids*25/1000/31.8',
  });

  MyMedicament nemisole = MyMedicament("Nemisole", "Antiparasitaire","SC","Nématodes intestinaux et certains respiratoires. Si surdosage : hypersalivation, vomissements, diarrhée, polypnée, ataxie, tremblements, convulsions. Si l'animal est faible : demi-dose pendant 3 jours puis dose normale.", {
    'Mammifère demi dose (12.5mg/kg)': 'poids*12.5/1000/150',
    'Mammifère pleine dose (25mg/kg)': 'poids*25/1000/150',
  });

  MyMedicament emeprid = MyMedicament("Emeprid ", "Divers","VO","Météorisation et ballonnements; métoclopramide chlorhydrate anhydre", {
    'Oiseau (0.1ml/kg)': 'poids*0.1/1000',
    'Mammifère dose min (0.2mg/kg)': 'poids*0.2/1000',
    'Mammifère dose max (1mg/kg)': 'poids*1/1000',
  });

  MyMedicament intrafungol = MyMedicament("Intrafungol", "Divers","VO","R.A.S", {
    'Oiseau (1ml/kg)': 'poids/1000',
  });

  MyMedicament fercobsang = MyMedicament("Fercobsang", "Divers","VO","R.A.S", {
    'Oiseau (0.5ml/kg)': 'poids*0.5/1000',
  });

  MyMedicament actiselem = MyMedicament("Actiselem", "Divers","VO","peut être mis dans l'eau.", {
    'Oiseau (1ml/10kg)': 'poids*1/10000',
  });
  MyMedicament kaopectate = MyMedicament("Kaopectate", "Divers","VO","Diarrhée + salmonellose; kaolin + pectine ; Attention : ne pas donner en même temps que les médocs en VO : décaler de 1h avec les médocs en VO. Dose à augmenter si le traitement est inefficace.", {
    'Mammifère (1ml/kg)': 'poids/1000',
  });

  MyMedicament smecta =
      MyMedicament("Smecta (sachet dilué dans l'eau)", "Divers","VO","Diarrhée ; diosmectine ; Attention : ne pas donner en même temps que les médocs en VO : décaler de 1h avec les médocs en VO. Dose à augmenter si le traitement est inefficace. Pas de risque de surdosage.",{
    'Mammifère': 'poids/1000 ',
  });
}
