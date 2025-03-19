package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ControllaCircuitoBiblioDAO
{
    public int Execute(Object... params) throws DAOException
    {
        int numero_copia = 0;
        String titolo = (String)params[0];
        try
        {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call controllo_circuito(?)}");
            cs.setString(1,titolo);
            ResultSet rs =  cs.executeQuery();

            while(rs.next())
            {
                numero_copia+=rs.getInt(3);
                System.out.println(rs.getString(1)+rs.getString(2)+ rs.getInt(3)+rs.getString(4));
            }

        }catch(SQLException e)
        {
            if(e.getSQLState().equals("45078"))
            {

                System.out.println("Non esiste in nessuna biblioteca convenzionata la copia");
            }
        }

        return numero_copia;



    }
}
