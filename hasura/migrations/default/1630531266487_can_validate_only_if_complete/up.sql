drop function if exists number_of_days_in_month(integer, integer);

create function number_of_days_in_month
  (annee integer, mois integer)
  returns integer
  language sql immutable
  as $$
    select extract(days from make_date(annee, mois, 1) + interval '1 month - 1 day');
  $$;

drop function if exists journee_feuille_temps_feuille_complete(journee_feuille_temps);

create function journee_feuille_temps_feuille_complete
  (journee_feuille_temps_row journee_feuille_temps)
  returns boolean
  language sql stable
  as $$
    select number_of_days_in_month(journee_feuille_temps_row.annee, journee_feuille_temps_row.mois) = (
      select count(*)
      from journee_feuille_temps
      where
        annee = journee_feuille_temps_row.annee
        and mois = journee_feuille_temps_row.mois
        and matricule_consultant = journee_feuille_temps_row.matricule_consultant
    );
  $$
