-- JOINTURE :
-- J'ai besoin d'afficher le nom du batiment ET le nom des salles qu'il contient
-- Je veux afficher des valeurs qui sont stockées dans deux tables différentes

SELECT
    capacite
FROM batiment;
-- ERREUR : car la table batiment ne contient pas de colonne capacite

-- Il est possible defaire ce genre de requette MAIS il va falloir ajouterune JOINTURE sur notre SELECT
-- JOINTURE permet au SELECT de rassembler plusieurs tables en même temps
-- Ne pas confondre Jointure et les relations
-- D'abord RELATION , puis JOINTURE

SELECT
    batiment.nom , salle.nom
FROM batiment
JOIN salle ON salle.id_batiment = batiment.batiment_id;

-- Autre façon :
SELECT
    b.nom , s.nom
FROM batiment AS b
JOIN salle AS s
ON s.id_batiment = b.batiment_id;


-- Je veux afficher nom du batiment / code postal / nom de la salle / capacité
-- Uniquement pour les salles à Paris

SELECT 
    b.nom ,
    b.code_postal AS `Code postal`,
    s.nom ,
    s.capacite AS `Nombre de places assises`
FROM batiment AS b
JOIN salle AS s
ON s.id_batiment = b.batiment_id
WHERE
    b.ville = 'Paris';


-- EXO :
-- Afficher l'ensemble des salles de reunion qui sont dans un batiment à Marseille dont la capacité est > 80
-- Afficher le nom de batiment, rue et code postal (concaténation), nom salle , date_création en français
SELECT 
    b.nom AS `Nom batiment`,
    b.rue || ', ' || b.code_postal AS `Adresse`,
    s.nom AS `Nom salle`,
    strftime('%d/%m/%Y', s.dt_creation) AS `Date de création`
FROM batiment AS b
JOIN salle AS s
ON s.id_batiment = b.batiment_id
WHERE
    b.ville = 'Marseille' AND s.capacite > 80;