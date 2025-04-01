package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

public class EliminaFisicamenteBookDAO
{
    public void Execute(Object... params) throws DAOException
    {
        String nome_libro = (String)params[0];
        try
        {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call elimina_fisicamente_libro(?)}");
            cs.setString(1,nome_libro);
            cs.executeQuery();

        }catch(SQLException e)
        {
            if(e.getSQLState().equals("45988"))
            {
                System.out.println("Il libro "+nome_libro+" non è stato eliminato.\n");
                throw new RuntimeException(e);
            }
        }
    }

}
