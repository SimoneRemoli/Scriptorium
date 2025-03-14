package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

public class ControllaDisponibilitaDAO
{
    public void Execute(Object... params) throws DAOException
    {
        String disponibilita = (String) params[0];
        try {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cstmt = conn.prepareCall("{call disponibilita(?)}");








        }catch(SQLException e)
        {
            throw new RuntimeException(e);
        }


    }
}
