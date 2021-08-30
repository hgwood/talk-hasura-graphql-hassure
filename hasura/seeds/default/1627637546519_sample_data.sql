insert into
  projet (code, nom)
  values
    ('P1', 'Projet 1'),
    ('P2', 'Projet 2');

insert into
  manager (matricule, nom)
  values
    (1, 'Roger Mastoc');

insert into
  consultant (matricule, nom, matricule_manager)
  values
    (2, 'Robert Patrick', 1),
    (3, 'Géraldine Dumur', 1);

insert into
  demi_journee_de_cra (matricule_consultant, date, demi_journee, code_projet)
  values
    (3, '2021-09-01', 'matin', 'P1'),
    (3, '2021-09-01', 'apres_midi', 'P1'),
    (3, '2021-09-02', 'matin', 'P1'),
    (3, '2021-09-02', 'apres_midi', 'P1'),
    (3, '2021-09-03', 'matin', 'P1'),
    (3, '2021-09-03', 'apres_midi', 'P1'),
    (3, '2021-09-04', 'matin', 'P1'),
    (3, '2021-09-04', 'apres_midi', 'P1'),
    (3, '2021-09-05', 'matin', 'P1'),
    (3, '2021-09-05', 'apres_midi', 'P1'),
    (3, '2021-09-06', 'matin', 'P1'),
    (3, '2021-09-06', 'apres_midi', 'P1'),
    (3, '2021-09-07', 'matin', 'P1'),
    (3, '2021-09-07', 'apres_midi', 'P1'),
    (3, '2021-09-08', 'matin', 'P1'),
    (3, '2021-09-08', 'apres_midi', 'P1'),
    (3, '2021-09-09', 'matin', 'P1'),
    (3, '2021-09-09', 'apres_midi', 'P1'),
    (3, '2021-09-10', 'matin', 'P1'),
    (3, '2021-09-10', 'apres_midi', 'P1'),
    (3, '2021-09-11', 'matin', 'P1'),
    (3, '2021-09-11', 'apres_midi', 'P1'),
    (3, '2021-09-12', 'matin', 'P1'),
    (3, '2021-09-12', 'apres_midi', 'P1'),
    (3, '2021-09-13', 'matin', 'P1'),
    (3, '2021-09-13', 'apres_midi', 'P1'),
    (3, '2021-09-14', 'matin', 'P1'),
    (3, '2021-09-14', 'apres_midi', 'P1'),
    (3, '2021-09-15', 'matin', 'P2'),
    (3, '2021-09-15', 'apres_midi', 'P2'),
    (3, '2021-09-16', 'matin', 'P2'),
    (3, '2021-09-16', 'apres_midi', 'P2'),
    (3, '2021-09-17', 'matin', 'P2'),
    (3, '2021-09-17', 'apres_midi', 'P2'),
    (3, '2021-09-18', 'matin', 'P2'),
    (3, '2021-09-18', 'apres_midi', 'P2'),
    (3, '2021-09-19', 'matin', 'P2'),
    (3, '2021-09-19', 'apres_midi', 'P2'),
    (3, '2021-09-20', 'matin', 'P2'),
    (3, '2021-09-20', 'apres_midi', 'P2'),
    (3, '2021-09-21', 'matin', 'P2'),
    (3, '2021-09-21', 'apres_midi', 'P2'),
    (3, '2021-09-22', 'matin', 'P2'),
    (3, '2021-09-22', 'apres_midi', 'P2'),
    (3, '2021-09-23', 'matin', 'P2'),
    (3, '2021-09-23', 'apres_midi', 'P2'),
    (3, '2021-09-24', 'matin', 'P2'),
    (3, '2021-09-24', 'apres_midi', 'P2'),
    (3, '2021-09-25', 'matin', 'P2'),
    (3, '2021-09-25', 'apres_midi', 'P2'),
    (3, '2021-09-26', 'matin', 'P2'),
    (3, '2021-09-26', 'apres_midi', 'P2'),
    (3, '2021-09-27', 'matin', 'P2'),
    (3, '2021-09-27', 'apres_midi', 'P2'),
    (3, '2021-09-28', 'matin', 'P2'),
    (3, '2021-09-28', 'apres_midi', 'P2'),
    (3, '2021-09-29', 'matin', 'P2'),
    (3, '2021-09-29', 'apres_midi', 'P2'),
    (3, '2021-09-30', 'matin', 'P2'),
    (3, '2021-09-30', 'apres_midi', 'P2');
