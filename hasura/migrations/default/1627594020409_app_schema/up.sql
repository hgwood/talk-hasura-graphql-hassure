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

create table journee_feuille_temps (
  matricule_consultant char(3) not null references consultant (matricule) on delete restrict on update cascade,
  date date not null,
  code_projet text not null references projet (code) on delete restrict on update cascade,
  primary key (matricule_consultant, date)
);

create table validation_feuille_temps (
  matricule_consultant char(3) not null references consultant (matricule) on delete restrict on update cascade,
  annee integer not null,
  mois integer not null check (mois >= 1 and mois <= 12),
  date timestamptz not null default current_timestamp,
  approuve_par_manager boolean not null default false,
  primary key (matricule_consultant, annee, mois)
);

drop function if exists nombre_jours_dans_mois(integer, integer);

create function nombre_jours_dans_mois
  (annee integer, mois integer)
  returns integer
  language sql immutable
  as $$
    select extract(days from make_date(annee, mois, 1) + interval '1 month - 1 day');
  $$;
