package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Scanner;

public class RegistraLibroECopiaDAO
{
    public void Execute(Object... params) throws DAOException
    {
        String isbn = (String)params[0];
        String titolo = (String)params[1];
        int codice_scaffale = (int) params[2], codice_ripiano = 0;
        int categoria = (int) params[3];
        Scanner tastiera = new Scanner(System.in);
        System.out.println("Inserisci il codice del ripiano dove porre il libro:  ");
        codice_ripiano = tastiera.nextInt();

        try{

            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call registra_libro_e_copia(?,?,?,?,?)}");
            cs.setString(1,isbn);
            cs.setString(2,titolo);
            cs.setInt(3,codice_scaffale);
            cs.setInt(4,codice_ripiano);
            cs.setInt(5,categoria);
            cs.executeQuery();
        }catch(SQLException e)
        {
            throw new RuntimeException(e);
        }



    }
}
