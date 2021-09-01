create function consultant_without_validation
  (annee integer, mois integer)
  returns setof consultant
  language sql stable
  as $$
    select *
    from consultant
    where matricule not in (
      select matricule_consultant
      from validation_de_cra
      where annee = annee and mois = mois
    );
  $$;
