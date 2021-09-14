drop function if exists number_of_days_in_month(integer, integer);

create function number_of_days_in_month
  (annee integer, mois integer)
  returns integer
  language sql immutable
  as $$
    select extract(days from make_date(annee, mois, 1) + interval '1 month - 1 day');
  $$;

drop function if exists demi_journee_de_cra_cra_complet(demi_journee_de_cra);

create function demi_journee_de_cra_cra_complet
  (demi_journee_de_cra_row demi_journee_de_cra)
  returns boolean
  language sql stable
  as $$
    select number_of_days_in_month(demi_journee_de_cra_row.annee, demi_journee_de_cra_row.mois) * 2 = (
      select count(*)
      from demi_journee_de_cra
      where
        annee = demi_journee_de_cra_row.annee
        and mois = demi_journee_de_cra_row.mois
        and matricule_consultant = demi_journee_de_cra_row.matricule_consultant
    );
  $$
