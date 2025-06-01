package it.uniroma2.dicii.bd.Controller;

import it.uniroma2.dicii.bd.Model.DAO.ConnectionFactory;
import it.uniroma2.dicii.bd.Model.Domain.Admin;
import it.uniroma2.dicii.bd.Model.Domain.Bibliotecario;
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
                case 1 -> new Admin(null,null,null).aggiungi_personale();
                case 2 -> new Admin(null,null,null).elimina_personale();
                case 3 -> new Bibliotecario(null,null,null).aggiungi_personale();
                case 4 -> new Bibliotecario(null,null,null).elimina_personale();
                case 5 -> new Bibliotecario(null,null,null).validate();
                case 6 -> new Bibliotecario(null,null,null).visualizza_personale();
                case 7 -> new Admin(null,null,null).visualizza_personale();
                case 8 -> new Admin(null,null,null).elimina_fisicamente_libro();
                case 9 -> fine();

            }
        }
    }
    public void fine()
    {
        System.out.println("\n \n \t Programma terminato con successo. ");
        System.exit(0);
    }
}
