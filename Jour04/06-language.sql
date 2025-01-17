-- INSERT :
INSERT INTO user (email , password) VALUES ('email@email.com' , '123456');
-- Vous pouvez choisir l'ordre des colonnes que vous voulez MAIS les valeur doit suivre l'ordre choisi
INSERT INTO user (password , email) VALUES ('123456' , 'email@email.com');

-- Si je veux insérer plusieurs profils user :
INSERT INTO user (password , email) VALUES ('123456' , 'email@email.com');
INSERT INTO user (password , email) VALUES ('123456' , 'email@email.com');

-- Il est possible de n'avoir QUE une seule requête INSERT
INSERT INTO user (password , email) VALUES
('123456' , 'email@email.com'),
('123456' , 'email@email.com');

-- INSERT INTO et je veux appeler une Image / Vidéo
-- Fichier + adresse internet
-- Fichier stocké sur un disque dur
-- 'http://mario.jpg' => stocké en dans une colonne / d'une table





-- DELETE :
-- Je veux supprimer un ou plusieurs lignes dans une table
DELETE FROM user ;  -- !!! Vider toute les valeurs
TRUNCATE user ;  -- !!! Vider toutes valeurs + id repart à 1
DROP TABLE user ;  -- !!! Vider toutes les valeurs + id repart à 1 et même la structure colonnes et types


-- Supprimer le profil avec id = 1 :
DELETE FROM user WHERE id = 1 ;

-- Supprimer les profils qui ont l'id 1, 2 et 3 :
DELETE FROM user WHERE id = 1 ;
DELETE FROM user WHERE id = 2 ;
DELETE FROM user WHERE id = 3 ;
-- OU solution 2 :
DELETE FROM user WHERE id IN (1, 2, 3) ;
-- OU solution 3 :
DELETE FROM user WHERE id BETWEEN 1 AND 3 ;
-- OU solution 4 :
DELETE FROM user WHERE id >= 1 AND id =< 3 ;




-- UPDATE :
-- Je veux modifier une information :
UPDATE user SET password = 'toto' ; -- Tous les profils vont avoir le password toto

-- UPDATE il faut mettre un WHERE :
UPDATE user SET password = 'toto' WHERE id = 1 ;
UPDATE user SET password = 'toto' WHERE id IN (1, 2, 3);
UPDATE user SET password = 'toto' WHERE id BETWEEN 1 AND 3 ;
UPDATE user SET password = 'toto' WHERE id >= 1 AND id =< 3 ;

-- Mettre à jour plusieurs colonnes en même temps :
UPDATE user SET email = 'nouveau@yahoo.fr' , password = 'titi' WHERE id = 1 ;






-- SELECT :