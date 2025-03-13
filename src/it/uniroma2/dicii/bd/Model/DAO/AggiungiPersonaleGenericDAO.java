package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.Model.Domain.Ruolo;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

public class AggiungiPersonaleGenericDAO
{
    private String get_privilegioo(Ruolo r)
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
        String nome = (String) params[0];
        String cognome = (String) params[1];
        String password = (String) params[2];
        Ruolo privilegio = (Ruolo) params[3];

        String accesso = get_privilegioo(privilegio);

        try
        {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call aggiungi_personale(?,?,?,?)}");
            cs.setString(1,nome);
            cs.setString(2,cognome);
            cs.setString(3,password);
            cs.setString(4,accesso);

            cs.executeQuery();

        }catch(SQLException e)
        {
            if(e.getSQLState().equals("45000"))
            {
                System.out.println("Trigger scattato: non puoi aggiungere un personale già esistente.");
            }
            else {
                if (e.getSQLState().equals("45001")) {
                    System.out.println("Non esiste nessuna persona nel DB.");
                }
                System.err.println(e.getMessage());
                throw new RuntimeException("Errore");
            }
        }


    }
}
