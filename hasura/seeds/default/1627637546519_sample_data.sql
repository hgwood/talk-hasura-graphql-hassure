insert into
  projet (code, nom)
  values
    ('friendship_magic', 'Etudier la magie de l''amitié'),
    ('celestia', 'S''entretenir avec Célestia'),
    ('apples', 'Récolter les pommes'),
    ('eat_cakes', 'Manger des gâteaux'),
    ('clean_pastry_shop', 'Nettoyer la pâtisserie'),
    ('make_cakes', 'Faire des gâteaux'),
    ('race', 'Faire la course')
  on conflict (code)
    do update set nom = excluded.nom;

insert into
  manager (matricule, nom)
  values
    ('CEL', 'Célestia')
  on conflict (matricule)
    do update set nom = excluded.nom;

insert into
  consultant (matricule, nom, matricule_manager)
  values
    ('RDA', 'Rainbow Dash', 'CEL'),
    ('TSP', 'Twilight Sparkles', 'CEL'),
    ('AJA', 'Applejack', 'CEL'),
    ('PPI', 'Pinkie Pie', 'CEL')
  on conflict (matricule)
    do update set nom = excluded.nom, matricule_manager = excluded.matricule_manager;

insert into
  demi_journee_de_cra (matricule_consultant, date, demi_journee, code_projet)
  values
    ('RDA', '2021-08-01', 'matin', 'race'),
    ('TSP', '2021-09-01', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-01', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-02', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-02', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-03', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-03', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-04', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-04', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-05', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-05', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-06', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-06', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-07', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-07', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-08', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-08', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-09', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-09', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-10', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-10', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-11', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-11', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-12', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-12', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-13', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-13', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-14', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-14', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-15', 'matin', 'celestia'),
    ('TSP', '2021-09-15', 'apres_midi', 'celestia'),
    ('TSP', '2021-09-16', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-16', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-17', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-17', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-18', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-18', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-19', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-19', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-20', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-20', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-21', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-21', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-22', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-22', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-23', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-23', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-24', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-24', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-25', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-25', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-26', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-26', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-27', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-27', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-28', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-28', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-29', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-29', 'apres_midi', 'friendship_magic'),
    ('TSP', '2021-09-30', 'matin', 'friendship_magic'),
    ('TSP', '2021-09-30', 'apres_midi', 'friendship_magic'),
    ('AJA', '2021-09-01', 'matin', 'apples'),
    ('AJA', '2021-09-01', 'apres_midi', 'apples'),
    ('AJA', '2021-09-02', 'matin', 'apples'),
    ('AJA', '2021-09-02', 'apres_midi', 'apples'),
    ('AJA', '2021-09-03', 'matin', 'eat_cakes'),
    ('AJA', '2021-09-03', 'apres_midi', 'eat_cakes')
  on conflict (matricule_consultant, date, demi_journee)
    do update set code_projet = excluded.code_projet;
