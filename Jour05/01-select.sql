-- Il nous reste une dernière opération ESSENTIELLE sur les enregistrement
-- Récupérer / Afficher / Read les données stockées

-- SELECT :

-- Je veux juste récupérer le nom des salles de réunion dans la base :
SELECT nom FROM salle;

-- !!! ne pas confondre SELECT avec CREATE TABLE 
-- le SELECT ne va pas supprimer les autres colonnes de la table salle 

SELECT DISTINCT AS
FROM
JOIN ON
WHERE
ORDER BY
GROUP BY
LIMIT


-- Afficher le nom et la date de création de toutes les salles de réunion
SELECT nom, dt_creation FROM salle;
-- Afficher la date de création et le nom de toutes les salles de réunion
SELECT dt_creation, nom FROM salle;
-- Afficher le nom du batiment puis son code postal
SELECT nom, code_postal FROM batiment;

-- CAS PRATIQUE :
-- Afficher pour l'ensemble des salles de réunion : nom / url image / description
SELECT nom, url_img, description FROM salle;

-- Je veux afficher toutes les colonnes de toutes les salles :
SELECT * FROM salle;

-- Renommer les colonnes dans un SELECT : AS : Alias de colonnes
SELECT 
    nom AS `Nom de la salle`,
    description AS `Présentation de la salle`,
    dt_creation AS `Date de création`
FROM salle;


-- CAS PRATIQUE :
SELECT
    nom AS `Nom du batîment`,
    code_postal AS `Code postal`
FROM batiment;


--Concaténation :
--SQLITE : ||  ===> rue || ' ' || ville 
SELECT
    nom AS `Nom de l'immeuble`,
    rue || ' ' || code_postal || ' ' || ville AS `Adresse complète`
FROM batiment;


-- Je veux afficher toutes les salles de réunion
-- nom de la salle et uniquement l'année de publication
SELECT
    nom , 
    strftime('%Y', dt_creation) AS `Année création`
FROM salle;

-- strftime() fonction de SQLITE

SELECT
    nom , 
    strftime('%d/%m/%Y', dt_creation) AS `Année création en français`
FROM salle;




-- CAS PRATIQUE :
-- Créer le requete SELECT qui va afficher pour toutes les salles de réunion
-- Une colonne qui s'appelle présentation est contient :
-- Concaténation "La salle verte a une capacité de ... "
-- Une deuxieme colonne afficher la date de création en format français

SELECT
    'La salle ' || nom || ' a une capacité de ' || capacite AS `Présentation`,
    strftime('%d/%m/%Y', dt_creation) AS `Date de création`
FROM salle;


-- Je veux savoir le nombre de jour entre la date de création et la date d'aujourd'hui pour chaque salle :

-- unixepoch() ==> transformer date en grand nombre 
--             ==> Nombre de secondes entre le 1er janvier 1970 et MAINTENANT
SELECT
    nom,
    date('now') AS `Maintenent`,
    unixepoch('now') AS `Maintenent 2`,
    date(dt_creation) AS `Créé le`,
    unixepoch(dt_creation) AS `Créé le 2`,
    timediff('now', dt_creation) AS `Ecart`,
    unixepoch('now') - unixepoch(dt_creation) AS `Ecart en secondes`,
    (unixepoch('now') - unixepoch(dt_creation)) / (24*60*60) AS `Ecart en jours`
FROM salle;

-- SQLITE : sqlite.org
-- MySQL : w3school // sql.sh




-- CAS PRATIQUE :
-- Pour toutes les salles réunion afficher :
-- nom de la salle
-- la capacité ==> chiffre + le texte 'places assises'
-- dt_publication ==> le mois de création
SELECT 
    nom AS `Nom de la salle`,
    capacite || ' places assises' AS `Capacité de la salle`,
    strftime('%m', dt_creation) AS `Date de création`
FROM salle;



-- Si une salle contient entre 0 et 20 places assises ==> 'petite salle'
-- Si une salle contient entre 20 et 80 places assises ==> 'salle moyenne'
-- Si une salle contient plus 80 places assises ==> 'grande salle'
SELECT
    nom,
    capacite,
    (CASE 
        WHEN capacite > 0 AND capacite < 20 THEN 'Petite salle'
        WHEN capacite >= 20 AND capacite < 80 THEN 'Salle moyenne'
        ELSE 'Grande salle'
    END) AS `Type de salle`
FROM salle ;




-- CAS PRATIQUE :
-- Sélectionner tous les batiments :
-- Afficher :
    -- nom du batiment
    -- code postal
    -- région
        -- Si le code postal = 75000 ou 92300 ==> Ile de France
        -- sI LE CODE POSTAL = 13000 ==> Provence-Alpes-Côte d'Azur

SELECT
    nom AS `Nom du batiment`,
    code_postal AS `Code postal`,
    (CASE
        WHEN code_postal = 75000 OR code_postal = 92300 THEN 'Île de France'
        WHEN code_postal = 13000 THEN "Provence-Alpes-Côte d'Azur"
    END) AS `région`
FROM batiment;