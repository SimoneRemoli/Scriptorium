package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ModificAccessoLibroDAO
{
    public void Execute(Object... params) throws DAOException
    {
        String isbn = (String)          params[0];
        String nome = (String)          params[1];
        String cognome = (String)       params[2];
        String data = (String)          params[3];
        int scelta =  (int)             params[4];
        String email = (String)         params[5];
        String phone = (String)         params[6];
        String fine_prestito = (String) params[7];

        try
        {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call modifica_copia(?,?,?,?,?,?,?,?)}");
            cs.setString(1,isbn);
            cs.setString(2,nome);
            cs.setString(3,cognome);
            cs.setString(4,data);
            cs.setString(5,email);
            cs.setString(6,phone);
            cs.setInt(7,scelta);
            cs.setString(8,fine_prestito);
            ResultSet rs =  cs.executeQuery();

            while(rs.next())
            {
                System.out.println("Scaffale = " + rs.getString(1) + "Ripiano = "+ rs.getString(2));
            }
        }catch(SQLException e)
        {
            throw new RuntimeException(e);
        }
    }
}
