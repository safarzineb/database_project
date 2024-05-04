
from utils import db

def afficher_contrat_client(conn) :
    numClient = input("\n   Entrez l'identifiant du client: \n")
    cur = conn.cursor()
    cur.execute("""
                SELECT cl.nomClient, co.numeroContrat, fr.nomFournisseur, co.typeContrat, co.dateDebut, co.dateFin, co.prixVente
                FROM Clients cl JOIN Contrats co ON (cl.numeroClient = co.numeroClient) JOIN Fournisseurs fr ON (co.idFournisseur = fr.idFournisseur)
                WHERE cl.numeroClient = """ + numClient + ";")
    
    rows = cur.fetchall()
    for row in rows:
        print(row)

    if not rows:
        print("\n\t\t ------- la liste est vide  -------")
        print("\t\t ##### Ce client n'existe pas ##### ")
        print("\t\t -----------------------------------")


def select_centrales_d_un_producteurs(conn):
    idproducteur = input("\t Entrez l'identifiant du producteur: ")
    cur = conn.cursor()
    cur.execute("""
                SELECT *
                FROM Centrales
                WHERE idProducteur = """ + idproducteur + ";")
    
    rows = cur.fetchall()
    for row in rows:
        print(row)

    if not rows:
        print("\n\t\t --------- la liste est vide ---------")
        print("\t\t ##### Ce producteur n'existe pas ##### ")
        print("\t\t ---------------------------------------")



def select_contrats_d_un_fournisseur(conn):
    idFournisseur = input("\t Entrez l'identifiant du fournisseur: ")
    cur = conn.cursor()
    cur.execute("""
                SELECT C.nomClient, C.adresseClient, Co.dateDebut, Co.dateFin
                FROM Clients C
                INNER JOIN Contrats Co ON C.numeroClient = Co.numeroClient
                WHERE Co.idFournisseur = """ + idFournisseur + ";")
    
    rows = cur.fetchall()

    for row in rows:
        print(row)
    
    if not rows:
        print("\n\t\t ----------la liste est vide ----------")
        print("\t\t ##### Ce fournisseur n'existe pas ##### ")
        print("\t\t ---------------------------------------")
