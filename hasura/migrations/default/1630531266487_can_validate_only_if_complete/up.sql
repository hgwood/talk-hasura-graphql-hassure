drop function if exists journee_feuille_temps_feuille_complete(journee_feuille_temps);

create function journee_feuille_temps_feuille_complete
  (journee_feuille_temps_row journee_feuille_temps)
  returns boolean
  language sql stable
  as $$
    select nombre_jours_dans_mois(journee_feuille_temps_row.annee, journee_feuille_temps_row.mois) = (
      select count(*)
      from journee_feuille_temps
      where
        annee = journee_feuille_temps_row.annee
        and mois = journee_feuille_temps_row.mois
        and matricule_consultant = journee_feuille_temps_row.matricule_consultant
    );
  $$
