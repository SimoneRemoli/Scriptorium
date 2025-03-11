package it.uniroma2.dicii.bd.Controller;

import it.uniroma2.dicii.bd.Model.DAO.ConnectionFactory;
import it.uniroma2.dicii.bd.Model.Domain.Ruolo;

import java.sql.SQLException;

public class AdminController {

    public void start()
    {
        try {
            ConnectionFactory.Cambio_Di_Ruolo(Ruolo.ADMIN);
        }catch(SQLException e)
        {
            System.err.println(e.getMessage());
            throw new RuntimeException(e);
        }

    }
}
