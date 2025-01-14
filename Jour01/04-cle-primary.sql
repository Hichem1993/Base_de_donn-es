-- Clé Primaire :

-- Créer une table stocker des informations sur un concept
-- Autant de colonnes QUE d'informations à stocker
-- En plus de ces informations lorsque l'on crée une table on va ajouter une colonne technique
-- id ==> identifiant
-- UNIQUE et qui permet d'itentifier un enregistrement dans la table
-- Chiffre entier qui commence par 1
-- Chiffre est unique ==> pas possibilité de doublon
-- AUTOINCREMENT ==> la valeur suivante est déterminé par le SGBD

-- ------------------------------

-- EXO :
-- Créer la table commentaire
-- id qui clé primaire (chiffre entier qui commence par 1 / AUTOINCREMENT)
-- sujet texte de maximum 255 lettres OBLIGATOIRE
-- description texte maximum de 65000 lettres OBLIGATOIRE
-- email texte de maximum 255 lettres

CREATE TABLE IF NOT EXISTS commentaire (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sujet VARCHAR (255) NOT NULL,
    description TEXT NOT NULL,
    email VARCHAR (255)
)



-- -------------------------------


-- créer table exo-final 
-- cette table contient les colonnes suivantes 
-- id clé primaire
-- description text maximum de 65000 lettres 
-- auteur texte maximum de 255 lettres ET OBLIGATOIRE
-- date_creation date et par défaut date du jour
-- a_publier oui / non le champ est obligatoire


CREATE TABLE IF NOT EXISTS exo_final(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    description TEXT,
    auteur VARCHAR(255) NOT NULL,
    date_creation DATE DEFAULT CURRENT_DATE,
    a_publier BOOLEAN NOT NULL
)