
from utils import db


def select_les_productions(conn):
    """Affiche la liste des productions avec le nom des producteurs et des fournisseurs."""
    cur = conn.cursor()
    cur.execute("""
                SELECT Pr.nomProducteur, Fr.nomFournisseur
                FROM Productions p JOIN Producteurs Pr ON (p.idProducteur = Pr.idProducteur) 
                                  JOIN Fournisseurs Fr ON (p.idFournisseur = Fr.idFournisseur); 
                """)
    rows = cur.fetchall()
    for row in rows:
        print(row)
    if not rows:
        print("\n\t\t ------------ la liste est vide ------------")


def select_tous_les_clients(conn):
    """
    Affiche la liste de tous les Clients.
    :param conn: Connexion à la base de données
    """
    cur = conn.cursor()
    cur.execute("""
                SELECT * 
                FROM Clients; 
                """)

    rows = cur.fetchall()
    for row in rows:
        print(row)
    if not rows:
        print("\n\t\t ------------ la liste est vide ------------")

def production_par_typeTechnologie(conn):
    """calcule la production totale par type de production""" 
    cur = conn.cursor()
    cur.execute("""
                SELECT typeTechnologie, SUM(previsionProduction) AS production_totale
                FROM Centrales
                GROUP BY typeTechnologie; 
                """)

    rows = cur.fetchall()
    for row in rows:
        print(row)
    if not rows:
        print("\n\t\t ------------ la liste est vide ------------")

def contrats_expirants_dans_les_30_jours(conn):
    cur = conn.cursor()
    cur.execute("""
                SELECT *
                FROM Contrats
                WHERE dateFin BETWEEN DATE('now') AND DATE('now', '+30 days'); 
                """)
    rows = cur.fetchall()
    for row in rows:
        print(row)
    if not rows:
        print("\n\t\t ------------ la liste est vide ------------")



