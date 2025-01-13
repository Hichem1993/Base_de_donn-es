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