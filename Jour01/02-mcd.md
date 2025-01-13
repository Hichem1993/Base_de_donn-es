# MCD : Modèle Conceptuel des Données
Schéma ==> Cahier des charges : présente les tables des projets

## Exemple :
- BDD : Recettes    >    Table : Profil user :
                                          - Prenom : 
                                          - Nom
                                          - Email
                                          - Sexe
                                          - Password
                                          - Date_naissance
                                          - Role
                                          - =======> Structure de la table : Les Colonnes


## Exo :
Créer table recettes :
                    - Titre : Texte / 0-255  ==> Varchar (255 lettres)
                    - Description : Texte / 0-65000  ==> Text (65000 lettres)
                    - Date publication :
                                    - Date : AAAA-MM-JJ  ==> Date
                                    - DateTime : AAAA-MM-JJ HH:MM:SS  ==> DateTime
                    - Prix : Chiffre > 0 / 65000  ==> INT / Decimal(6,2): chiffre a virgule (6 caractere et 2 apres virgule. EXP : 6541,21)
                    - Durée : Chiffre > 0 / 48h  ==> Small INT

Type / Nb maximum de caractères