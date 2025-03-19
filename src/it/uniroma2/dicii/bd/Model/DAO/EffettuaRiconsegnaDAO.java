package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

public class EffettuaRiconsegnaDAO
{
    public void Execute(Object... params) throws DAOException
    {
        String isbn = (String) params[0];
        int numero_copia = (int) params[1];
        String nome = (String) params[2];
        String cognome = (String) params[3];
        String data = (String) params[4];
        try
        {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call effettua_riconsegna(?,?,?,?,?)}");
            cs.setString(1,isbn);
            cs.setInt(2,numero_copia);
            cs.setString(3,nome);
            cs.setString(4,cognome);
            cs.setString(5,data);


            cs.executeQuery();
            System.out.println("La copia " + numero_copia + " è stata riconsegnata. ");
        }catch(SQLException e)
        {

            if(e.getSQLState().equals("45088"))
            {
                System.err.println("Errore riconsegna");
            }
            throw new RuntimeException(e);
        }

    }
}
