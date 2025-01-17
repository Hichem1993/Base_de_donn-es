-- MPD : Modèle physique des données
-- Transformer le shéma MLD en requette SQL


-- Créer la table service :
CREATE TABLE IF NOT EXISTS service (
    code_service INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(255) NOT NULL,
    chef VARCHAR(255)
);

-- Créer la table employe
CREATE TABLE IF NOT EXISTS employe (
    matricule INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(255) NOT NULL,
    adresse VARCHAR(255),
    fonction VARCHAR(255),
    service_code_service INT,
    FOREIGN KEY(service_code_service) REFERENCES service(code_service)
);

-- Créer la table projet
CREATE TABLE IF NOT EXISTS projet (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    dt_debut DATE,
    dt_fin DATE,
    nom VARCHAR(255) NOT NULL,
    description TEXT
);

-- Créer la table entre projet et employé
CREATE TABLE IF NOT EXISTS projet_employe (
    projet_id INT,
    matricule_employe INT,
    FOREIGN KEY(projet_id) REFERENCES projet (id),
    FOREIGN KEY(matricule_employe) REFERENCES employe (matricule)
);