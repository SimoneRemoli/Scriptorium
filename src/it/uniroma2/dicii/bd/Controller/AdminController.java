package it.uniroma2.dicii.bd.Controller;

import it.uniroma2.dicii.bd.Model.DAO.AggiungiAdminDAO;
import it.uniroma2.dicii.bd.Model.DAO.ConnectionFactory;
import it.uniroma2.dicii.bd.Model.Domain.Admin;
import it.uniroma2.dicii.bd.Model.Domain.Ruolo;
import it.uniroma2.dicii.bd.View.AdminView;

import java.io.IOException;
import java.sql.SQLException;


public class AdminController {

    public void start()
    {
        int choice = 0;
        try {
            ConnectionFactory.Cambio_Di_Ruolo(Ruolo.ADMIN);
        }catch(SQLException e)
        {
            System.err.println(e.getMessage());
            throw new RuntimeException(e);
        }

        while(true) {

            try {
                choice = AdminView.show_menu();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }


            switch(choice)
            {
                case 1 -> new Admin().aggiungi_personale();
                case 2 -> elimina_amministratore();
                case 3 -> aggiungi_bibliotecario();
                case 4 -> elimina_bibliotecario();
                case 5 -> controlla_validità_libri();
                case 6 -> fine();

            }




        }
    }

    public void controlla_validità_libri() {
    }

    public void elimina_bibliotecario() {
    }

    public void aggiungi_bibliotecario() {
    }

    public void elimina_amministratore() {
    }

    public void aggiungi_amministratore()
    {






    }
    public void fine()
    {

    }
}
