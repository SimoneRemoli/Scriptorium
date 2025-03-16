package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Scanner;

public class AggiungiCopiaDAO
{
    public void Execute(Object... params) throws DAOException
    {
        Scanner tastiera = new Scanner(System.in);
        System.out.println("Inserisci il titolo della copia di un libro da aggiungere alla disponibilità:  ");
        String nome_libro = tastiera.nextLine();

        try
        {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call Aggiungi_Copia(?)}");
            cs.setString(1,nome_libro);
            cs.executeQuery();
        }catch(SQLException e)
        {
            if(e.getSQLState().equals("45010"))
            {
                System.out.println("Il libro non esiste, figuriamoci se posso aggiungere una copia");
            }
            throw new RuntimeException(e);
        }

    }
}
