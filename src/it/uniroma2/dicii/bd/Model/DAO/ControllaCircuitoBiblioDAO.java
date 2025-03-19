package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ControllaCircuitoBiblioDAO
{
    public int Execute(Object... params) throws DAOException
    {
        int numero_copia = 0;
        String titolo = (String)params[0];
        try
        {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call controllo_circuito(?)}");
            cs.setString(1,titolo);
            ResultSet rs =  cs.executeQuery();

            System.out.println("\nLibro trovato altrove.\n");

            while(rs.next())
            {
                numero_copia+=rs.getInt(3);
                System.out.println("ISBN: "+rs.getString(1)+"\nTitolo: "+rs.getString(2)+"\nDisponibilità: "+rs.getInt(3)+"\nCittà: "+rs.getString(4)+"\nNome biblioteca: "+rs.getString(5)+"\n");
            }

            System.out.println("Copie totali del libro = " + numero_copia);

        }catch(SQLException e)
        {
            if(e.getSQLState().equals("45078"))
            {

                System.out.println("Non esiste in nessuna biblioteca convenzionata la copia");
            }
        }

        return numero_copia;



    }
}
