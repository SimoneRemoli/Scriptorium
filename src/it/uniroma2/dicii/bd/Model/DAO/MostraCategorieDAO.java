package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MostraCategorieDAO
{
    public void Execute(Object... params) throws DAOException
    {
        try{
            int i = 0;
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call mostra_categorie()}");
            ResultSet rs = cs.executeQuery();
            while(rs.next())
            {
                System.out.println(i++ +" ) " + "Codice categoria:  "+rs.getInt(1)+" \t  Nome:   "+rs.getString(2)+ " \n");
            }
        }catch(SQLException e)
        {
            if(e.getSQLState().equals("45099"))
            {
                System.err.println(e.getMessage());
            }
            //throw new RuntimeException(e);
        }
    }
}
