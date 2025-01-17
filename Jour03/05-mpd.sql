-- Créer la table auteur
CREATE TABLE IF NOT EXISTS auteur (
    id_auteur INTEGER PRIMARY KEY AUTOINCREMENT,
    prenom VARCHAR(255) NOT NULL,
    nom VARCHAR(255) NOT NULL,
    date_naissance DATE
);

-- Créer la table livre
CREATE TABLE IF NOT EXISTS livre (
    id_livre INTEGER PRIMARY KEY AUTOINCREMENT,
    titre VARCHAR(255) NOT NULL,
    genre VARCHAR(255),
    date_publication DATE
);

-- Créer la table membre
CREATE TABLE IF NOT EXISTS membre (
    id_membre INTEGER PRIMARY KEY AUTOINCREMENT,
    prenom VARCHAR(255) NOT NULL,
    nom VARCHAR(255) NOT NULL,
    date_adhesion DATE
);

-- Créer la table auteur_livre
CREATE TABLE IF NOT EXISTS auteur_livre (
    auteur_id INT,
    livre_id INT,
    FOREIGN KEY(auteur_id) REFERENCES auteur(id_auteur),
    FOREIGN KEY(livre_id) REFERENCES livre(id_livre)
);

-- Créer la table emprunt
CREATE TABLE IF NOT EXISTS emprunt (
    id_emprunt INTEGER PRIMARY KEY AUTOINCREMENT,
    date_emprunt DATETIME,
    date_retour DATETIME,
    membre_id INT,
    livre_id INT,
    FOREIGN KEY(membre_id) REFERENCES membre (id_membre),
    FOREIGN KEY(livre_id) REFERENCES livre(id_livre)
);