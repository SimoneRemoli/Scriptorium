package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ValidazioneDAO
{
    public void Execute(Object... params) throws DAOException
    {
        try {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call validazione()}");
            ResultSet rs =  cs.executeQuery();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
