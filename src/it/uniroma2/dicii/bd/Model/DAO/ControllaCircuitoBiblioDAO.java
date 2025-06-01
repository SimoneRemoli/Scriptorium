package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.Model.Domain.InformazionIAltrove;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ControllaCircuitoBiblioDAO
{
    private List<InformazionIAltrove> informazioni = new ArrayList<>();
    public List<InformazionIAltrove> Execute(Object... params) throws DAOException
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
                informazioni.add(new InformazionIAltrove(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5)));
            }

            System.out.println("Copie totali del libro = " + numero_copia);

        }catch(SQLException e)
        {
            if(e.getSQLState().equals("45078"))
            {
                System.out.println("La copia non è presente in nessuna biblioteca convenzionata.\n");
                System.err.println(e.getMessage());
            }
        }


    return informazioni;

    }
}
