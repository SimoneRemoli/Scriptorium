package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.Model.Domain.Ruolo;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

public class EliminaAdminDAO
{
    public void Execute(Object... params) throws DAOException
    {

        String nome = (String) params[0];
        String cognome = (String) params[1];
        Ruolo ruolo = (Ruolo) params[2];
        String accesso = "";
        if(ruolo.toString().equals("ADMIN"))
            accesso = "Amministratore";

        try{

            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call elimina_admin(?,?,?)}");
            cs.setString(1,nome);
            cs.setString(2,cognome);
            cs.setString(3,accesso);

            cs.executeQuery();


        }catch (SQLException e)
        {
            if(e.getSQLState().equals("45002"))
            {
                System.err.println("Non esiste nessun admin con nome " + nome + " e cognome " + cognome);
            }
            throw new DAOException("Errore : " + e.getSQLState() + " " +  e.getMessage());
        }




    }

}
