package it.uniroma2.dicii.bd.Controller;

import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.Model.DAO.ConnectionFactory;
import it.uniroma2.dicii.bd.Model.DAO.EffettuaRiconsegnaDAO;
import it.uniroma2.dicii.bd.Model.DAO.RiconsegnaDAO;
import it.uniroma2.dicii.bd.Model.Domain.Libro;
import it.uniroma2.dicii.bd.Model.Domain.Ruolo;
import it.uniroma2.dicii.bd.Model.Domain.Utente;
import it.uniroma2.dicii.bd.View.RiconsegnaView;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Scanner;

public class RiconsegnaController
{
    Scanner tastiera = new Scanner(System.in);
    Utente utente_registrato;
    Libro book;
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

        try{
            ConnectionFactory.Cambio_Di_Ruolo(Ruolo.BIBLIOTECARIO);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        try
        {
            book  = new RiconsegnaDAO().Execute(utente_registrato.getNome(), utente_registrato.getCognome(), utente_registrato.getData_di_nascita());
        }catch(DAOException e)
        {
            System.err.println(e.getMessage());
            throw new RuntimeException(e);
        }

        try
        {
            new EffettuaRiconsegnaDAO().Execute(book.getIsbn(), book.getNum_copia(), utente_registrato.getNome(), utente_registrato.getCognome(), utente_registrato.getData_di_nascita());
        }catch(DAOException e)
        {

        }












    }
}
