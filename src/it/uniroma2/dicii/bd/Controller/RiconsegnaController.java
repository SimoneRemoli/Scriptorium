package it.uniroma2.dicii.bd.Controller;

import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.Model.DAO.RiconsegnaDAO;
import it.uniroma2.dicii.bd.Model.Domain.Utente;
import it.uniroma2.dicii.bd.View.RiconsegnaView;

import java.io.IOException;
import java.util.Scanner;

public class RiconsegnaController
{
    Scanner tastiera = new Scanner(System.in);
    Utente utente_registrato;
    public void start()
    {
        try
        {
            utente_registrato = RiconsegnaView.show_menu();

        }catch (IOException e)
        {
            System.err.println(e.getMessage());
            throw new RuntimeException(e);
        }


        try
        {
            new RiconsegnaDAO().Execute(utente_registrato.getNome(), utente_registrato.getCognome(), utente_registrato.getData_di_nascita());
        }catch(DAOException e)
        {
            System.err.println(e.getMessage());
            throw new RuntimeException(e);
        }







    }
}
