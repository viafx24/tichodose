import "MyMedicament.dart";

void initializeMedicaments() {
  MyMedicament melox = MyMedicament(
      "Melox / metacam (1.5mg/ml)",
      "Anti-inflammatoire",
      "VO",
      "Antalgique, anti-inflammatoire; molécule active: meloxicam",
      "1 à 2 fois par jour (pendant 3 à 7 jours).",
      "mg/kg",
      "1.5",
      "(poids*(posologie/1000))/concentrationSolution", {
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

  MyMedicament dexadreson = MyMedicament(
      "Dexadreson",
      "Anti-inflammatoire",
      "SC ou IM",
      "Etat de choc, troubles neurologiques; Hérisson : 4 mg/kg le 1er jour puis 2mg/kg.",
      "1 fois par jour (de 1 à 5 jours)",
      "mg/kg",
      "2",
      "(poids*(posologie/1000))/concentrationSolution", {
    'Oiseau pleine dose (4mg/kg)': '4',
    'Oiseau demi dose (2mg/kg)': '5',
    'Gros rapace (1mg/kg)': '1',
    'Gros rapace Neuro++ (4mg/kg)': '4',
    'Hérisson pleine dose (4mg/kg)': '4',
    'Hérisson demi dose (2mg/kg)': '2',
    'Rongeur/Lapin dose min (0.5mg/kg)': '0.5',
    'Rongeur/Lapin dose max (2mg/kg)': '2',
    'Chevreuil (0.06mg/kg)': '0.06',
    'Blaireau/Renard (0.1mg/kg)': '0.1',
    'Chauve-Souris (3mg/kg)': '3',
    // 'Chevreuil (3ml/100kg)': 'poids*3/100000',
    // 'Blaireau/Renard (0.5ml/10kg)': 'poids*0.5/10000',
    //'Chauve-Souris (0.003mg/g)': '3',
  });

  MyMedicament traumasedyl = MyMedicament(
      "Traumasedyl",
      "Anti-inflammatoire",
      "VO",
      "Homéopathie (antalgique)",
      "2 fois par jour (minimum 1 semaine)",
      "ml/kg",
      "n/a",
      "poids*posologie/1000", {
    'Mammifère/oiseau (1ml/kg)': '1',
  });

  MyMedicament meloxidolor = MyMedicament(
      "Meloxidolor (SC)",
      "Anti-inflammatoire",
      "SC",
      "Antalgique, anti-inflammatoire ; attention au risque de confusion avec le melox/metacam.",
      "1 fois par jour (pendant 3 à 7 jours)",
      "mg/kg",
      "5",
      "(poids*(posologie/1000))/concentrationSolution", {
    'Hérisson (0.2mg/kg)': '0.2',
    'Lapin dose min (0.3mg/kg)': '0.3',
    'Lapin dose max (1mg/kg)': '1',
    'Rongeur (0.5mg/kg)': '0.5',
    'Renard pleine dose (0.2mg/kg)': '0.2',
    'Renard demi dose (0.1mg/kg)': '0.1',
    'Chevreuil (0.5mg/kg)': '0.5',
  });

  MyMedicament augmentin = MyMedicament(
      "Augmentin",
      "Antibiotique",
      "VO",
      "Large spectre : troubles respiratoires, plaies, mauvais état général. Attention : jamais en VO pour les rongeurs. Amoxicilline (100mg/ml) + acide clavulanique (12.5mg/ml)",
      "2 fois par jour pendant 7 jours",
      "mg/kg",
      "112.5",
      "(poids*(posologie/1000))/concentrationSolution", {
    //'Oiseau (1ml/kg)': 'poids/1000',
    'Oiseau (112.5mg/kg)': '112.5',
    'Hérisson (40mg/kg)': '40',
    'Petit carnivore (10mg/kg)': '10',
    'Chauve-Souris (5mg/kg)': '5',
    //'Chauve-Souris (0,005 mg/g)': '5',
  });

  MyMedicament zodon = MyMedicament(
      "Zodon liquide",
      "Antibiotique",
      "VO",
      "molecule = clindamycine (25mg/ml)",
      "2 fois par jour.",
      "ml/kg",
      "25",
      "(poids*(posologie/1000))/concentrationSolution", {
    'Oiseau (50mg/kg)': '50',
  });

  MyMedicament bactrim = MyMedicament(
      "Bactrim",
      "Antibiotique",
      "VO",
      "molecules: Sulfaméthoxazole(40 mg/ml ?)/ Triméthoprime(8 mg/ml?).",
      "2 fois par jour",
      "ml/kg",
      "n/a",
      "poids*posologie/1000", {
    'Oiseau (0.8ml/kg)': '0.8',
  });

  MyMedicament adjusol = MyMedicament(
      "Adjusol",
      "Antibiotique",
      "VO",
      "Large spectre (Troubles digestifs + respiratoires + contre salmonelles et coccidies); Sulfadiazine + triméthoprime",
      "1 à 2 fois par jour Pendant 6 à 7 jours (peut être prolongé jusqu’à amélioration des symptômes).",
      "mg/kg",
      "100",
      "(poids*(posologie/1000))/concentrationSolution", {
    //'Oiseau (0.3ml/kg)': 'poids*0.3/1000',
    'Oiseau (30mg/kg)': '30',
    'Hérisson (30mg/kg)': '30',
    'Ecureuil/Rongeur dose min (15mg/kg)': '15',
    'Ecureuil/Rongeur dose max (30mg/kg)': '30',
  });

  MyMedicament zytromax = MyMedicament(
      "Zytromax",
      "Antibiotique",
      "VO",
      "molecule: Azithromycine (40mg/ml) ",
      "1 fois par jour.",
      "ml/kg",
      "n/a",
      "poids*posologie/1000", {
    'Oiseau (1ml/kg)': '1',
  });

  MyMedicament septotryl = MyMedicament(
      "Septotryl",
      "Antibiotique",
      "SC ou IM",
      "Large spectre (troubles digestifs + respiratoires + contre salmonelles et coccidies);sulfaméthoxypyridazine(200mg/kg) + triméthoprime(40mg/kg)",
      "2 fois par jours pendant 7 jours.",
      "mg/kg",
      "240",
      "(poids*(posologie/1000))/concentrationSolution", {
    'Hérisson (30mg/kg)': '30',
    'Rongeur dose min (15mg/kg)': '15',
    'Rongeur dose max (30mg/kg)': '30',
  });

  MyMedicament oxytetracycline = MyMedicament(
      "Oxytetracycline",
      "Antibiotique",
      "VO ou SC",
      "Large spectre (plaies, mauvais état général, encéphalite); molecule: oxytétracycline (50mg/ml)",
      "Pendant 6 à 7 jours (peut être prolongé jusqu’à amélioration des symptômes)",
      "mg/kg",
      "50",
      "(poids*(posologie/1000))/concentrationSolution", {
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

  MyMedicament baytril = MyMedicament(
      "Baytril",
      "Antibiotique",
      "VO ou SC",
      "large spectre (sur avis véterinaire + antibiogramme); molécule: enrofloxacine 5% ; si SC, toujours ajouter 0.5ml de NaCl stérile; Oiseaux: VO ou SC; Mammifère: uniquement SC.",
      "2 fois par jour",
      "mg/kg",
      "50",
      "(poids*(posologie/1000))/concentrationSolution", {
        'Oiseaux (20mg/kg)': '20',
        'Hérisson / rongeur (10 mg/kg)': '10',
        });

  MyMedicament shotapen = MyMedicament(
      "Shotapen",
      "Antibiotique",
      "SC ou IM",
      "Large spectre et longue action (Pour plaie); molécule= benzylpénicilline (13,1 mg/kg) + dihydrostreptomycine (16,4 mg); Attention produit épais = injecter avec aiguille verte + bien secouer le produit.",
      "1 fois par 72 heures",
      "ml/kg",
      "n/a",
      "poids*posologie/1000", {
    'Gros mammifère/carnivore (0.1ml/kg)': '0.1',
  });

  MyMedicament clavobay = MyMedicament(
      "Clavobay",
      "Antibiotique",
      "SC",
      "Large spectre. Molécule: amoxicilline (140mg/ml à vérifier) + acide clavulanique (35mg/ml à vérifier)) ; Important : Bien agiter le flacon avant utilisation (1). Préparer la seringue au dernier moment (2). Injecter avec une aiguille verte (3).",
      "1 fois par jour",
      "ml/kg",
      "n/a",
      "poids*posologie/1000", {
    'Hérisson (0.7ml/kg)': '0.7',
  });

  MyMedicament panacur = MyMedicament(
      "Panacur",
      "Antiparasitaire",
      "VO",
      "Nématodes intestinaux et certains respiratoires + oxyures; toxique pour les vautours ; molécule: fenbendazole (25mg/ml à vérifier)",
      "1 fois par jour pendant 5 jours",
      "mg/kg",
      "25",
      "(poids*(posologie/1000))/concentrationSolution", {
    'Oiseau (20mg/kg)': '20',
    'Hérisson (100mg/kg)': '100',
    'Ecureuil/Lapin (20mg/kg)': '20',
    'Chauve-Souris (5mg/kg)': '5',
    //'Chauve-Souris (0.005mg/g)': 'poids*0.005/25',
  });

  // MyMedicament virbamec = MyMedicament("Virbamec", "Antiparasitaire","SC","Parasites externes, gale, myiases, Nématodes intestinaux ;" {
  //   'Gros oiseau (0.05ml/kg)': 'poids*0.05/1000',
  // });

  MyMedicament flagyl = MyMedicament(
      "Flagyl",
      "Antiparasitaire",
      "VO",
      "Troubles digestifs (bactéries clostridium) ; Mauvais état général ; molécule: métronidazol (25mg/ml à vérifier) ; Déconseillé pour les passereaux.",
      "Hérisson: 1 fois par jour / Ecureuil 2 fois par jour pendant 7 jours.",
      "mg/kg",
      "25",
      "(poids*(posologie/1000))/concentrationSolution", {
    'Oiseau hors passereau (20mg/kg)': '20',
    'Hérisson (40mg/kg)': '40',
    'Ecureuil (20mg/kg)': '20',
  });

  MyMedicament alazol = MyMedicament(
      "Alazol",
      "Antiparasitaire",
      "VO",
      "molécule: Dimétridazole (166.87mg/ml à vérifier)",
      "1 fois par jour pendant 7 jours",
      "ml/kg",
      "n/a",
      "poids*posologie/1000", {
    'Oiseau (35mg/kg)': '0.2',
  });

  MyMedicament dolthene = MyMedicament(
      "Dolthene (Synanthic)",
      "Antiparasitaire",
      "VO",
      "Nématodes intestinaux et certains respiratoires + oxyures ; Molécule: oxfendazole (22.65mg/ml) ; A renouveler 2 semaines plus tard si besoin ; Si surdosage : pas de danger. ",
      "Hérisson: 1 fois par jour pendant 7 jours/ petit carnivore (Renard): 1 fois par jour pendant 3 jours.",
      "mg/kg",
      "22.65",
      "(poids*(posologie/1000))/concentrationSolution", {
    'Hérisson (100mg/kg)': '100',
    'Petit carnivore/Renard (11.3mg/kg)': '11.3'
    //'Petit carnivore/Renard (0.5ml/kg)': 'poids*0.5/1000',
  });

  MyMedicament levamisole = MyMedicament(
      "Levamisole",
      "Antiparasitaire",
      "VO",
      "Nématodes intestinaux et certains respiratoires. Si surdosage : hypersalivation, vomissements, diarrhée, polypnée, ataxie, tremblements, convulsions. Molécule: lévamisole (3.75%) ",
      "1 fois par jour (pendant 3 jours) puis 1 fois/semaine pendant 2 semaines",
      "mg/kg",
      "31.8",
      "(poids*(posologie/1000))/concentrationSolution", {
    'Mammifère (25mg/kg)': '25',
    'Oiseaux dose min (10mg/kg)': '10',
    'Oiseaux dose max (15mg/kg)': '15'
  });

  MyMedicament nemisole = MyMedicament(
      "Nemisole",
      "Antiparasitaire",
      "SC",
      "Nématodes intestinaux et certains respiratoires. Si surdosage : hypersalivation, vomissements, diarrhée, polypnée, ataxie, tremblements, convulsions. Si l'animal est faible : demi-dose pendant 3 jours puis dose normale. molécule: lévamisole (150mg/ml)",
      "1 fois par jour (pendant 3 jours) puis 1 fois/semaine pendant 2 semaines",
      "mg/kg",
      "150",
      "(poids*(posologie/1000))/concentrationSolution", {
    'Mammifère demi dose (12.5mg/kg)': '12.5',
    'Mammifère pleine dose (25mg/kg)': '25',
    'oiseaux (20mg/ml)': '20'
  });

  MyMedicament virbamec = MyMedicament(
    "Virbamec",
    "Antiparasitaire",
    "SC ou transcutanée",
    "Parasites externes, gale, myiases, nématodes intestinaux; molécule: ivermectine (10mg/ml) MAIS il faut préléver le volume indiqué dans une solution diluée 10 fois (1mg/ml). Pour cela, prélever 0.1 ml de virbamec puis 0.9 ml de NaCl. Passereau: 1 goutte en transcutanée.", 
    "Gale: 1 fois par semaine en SC (pendant 3 semaines); Parasites externes : 1 fois (transcutanée ou SC). Passereaux: renouvelable 1 fois tous les 15 jours.",
    "ml/kg",
      "n/a",
      "poids*posologie/1000", {
        'Hérisson (0.4ml/kg)':'0.4',
        'Renard (0.5ml/kg)' : '0.5',
        'oiseaux (0.5ml/kg)' : '0.5',
      });


  MyMedicament emeprid = MyMedicament(
      "Emeprid ",
      "Divers",
      "VO",
      "Météorisation et ballonnements; chlorhydrate de métoclopramide (1mg/ml)",
      "2 fois par jours (de 1 à 3 jours)",
      "mg/kg",
      "1",
      "(poids*(posologie/1000))/concentrationSolution", {
    'Oiseau (0.1mg/kg)': '0.1',
    //'Oiseau (0.1ml/kg)': 'poids*0.1/1000',
    'Mammifère dose min (0.2mg/kg)': '0.2',
    'Mammifère dose max (1mg/kg)': '1',
  });

  MyMedicament intrafungol = MyMedicament(
      "Itrafungol",
      "Divers",
      "VO",
      "anti-fongique; molécule: itraconazole (10mg/ml à vérifier) ",
      "1 fois par jour",
      "ml/kg",
      "n/a",
      "poids*posologie/1000", {
    'Oiseau (1ml/kg)': '1',
  });

  MyMedicament fercobsang = MyMedicament(
      "Fercobsang",
      "Divers",
      "VO",
      "en cas de carence en vitamine, fer, cobalt...",
      " 1 fois par jour de 2 à 3 prises un jour sur deux.",
      "ml/kg",
      "n/a",
      "poids*posologie/1000", {
    'Oiseau (0.5ml/kg)': '0.5',
  });

  MyMedicament actiselem = MyMedicament(
      "Actiselem",
      "Divers",
      "VO",
      "VO ou dans l'eau.",
      "1 fois par jour pendant 1 à 2 semaines.",
      "ml/kg",
      "n/a",
      "poids*posologie/1000", {
    'Oiseau (1ml/10kg)': '0.1',
  });

  MyMedicament kaopectate = MyMedicament(
      "Kaopectate",
      "Divers",
      "VO",
      "Diarrhée + salmonellose;molécule: kaolin + pectine ; Attention : ne pas donner en même temps que les médocs en VO : décaler de 1h avec les médocs en VO. Dose à augmenter si le traitement est inefficace.",
      "2 à 3 fois par jour (de 3 à 5 jours)",
      "ml/kg",
      "n/a",
      "poids*posologie/1000", {
    'Mammifère (1ml/kg)': '1',
  });

  MyMedicament smecta = MyMedicament(
      "Smecta (sachet dilué dans l'eau)",
      "Divers",
      "VO",
      "Diarrhée ;molécule: diosmectine ; Attention : ne pas donner en même temps que les médocs en VO : décaler de 1h avec les médocs en VO. Dose à augmenter si le traitement est inefficace. Pas de risque de surdosage.",
      "2 à 3 fois par jour (jusqu’à disparition des symptômes)",
      "ml/kg",
      "n/a",
      "poids*posologie/1000", {
    'Mammifère (1ml/kg)': '1 ',
  });

MyMedicament imaveral = MyMedicament(
  "Imaveral",
  "\u200B Cas spécial sans calcul",
  "cutanée",
  "Contre la teigne / mycose. Produit à diluer: 2.5 ml d'Imaveral pour 125 ml d'eau puis appliquer la dilution sur tout le corps de l'animal. Ne pas rincer.",
  "1 application tous les 3 jours au 4 jours. Faire 4 applications.",
  "n/a",
  "n/a",
  "n/a",
  {"n/a":"n/a",
});


MyMedicament charbon = MyMedicament(
  "Charbon actif",
  "\u200B Cas spécial sans calcul",
  "VO",
  "Problème digestif + aide salmonellose; attention pas en même temps que les médocs par VO + décaler de 1 heure avec médocs VO. Produit à diluer: 1 gélule dans 5 ml d'eau. Donner environ 10% du poids 2 à 3 fois par jour.",
  "chaque repas pour petits mammifères si besoin. pour empoisonnement: 2 à 3 fois par jours de 3 à 5 jours.",
  "n/a",
  "n/a",
  "n/a",
  {"n/a":"n/a",
});

MyMedicament fortiflora = MyMedicament(
  "Forti flora",
  "\u200B Cas spécial sans calcul",
  "VO",
  "Probiotique: 1/4 de sachet pour un hérisson d'environ 1 kg.",
  "2 semaines minimum",
  "n/a",
  "n/a",
  "n/a",
  {"n/a":"n/a",
});

MyMedicament candilat = MyMedicament(
  "Candilat injectable",
  "\u200B Cas spécial sans calcul",
  "IM",
  "Trouble de la sénescence cérébrale. Chevreuil: 1ml<10kg; 1.5ml si 10kg < poids < 20kg ; 3ml si poids > 20 kg.",
  "1 fois par jour (revoir selon le cas avec Dr Jeannet pour le temps de traitement)",
  "n/a",
  "n/a",
  "n/a",
  {"n/a":"n/a",
});


MyMedicament milbemax = MyMedicament(
  "Milbemax",
  "\u200B Cas spécial sans calcul",
  "VO",
  "Trématodes + cestodes gastro-intestinaux. Molécule: praziquantel. Posologie: 7mg/kg. Poids(g)*7/1000=A sachant que dans 1 comprimé, il y a 10 mg.",
  "1 fois par jour (pendant 1 à 3 jours). A renouveler 2 semaines plus tard.",
  "n/a",
  "n/a",
  "n/a",
  {"n/a":"n/a",
});


MyMedicament vitaminek1 = MyMedicament(
  "Vitamine K1",
  "\u200B Cas spécial sans calcul",
  "SC ou VO",
  "SC - 5mg/kg. Le premier jour : 2 fois par jour (si état toujours préoccupant, 1x/j le 2ème et 3ème jour, sinon passer à VO. VO: 2.5 mg/kg)",
  "2 à 3 semaines.",
  "n/a",
  "n/a",
  "n/a",
  {"n/a":"n/a",
});

MyMedicament gabapentine = MyMedicament(
  "Gabapentine",
  "\u200B Cas spécial sans calcul",
  "VO",
  "11 à 15 mg/kg trois fois par jour",
  "n/a",
  "n/a",
  "n/a",
  "n/a",
  {"n/a":"n/a",
});

MyMedicament tonivit = MyMedicament(
  "Tonivit",
  "\u200B Cas spécial sans calcul",
  "VO ou dans l'eau",
  "1 goutte pour 100 gr. Dans l'eau (eau T): 40 gouttes par litre",
  "n/a",
  "n/a",
  "n/a",
  "n/a",
  {"n/a":"n/a",
});

MyMedicament petphos = MyMedicament(
  "Petphos",
  "\u200B Cas spécial sans calcul",
  "VO ou sur MAD",
  "1/8 de comprimé pour 250 gr 1 fois par jour",
  "n/a",
  "n/a",
  "n/a",
  "n/a",
  {"n/a":"n/a",
});

MyMedicament ultraB = MyMedicament(
  "Ultra B",
  "\u200B Cas spécial sans calcul",
  "IM",
  "3 mg/kg (cf tableau dilution UB pour martinets et petites espèces)",
  "2 semaines minimum",
  "n/a",
  "n/a",
  "n/a",
  {"n/a":"n/a",
});

MyMedicament antirobe = MyMedicament(
  "Antirobe / Zodon (comprimé)",
  "\u200B Cas spécial sans calcul",
  "VO",
  "molécule: clindamycine ; Antirobe (25 ou 75 mg); Zodon (88mg sécable); posologie: 150 mg/kg 1 fois par jour",
  "n/a",
  "n/a",
  "n/a",
  "n/a",
  {"n/a":"n/a",
});

}