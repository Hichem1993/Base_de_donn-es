-- PARTIE 1 :
DROP TABLE if EXISTS batiment;
CREATE TABLE IF NOT EXISTS batiment (
    batiment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(255),
    rue VARCHAR(255),
    code_postal VARCHAR(5),
    ville VARCHAR(255) NOT NULL
);

DROP TABLE if EXISTS salle;
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
('Rouge' , 20 , 'salle avec Vidéo Projecteur' , 'img.jpg' , '2024-02-01', 1),
('Bleue' , 10 , 'salle avec bureau' , 'img.jpg' , '2024-03-01', 1),
('Rose' , 50 , 'salle' , 'img.jpg' , '2024-10-01', 2),
('Mauve' , 100 , 'auditorium' , 'img.jpg' , '2010-10-01', 2),
('Jaune' , 15 , 'salle de réunion' , 'img.jpg' , '2025-01-01', 2);




-- PARTIE 3 :
UPDATE salle SET nom = 'Vert' WHERE salle_id = 5 ;

UPDATE batiment SET code_postal = '92300' WHERE batiment_id = 3 ;

DELETE FROM salle WHERE salle_id = 1 ;