-- Jusqu'à maintenant nous avons afficher toutes les enregistrements d'une table
-- Filtrage ===> WHERE
-- Que nous avons déjà sur UPDATE / DELETE

-- Je veux récupérer toutes les batiments à Paris
-- Afficher : nom / ville
SELECT
    nom,
    ville
FROM batiment
WHERE ville = 'Paris';
-- Je veux récupérer toutes les batiments à Paris ou à Levallois
-- Afficher : nom / ville
SELECT
    nom,
    ville
FROM batiment
WHERE ville IN ('Paris' , 'Levallois');



-- CAS PRATIQUE :
-- Créer une requette SQL SELECT qui permet d'afficher les salles de réunion
-- Dont le nom est Rose et Mauve
-- Veuillez afficher le nom / capacite / url de l'image
SELECT
    nom,
    capacite,
    url_img
FROM salle
WHERE nom IN ('Rose' , 'Mauve');



-- Je veux afficher toutes les salles qui ont été créées en 2024
-- nom / date de creation
SELECT
    nom,
    dt_creation
FROM salle
WHERE strftime ('%Y' , dt_creation)= '2024' ;



-- Comparaison :
-- WHERE colonne = 'valeur'
-- WHERE colonne < 'valeur'
-- WHERE colonne > 'valeur'
-- WHERE colonne <= 'valeur'
-- WHERE colonne >= 'valeur'
-- WHERE colonne <> 'valeur'  Différent
-- WHERE colonne != 'valeur'  Différent

-- WHERE colonne <= 'valeur' AND colonne >= 'valeur'
-- WHERE colonne <= 'valeur' OR colonne >= 'valeur'
-- WHERE ( colonne <= 'valeur' AND colonne >= 'valeur' ) OR ( colonne <= 'valeur' AND colonne >= 'valeur' )

-- WHERE dt_creation = '2025-01-01'
-- WHERE dt_creation BETWEEN '2025-01-01' AND '2025-12-31'

-- Afficher les batiment dont le nom de la ville commence par la lettre P
-- WHERE ville LIKE 'P%'

-- Afficher les batiment dont le nom de la ville fini par la lettre s
-- WHERE ville LIKE '%s'

-- Afficher les batiment dont le nom de la ville contient la lettre a
-- WHERE ville LIKE '%a%'

SELECT
    nom,
    capacite
FROM salle
WHERE nom LIKE 'B%' OR nom LIKE 'b%';


SELECT
    nom,
    capacite,
    description
FROM salle
WHERE description LIKE '%V%' OR description LIKE '%v%';


-- EXO :
-- Afficher tous les batiments dont la rue contient la lettre 'a'
-- Afficher nom du batiment / codepostal / la rue
SELECT
    nom AS `Nom du bâtiment`,
    code_postal AS `Code postal`,
    rue AS `La rue`
FROM batiment
WHERE rue LIKE '%a%';

SELECT
    nom AS `Nom du bâtiment`,
    code_postal AS `Code postal`,
    rue AS `La rue`
FROM batiment
WHERE rue NOT LIKE '%a%';


-- JOINTURE ==> Permet d'aller chercher des informations sur plusieurs tableaux
-- AGREGATION ==> Rassembler plusieurs lignes d'un SELECT