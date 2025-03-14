package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class ControllaDisponibilitaDAO
{
    public void Execute(Object... params) throws DAOException
    {
        Scanner tastiera = new Scanner(System.in);
        String disponibilita = (String) params[0];
        String nome_libro = (String) params[1];
        int numero_disponibilità = 0;
        try {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call disponibilita(?,?)}");
            cs.setString(1,disponibilita);
            cs.setString(2,nome_libro);
            ResultSet rs = cs.executeQuery();
            while(rs.next())  numero_disponibilità = rs.getInt(1);
            System.out.println("\t Il libro è disponibile, copie disponibili = "+numero_disponibilità+".");
            System.out.println("\t Inserisci il tuo nome: ");
            String nome = tastiera.nextLine();
            System.out.println("\t Inserisci il tuo cognome: ");
            String cognome = tastiera.nextLine();
            System.out.println("\t Inserisci la tua data di nascita (YYYY-MM-DD): ");
            String data = tastiera.nextLine();
            System.out.println("\n\t Scegli il contatto preferito. ");
            System.out.println("\t 1. Email. ");
            System.out.println("\t 2. Numero di telefono. ");
            int scelta = tastiera.nextInt();

















        }catch(SQLException e)
        {
            System.err.println(e.getMessage() + e.getSQLState());
            if(e.getSQLState().equals("45004")) {
                System.out.println("Copia non disponibile attualmente.");
                throw new RuntimeException(e);
            }
        }


    }
}
