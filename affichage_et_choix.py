
from utils import db
from requetes import *
from requetes_interactifs import *


def menu_requetes_pre_definie():
    #print("\n ")
    print("""
    Quelle requete voulez vous executer: 
        1. Afficher la liste des productions avec le nom des producteurs et des fournisseurs.
        2. Afficher la liste de tout les clients.
        3. Calcul de la production totale par type de technologie.
        0. Retourner au menu principale. """)
    what_to_select = int(input())
    return what_to_select

def choix_requete_predef(choix_predefinie, conn):
    if choix_predefinie == 0: print("-------------------------retour au menu principal-------------------------\n")
    elif choix_predefinie == 1: 
        select_les_productions(conn)
    
    elif choix_predefinie == 2:  
        select_tous_les_clients(conn)
    
    elif choix_predefinie == 3: 
        production_par_typeTechnologie(conn)
    else : print("\n ERREUR Veuillez selectionnes un numero dans la liste\n")


def menu_requete_utilisateur():
    select = -1
    while select < 0 or select > 4 :
        print("\nQue voulez vous faire ?")
        print("\t 1. cas client: afficher les contrats d'un client")
        print("\t 2. cas producteur: afficher les centrales partenaire")
        print("\t 3. cas fournisseur: afficher les contrats avec des clients")
        print("\t 0. Retourner au menu principale")
        select = int(input())
    return select


def choix_requete_utilisateur(choix_utilisateur, conn):

    if choix_utilisateur == 0: print(" -------------------------retour au menu principale-------------------------\n")
    
    elif choix_utilisateur == 1: #affiche les contrats d'un utilisateurs
        afficher_contrat_client(conn)
    
    elif choix_utilisateur == 2: #afficher les centrales partenaires d'un producteur
        select_centrales_d_un_producteurs(conn)
    
    elif choix_utilisateur == 3: #afficher les contrats d'un fournisseur 
        select_contrats_d_un_fournisseur(conn)
    
    else : print("\n ERREUR Veuillez selectionnes un numero dans la liste\n")