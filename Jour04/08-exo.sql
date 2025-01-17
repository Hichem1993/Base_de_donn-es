-- PARTIE 1 :

CREATE TABLE IF NOT EXISTS batiment (
    batiment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(255),
    rue VARCHAR(255),
    code_postal VARCHAR(5),
    ville VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS salle (
    salle_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(255),
    capacite SMALLINT,
    description TEXT,
    url_img VARCHAR(255),
    dt_creation DATE,
    id_batiment INT,
    FOREIGN KEY(id_batiment) REFERENCES batiment (nom)
);




--PARTIE 2 :
INSERT INTO batiment (nom , rue , code_postal , ville) VALUES
('Richelieu' , '75 rue de Paris' , '75000' , 'Paris'),
('Jacques Prevert' , '30 rue des Feuilles' , '13000' , 'Marseille'),
('Victor Hugo' , '44 rue Marius Aufant' , '92000' , 'Levallois');


INSERT INTO salle (nom , capacite , description , url_img , dt_creation , id_batiment) VALUES
('Rouge' , 20 , 'salle avec Vidéo Projecteur' , 'img.jpg' , 'le 1er février 2024', 1),
('Bleue' , 10 , 'salle avec bureau' , 'img.jpg' , 'le 1er mars 2024', 1),
('Rose' , 50 , 'salle' , 'img.jpg' , 'le 1er octobre 2024', 2),
('Mauve' , 100 , 'auditorium' , 'img.jpg' , 'le 1er octobre 2010', 2),
('Jaune' , 15 , 'salle de réunion' , 'img.jpg' , 'le 1er janvier 2025', 2);




-- PARTIE 3 :
UPDATE salle SET nom = 'Vert' WHERE salle_id = 5 ;

UPDATE batiment SET code_postal = '92300' WHERE batiment_id = 3 ;

DELETE FROM salle WHERE salle_id = 1 ;