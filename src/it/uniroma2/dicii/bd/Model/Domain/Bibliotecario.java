package it.uniroma2.dicii.bd.Model.Domain;

import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.Model.DAO.*;

import java.util.Scanner;

public class Bibliotecario extends Personale
{


    public Bibliotecario(String nome, String cognome, String password) {
        super(nome, cognome, password);
    }

    public void informazioni_chi_possiede_cosa()
    {
        try{

            new InformazioniPossessoDAO().Execute();

        }catch(DAOException e)
        {
            throw new RuntimeException(e);
        }

    }
    public void aggiungi_libro_nuovo_con_una_copia()
    {
        try
        {
            new AggiungiLibroDAO().Execute();
        }catch(DAOException e)
        {
            throw new RuntimeException(e);
        }

    }

    @Override
    public void aggiungi_personale()
    {
        Bibliotecario a = (Bibliotecario) imposta_acquisizione_in_aggiunta(2,1);
        try
        {
            new AggiungiPersonaleGenericDAO().Execute(a.getNome(), a.getCognome(), a.getPassword(), Ruolo.BIBLIOTECARIO);

        }catch(DAOException e)
        {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void elimina_personale()
    {
        Bibliotecario a = (Bibliotecario) imposta_acquisizione_in_aggiunta(2,0);
        try
        {
            new EliminaPersonaleGenericDAO().Execute(a.getNome(), a.getCognome(), Ruolo.BIBLIOTECARIO);

        }catch(DAOException e)
        {
            throw new RuntimeException(e);
        }

    }

    public void visualizza_personale()
    {
        try
        {
            new VisualizzaPersonaleDAO().Execute(Ruolo.BIBLIOTECARIO);
        }catch(DAOException e)
        {
            throw new RuntimeException(e);
        }

    }
    public void report()
    {
        try
        {
            new ReportCompletoDAO().Execute();
        }catch(DAOException e)
        {
            throw new RuntimeException(e);
        }

    }
    public void aggiungi_copia()
    {
        try
        {
            new AggiungiCopiaDAO().Execute();
        }catch(DAOException e)
        {
            throw new RuntimeException(e);
        }
    }
}
