package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Scanner;

public class AggiungiLibroDAO
{
    public void Execute(Object... params) throws DAOException
    {
        Scanner tastiera = new Scanner(System.in);
        String titolo="", isbn="";
        try {
            System.out.println("Inserisci il titolo del nuovo libro: ");
            titolo = tastiera.nextLine();
            System.out.println("Inserisci l'ISBN del nuovo libro: ");
            isbn = tastiera.nextLine();
        }catch(Exception e)
        {
            System.out.println(e.getMessage()+e.getCause());
        }

        try{

            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call Aggiungi_Libro(?,?)");
            cs.setString(1,titolo);
            cs.setString(2,isbn);
            cs.executeQuery();
        }catch(SQLException e)
        {
            throw new RuntimeException(e);
        }



    }
}
