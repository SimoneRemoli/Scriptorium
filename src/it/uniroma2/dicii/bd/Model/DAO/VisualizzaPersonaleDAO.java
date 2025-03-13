package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.Model.Domain.Ruolo;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class VisualizzaPersonaleDAO
{
    private String get_privilegio(Ruolo r)
    {
        String accesso = "";
        if(r.toString().equals("BIBLIOTECARIO"))
            accesso = "Bibliotecario";
        if(r.toString().equals("ADMIN"))
            accesso = "Amministratore";
        System.out.println("Privilegio = "+accesso);
        return accesso;
    }
    public void Execute(Object... params) throws DAOException
    {
        Ruolo ruolo = (Ruolo) params[0];
        String accesso = get_privilegio(ruolo);
        try {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call report_personale(?)}");
            cs.setString(1,accesso);
            ResultSet rs = cs.executeQuery();

            while(rs.next())
            {
                System.out.println("Nome: "+rs.getString(1)+" Cognome: "+rs.getString(2)+" Codice: "+rs.getInt(3));
            }

        } catch (SQLException e) {
            System.err.println(e.getErrorCode());
            System.err.println(e.getMessage());
            System.err.println(e.getSQLState());
            throw new RuntimeException(e);
        }

    }
}
