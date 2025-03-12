package it.uniroma2.dicii.bd.Model.Domain;

import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.Model.DAO.AggiungiAdminDAO;

import java.util.Scanner;

public class Admin extends Personale
{
    @Override
    public void aggiungi_personale()
    {
        String nome="", cognome="",password="";
        Scanner tastiera = new Scanner(System.in);
        System.out.print("\t Inserisci il nome dell'Admin: ");
        nome = tastiera.next();
        System.out.print("\t Inserisci il cognome dell'Admin: ");
        cognome = tastiera.next();
        System.out.print("\t Password da assegnare: ");
        password = tastiera.next();
        try
        {
            new AggiungiAdminDAO().Execute(nome, cognome, password, Ruolo.ADMIN);

        }catch(DAOException e)
        {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void elimina_personale() {

    }
}
