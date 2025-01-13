-- Commentaire en SQL monoligne
/*
Commentaire
multiligne
en SQL
*/


/* Créer une table "user"
      - prenom VARCHAR
      - date_naissance DATETIME
      - description TEXT
*/

-- 

-- Majiscule : SQL
CREATE TABLE IF NOT EXISTS user (
        prenom VARCHAR(255),
        date_naissance DATETIME,
        description TEXT
)

-- Selectionner et clique droite : Run selected Query
-- Clique droit sur fichier 07-1-demo.db ==> Open DataBase




-- EXO :
-- Dans la base de données 01-demo.sql
-- créer une nouvelle table articles
-- cette table contient les 6 colonnes suivantes :

-- titre texte avec un maximum de 255 caractères
-- contenu texte avec un maximum de 65 000 caractères
-- date_publication date et heure
-- is_online oui / non 
-- auteur texte avec un maximum de 255 lettres
-- duree chiffre entier non négatif avec un valeur maximum de 255 

-- créer la requête SQL qui permet de créer cette table dans la base 
-- exécuter 
-- afficher la nouvelle table dans "SQLITE EXPLORER"


-- DROP TABLE IF EXISTS articles;   -- Supprimer la table articles

CREATE TABLE IF NOT EXISTS articles (
        titre VARCHAR(255),
        contenu TEXT,
        date_publication DATETIME,
        is_online BOOLEAN,
        auteur VARCHAR(255),
        duree SMALLINT
)


-- Si vous voulez changer la structured'une table : Modifier type / Supprimer colonne / ajouter une colonne
-- Sur SQLite : Supprimer la table et refaire CREATE TABLE

-- SUR MYSQL (phpMyAdmin) : ALTER TABLE pour modifier la structure



-- ---------------------------------------------------



-- En type // NULL et DEFAULT (valeur par défaut)
--EXO :

-- DROP TABLE IF EXISTS image;   -- Supprimer la table images

CREATE TABLE IF NOT EXISTS image(
      url VARCHAR(255) NOT NULL,  -- OBLIGATOIRE
      alt TEXT,
      date_publication DATE DEFAULT CURRENT_DATE,   -- Valeur date de maintenant
      is_online BOOLEAN DEFAULT FALSE,  -- Par default FALSE
      presentation TEXT
)



-- -----------------------------------------------------


-- EXO :
-- créer une nouvelle table qui s'appelle categorie
-- cette table contient les 5 colonnes suivantes :
-- titre champ textuel de 255 lettres max OBLIGATOIRE
-- online oui / non OBLIGATOIRE
-- description texte de 65000 caractères qui peut être vide
-- date_creation DATE et heure par défaut maintenant si vide
-- date_update DATE et heure par défaut maintenant si vide 


CREATE TABLE IF NOT EXISTS categorie (
      titre VARCHAR(255) NOT NULL,
      online BOOLEAN NOT NULL,
      description TEXT,
      date_creation DATETIME DEFAULT CURRENT_TIMESTAMP,
      date_update DATETIME DEFAULT CURRENT_TIMESTAMP
)