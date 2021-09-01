alter table demi_journee_de_cra
  add column annee integer generated always as (extract(year from date)) stored,
  add column mois integer generated always as (extract(month from date)) stored;
