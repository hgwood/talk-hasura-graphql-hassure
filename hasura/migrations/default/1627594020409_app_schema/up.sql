create table projet (
  code text primary key,
  nom text not null
);

create table manager (
  matricule char(3) primary key,
  nom text not null
);

create table consultant (
  matricule char(3) primary key,
  nom text not null,
  matricule_manager char(3) references manager (matricule) on delete restrict on update cascade
);

create table demi_journee (
  valeur text primary key
);

insert into demi_journee values ('matin'), ('apres_midi');

create table demi_journee_de_cra (
  matricule_consultant char(3) not null references consultant (matricule) on delete restrict on update cascade,
  date date not null,
  demi_journee text not null references demi_journee (valeur) on delete restrict on update cascade,
  code_projet text not null references projet (code) on delete restrict on update cascade,
  primary key (matricule_consultant, date, demi_journee)
);

create table validation_de_cra (
  matricule_consultant char(3) not null references consultant (matricule) on delete restrict on update cascade,
  annee integer not null,
  mois integer not null check (mois >= 1 and mois <= 12),
  date timestamptz not null default current_timestamp,
  approuve_par_manager boolean not null default false,
  primary key (matricule_consultant, annee, mois)
);
