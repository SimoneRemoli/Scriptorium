package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Model.Domain.Credentials;
import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.Model.Domain.Ruolo;

import java.sql.*;
import java.sql.Connection;
import java.sql.CallableStatement;


public class LoginProcedureDAO implements GenericProcedureDAO<Credentials> {

    @Override
    public Credentials execute(Object... params) throws DAOException {
        int id = (int) params[0];
        String password = (String) params[1],nome="",cognome="";
        int role=0;
        try {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call BNCR.login_iniziale(?,?)}");
            cs.setInt(1, id);
            cs.setString(2, password);
           // cs.registerOutParameter(3, Types.NUMERIC); non ho usato parametri di output nel progetto (scelta consapevole)
            boolean hasMoreResults = cs.execute();
            int rescount = 0;

            while(hasMoreResults)
            {
                ResultSet rs =  cs.getResultSet();
                rescount++;
                if(rs!=null)
                {
                    if(rescount==1)
                    {
                        while(rs.next())
                        {
                            nome = rs.getString(1);
                            cognome = rs.getString(2);
                        }
                    }
                    if(rescount==2)
                    {
                        while(rs.next())
                        {
                            role = rs.getInt("Ruolo");
                        }
                    }
                }
                hasMoreResults = cs.getMoreResults();
            }

        } catch(SQLException e) {
            System.err.println("Errore SQL dettagliato:");
            System.err.println("SQLState: " + e.getSQLState());
            System.err.println("Codice errore: " + e.getErrorCode());
            System.err.println("Messaggio: " + e.getMessage());
            throw new DAOException("Login error: " + e.getMessage());
        }
        return new Credentials(id,nome,cognome, password, Ruolo.fromint(role));
    }
}


