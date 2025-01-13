# Base de données
Dans un programme informatique on a :

==> Variables :
            Tableau(Array) : const prix [10,12,13,15];
            OBJECT : const formation = {
                nom : "DWWm",
                duree : 6,
                isFinished : false
            };
    Array + Objet ==> JSON  ===> Tableau à l'intérieur object
    
    const etudiant = [
        {id:1 , nom:"Alain", age:22},
        {id:2 , nom:"Celine", age:33}
    ];
    Récuperer Celine : etudiant[1].nom;

    const ville = {
        nom : "Paris",
        ecoles: [{}, {}, {}]
    };
    Récuperer 3eme ecole : ville.ecoles[2];


==> Traitements :
            - If
            - For
            - While


## Années 70 :
SGBD : Systeme de Gestion de base de Données : Logiciel :
                                                - MariaDB : Y : Grande base de données
                                                - Oracle
                                                - Mysql
                                                - Sqlite : Y : Petite base de données
                                                - MongoDB
                                                - Redis
    Language :
            - SQL


## Remplir base de données :
Requette SQL ====> SGBD ====> DATA
JS = const A=10;
SQL = Insert INTO "....." A = 10

On a 3 niveaux dans une DATA :
                        - Base données > Table > Ligne d'enregistrement
                        - EXEMPLE : Recette de cuisine > Recette > Salade (nom, prix, description)


## Démarche :
1. Créer la base
2. Créer une table
3. Ajouter les données dans la table