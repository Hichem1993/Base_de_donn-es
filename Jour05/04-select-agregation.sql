-- AGREGATION
-- Agréger une table

--------------------
----- Commande -----
--------------------
-- id       Total
-- 1         10
-- 2         30
-- 3         40

-- Somme des montant totaux à payer ==> 10 + 30 + 40 = 80
-- =============>
--------------------
----- Commande -----
--------------------
-- id       Total
-- ??        80





-- AUTRE EXEMPLE :
--------------------
----- Commande -----
--------------------
-- id       Total     Client
-- 1         10       Alain
-- 2         30       Alain
-- 3         40       Céline
-- 4         60       Céline

-- =============>

--------------------
----- Commande -----
--------------------
-- id       Total     Client
-- 1         40       Alain
-- 3         100      Céline




-- CAS PRATIQUE :
-- Combien j'ai de place assise par batiment
SELECT
    b.nom,
    SUM(s.capacite)
FROM batiment AS b 
JOIN salle AS s 
ON s.id_batiment = b.batiment_id
GROUP BY b.nom

-- Les nom des salles par batiment
SELECT
    b.nom,
    GROUP_CONCAT(s.nom ) AS `Les salles`
FROM batiment AS b 
JOIN salle AS s 
ON s.id_batiment = b.batiment_id
GROUP BY b.nom

-- Nombre des salles par batiment
SELECT
    b.nom,
    COUNT(s.nom ) AS `Les nombres des salles`
FROM batiment AS b 
JOIN salle AS s 
ON s.id_batiment = b.batiment_id
GROUP BY b.nom


-------------------------

-- Afficher par année de publication 
-- nom batiment / nom salle / capacite

SELECT
    strftime('%Y' , s.dt_creation) AS `Date création`,
    GROUP_CONCAT(b.nom) AS `Nom batiment`,
    GROUP_CONCAT(s.nom) AS `Nom salle`,
    SUM(s.capacite) AS `Capacité de la salle`
FROM batiment AS b 
JOIN salle AS s 
ON s.id_batiment = b.batiment_id
GROUP BY strftime('%Y' , s.dt_creation)