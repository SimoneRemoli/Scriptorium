package it.uniroma2.dicii.bd.Controller;

import it.uniroma2.dicii.bd.Model.DAO.ConnectionFactory;
import it.uniroma2.dicii.bd.Model.Domain.Bibliotecario;
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


        while(true)
        {

            try {
                choice = BibliotecarioView.show_menu();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }

            switch(choice)
            {
                case 1 -> new Bibliotecario(null,null,null).visualizza_personale();
                case 2 -> new Bibliotecario(null,null,null).informazioni_chi_possiede_cosa();
                case 3 -> new Bibliotecario(null,null,null).report();
                case 4 -> new Bibliotecario(null,null,null).aggiungi_copia();
                case 5 -> new Bibliotecario(null,null,null).aggiungi_libro_nuovo_con_una_copia();

            }

        }









    }
}
