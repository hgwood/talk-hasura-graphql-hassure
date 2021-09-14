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
  journee_feuille_temps (matricule_consultant, date, code_projet)
  values
    ('RDA', '2021-09-01', 'race'),
    ('TSP', '2021-10-01', 'friendship_magic'),
    ('TSP', '2021-10-02', 'friendship_magic'),
    ('TSP', '2021-10-03', 'friendship_magic'),
    ('TSP', '2021-10-04', 'friendship_magic'),
    ('TSP', '2021-10-05', 'friendship_magic'),
    ('TSP', '2021-10-06', 'friendship_magic'),
    ('TSP', '2021-10-07', 'friendship_magic'),
    ('TSP', '2021-10-08', 'friendship_magic'),
    ('TSP', '2021-10-09', 'friendship_magic'),
    ('TSP', '2021-10-10', 'friendship_magic'),
    ('TSP', '2021-10-11', 'friendship_magic'),
    ('TSP', '2021-10-12', 'friendship_magic'),
    ('TSP', '2021-10-13', 'friendship_magic'),
    ('TSP', '2021-10-14', 'friendship_magic'),
    ('TSP', '2021-10-15', 'celestia'),
    ('TSP', '2021-10-16', 'friendship_magic'),
    ('TSP', '2021-10-17', 'friendship_magic'),
    ('TSP', '2021-10-18', 'friendship_magic'),
    ('TSP', '2021-10-19', 'friendship_magic'),
    ('TSP', '2021-10-20', 'friendship_magic'),
    ('TSP', '2021-10-21', 'friendship_magic'),
    ('TSP', '2021-10-22', 'friendship_magic'),
    ('TSP', '2021-10-23', 'friendship_magic'),
    ('TSP', '2021-10-24', 'friendship_magic'),
    ('TSP', '2021-10-25', 'friendship_magic'),
    ('TSP', '2021-10-26', 'friendship_magic'),
    ('TSP', '2021-10-27', 'friendship_magic'),
    ('TSP', '2021-10-28', 'friendship_magic'),
    ('TSP', '2021-10-29', 'friendship_magic'),
    ('TSP', '2021-10-30', 'friendship_magic'),
    ('TSP', '2021-10-31', 'friendship_magic'),
    ('AJA', '2021-10-01', 'apples'),
    ('AJA', '2021-10-02', 'apples'),
    ('AJA', '2021-10-03', 'eat_cakes')
  on conflict (matricule_consultant, date)
    do update set code_projet = excluded.code_projet;
