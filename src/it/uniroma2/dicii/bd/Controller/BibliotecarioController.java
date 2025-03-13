package it.uniroma2.dicii.bd.Controller;

import it.uniroma2.dicii.bd.Model.DAO.ConnectionFactory;
import it.uniroma2.dicii.bd.Model.Domain.Ruolo;
import it.uniroma2.dicii.bd.View.BibliotecarioView;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

public class BibliotecarioController {

    public void start()
    {
        int choice;

        try
        {
            ConnectionFactory.Cambio_Di_Ruolo(Ruolo.BIBLIOTECARIO);
        } catch (SQLException e)
        {
            System.err.println(e.getMessage());
            throw new RuntimeException(e);
        }

        try{
            choice = BibliotecarioView.show_menu();
        }catch(IOException e)
        {
            throw new RuntimeException(e);
        }








    }
}
