CREATE TABLE IF NOT EXISTS etudiant (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(255),
    dt_naissance DATE,
    niveau SMALLINT
);

-- Une fois que ma table est crée en base
-- Je peux ENFIN enregistrer des données (valeurs)

-- Ajouter étudiant qui s'appelle : Alain qui est né le 01 janvier 2023 qui a un niveau de 30
INSERT INTO etudiant (nom, dt_naissance, niveau) VALUES ("Alain" , "2023-01-01" , 30);
INSERT INTO etudiant (nom, dt_naissance, niveau) VALUES ("Hichem" , "2023-02-01" , 20);
-- ne pas ajouer la colonne id ===> car une colonne gerer directement par la base de données AUTOINCREMENT