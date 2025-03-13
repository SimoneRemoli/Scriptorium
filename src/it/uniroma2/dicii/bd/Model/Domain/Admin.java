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
        Admin a = (Admin)imposta_acquisizione_in_aggiunta(1,1);
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
        Admin a = (Admin)imposta_acquisizione_in_aggiunta(1,0);
        try
        {
            new EliminaPersonaleGenericDAO().Execute(a.getNome(), a.getCognome(), Ruolo.ADMIN);
        }catch(DAOException e)
        {
            throw new RuntimeException(e);
        }

    }

}
