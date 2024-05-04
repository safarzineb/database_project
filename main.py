#!/usr/bin/python3

from utils import db
from affichage_et_choix import *
from requetes import *
from requetes_interactifs import *

def quefaire_menuPrincipale():
    what_to_execute = -1
    while what_to_execute < 0 or what_to_execute > 4:   
        print("veuiller selectionner l'action a executer:")
        print(" 1. Reinitialiser la base de donnees aux valeurs par default. ")
        print(" 2. Executer une requete pre-definie. ")
        print(" 3. Executer Requete utilisateur. ")
        print(" 4. supprimer toutes les valeurs de la base de donnees.")
        print(" 0. Quitter")
        what_to_execute = int(input())
    return what_to_execute


#requete utilisateur 4. afficher les contrats en cours d'un utilisateur spécifique

def main():
    # Nom de la BD à créer
    db_file = "mydata/projet_energy.db"

    # Créer une connexion a la BD
    conn = db.creer_connexion(db_file)

    # Remplir la BD
    #print("1. On crée la bd et on l'initialise avec des premières valeurs.")
    db.mise_a_jour_bd(conn, "mydata/creation_tables.sql")
    db.mise_a_jour_bd(conn, "mydata/Donnee_OK.sql")

    premier_choix = -1
    while premier_choix != 0 :
        premier_choix = quefaire_menuPrincipale()

        if premier_choix == 1: #reinitialiser la base de donnee
            db.mise_a_jour_bd(conn, "mydata/creation_tables.sql")
            db.mise_a_jour_bd(conn, "mydata/Donnee_OK.sql")

        elif premier_choix == 2: #executer une requete pre-definie
            requet_predef = -1
            while requet_predef != 0 :
                requet_predef = menu_requetes_pre_definie()
                choix_requete_predef(requet_predef, conn)

        elif premier_choix == 3: #Requete utilisateur
            requete_utilisateur = -1
            while requete_utilisateur != 0 :
                requete_utilisateur = menu_requete_utilisateur()
                choix_requete_utilisateur(requete_utilisateur, conn)

        elif premier_choix == 4: #suppression des donnees
            db.mise_a_jour_bd(conn, "mydata/creation_tables.sql")

        elif premier_choix == 0 : print("------------------------- Fin du programme -------------------------")
        else : print("\n ERREUR Veuillez selectionnes un numero dans la liste\n")


if __name__ == "__main__":
    main()
