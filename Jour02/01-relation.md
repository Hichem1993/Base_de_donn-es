# Les relations entre les tableaux :

## Tableau USER :
id : clé primaire
nom : Varchar(255)
email : Varchar(255)

## Tableau Recette :
id : clé primaire
titre : Varchar(255)
prix : Decimal(6,2)
date_creation : Date


=====> LES RELATIONS : CREER

id          nom         email                          id         titre          prix          date_creation
------------------------------------------------------------------------------------------------
1          Alain     al@gmail.com                       1         Poulet         20.25           2025-01-14
1          Alain     al@gmail.com                       2        Couscous        10.55           2025-01-14
1          Alain     al@gmail.com                       3          Pate          5.55            2025-01-13
2         Hichem     hich@gmail.com                     4         Viande         30.55           2025-01-14



======> LES RELATIONS : Clé etrangère, Clé secondaire, Foreign key: FK

id          nom         email                                         id         titre          prix          date_creation            user_id : FK
--------------------------------------                              ---------------------------------------------------------------------------------
1          Alain     al@gmail.com                                      1         Poulet         20.25           2025-01-14                   1
1          Alain     al@gmail.com                                      2        Couscous        10.55           2025-01-14                   1
1          Alain     al@gmail.com                                      3          Pate          5.55            2025-01-13                   1
2         Hichem     hich@gmail.com                                    4         Viande         30.55           2025-01-14                   2