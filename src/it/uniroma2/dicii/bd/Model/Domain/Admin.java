package it.uniroma2.dicii.bd.Model.Domain;

import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.Model.DAO.AggiungiPersonaleGenericDAO;
import it.uniroma2.dicii.bd.Model.DAO.EliminaPersonaleGenericDAO;

import java.util.Scanner;

public class Admin extends Personale
{

    public Admin(String nome, String cognome, String password) {
        super(nome, cognome, password);
    }

    @Override
    public void aggiungi_personale()
    {
        Admin a = (Admin)imposta_acquisizione_in_aggiunta(1);
        System.out.println("Nome = " + a.getNome());
        System.out.println("Cognome = " + a.getCognome());
        System.out.println("Nome = " + a.getPassword());




        try
        {
            new AggiungiPersonaleGenericDAO().Execute(a.getNome(), a.getCognome(), a.getPassword(), Ruolo.ADMIN);

        }catch(DAOException e)
        {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void elimina_personale()
    {
        String nome="", cognome="",password="";
        Scanner tastiera = new Scanner(System.in);
        System.out.print("\t Inserisci il nome dell'Admin da eliminare: ");
        nome = tastiera.next();
        System.out.print("\t Inserisci il cognome dell'Admin da eliminare: ");
        cognome = tastiera.next();
        try
        {
            new EliminaPersonaleGenericDAO().Execute(nome, cognome, Ruolo.ADMIN);

        }catch(DAOException e)
        {
            throw new RuntimeException(e);
        }

    }

}
