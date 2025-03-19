package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;
import java.util.AbstractMap;
import java.util.Map;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Scanner;

public class ControllaDisponibilitaDAO
{
    public Map.Entry<String, Integer> Execute(Object... params) throws DAOException
    {
        Scanner tastiera = new Scanner(System.in);
        String disponibilita = (String) params[0];
        String nome_libro = (String) params[1];
        String isbn="";
        int numero_disponibilità = 0;
        try {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call disponibilita(?,?)}");
            cs.setString(1,disponibilita);
            cs.setString(2,nome_libro);
            Boolean status = cs.execute();
            int indice = 0;
            while(status)
            {
                ResultSet rs = cs.getResultSet();
                indice++;
                if(rs!=null)
                {
                    if(indice == 1)
                    {
                        while(rs.next())  numero_disponibilità = rs.getInt(1);
                    }
                    if(indice == 2)
                    {
                        while(rs.next())  isbn = rs.getString(1);
                    }
                }
                    status = cs.getMoreResults();
            }
        }catch(SQLException e)
        {
            System.err.println(e.getMessage() + e.getSQLState());
            if(e.getSQLState().equals("45004")) {
                System.out.println("Copia non disponibile attualmente nel database interno della biblioteca.\n");
                numero_disponibilità = new ControllaCircuitoBiblioDAO().Execute(nome_libro);

            }
            //throw new RuntimeException(e);
        }
        if(numero_disponibilità>0)
        {System.out.println("\t Il libro è disponibile, copie disponibili = "+numero_disponibilità+"."); System.out.println("\t ISBN:"+isbn);}
        return new AbstractMap.SimpleEntry(isbn, numero_disponibilità);
    }
}
