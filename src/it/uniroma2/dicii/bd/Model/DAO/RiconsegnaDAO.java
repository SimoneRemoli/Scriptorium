package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

public class RiconsegnaDAO
{
    public void Execute(Object... params) throws DAOException
    {
        String nome = (String) params[0];
        String cognome = (String) params[1];
        String data = (String) params[2];

        try
        {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call controlla_utente(?,?,?)}");
            cs.setString(1,nome);
            cs.setString(2,cognome);
            cs.setString(3,data);
            cs.executeQuery();
            System.out.println("Ok, l'utente è stato trovato. ");



        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
