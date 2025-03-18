package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RiconsegnaDAO
{
    public void Execute(Object... params) throws DAOException
    {
        String nome = (String) params[0];
        String cognome = (String) params[1];
        String data = (String) params[2];
        String titolo="",isbn="";
        int numcopy=0;

        try
        {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call controlla_utente(?,?,?)}");
            cs.setString(1,nome);
            cs.setString(2,cognome);
            cs.setString(3,data);

            ResultSet rs = cs.executeQuery();
            System.out.println("Ok, l'utente è stato trovato. ");

            while(rs.next())
            {
                nome = rs.getString(1);
                cognome = rs.getString(2);
                titolo = rs.getString(3);
                isbn = rs.getString(4);
                numcopy = rs.getInt(5);

            }

            System.out.println("L'utente "+nome+" "+cognome+" possiede attualmente la copia numero "+numcopy
            +" con ISBN:"+isbn+" che ha il seguente titolo '"+titolo+"'.");

        } catch (SQLException e) {

            if(e.getSQLState().equals("45024"))
            {
                System.out.println("Utente non esistente");
            }
            throw new RuntimeException(e);
        }

    }
}
