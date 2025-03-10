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
        int identificativo = (int) params[0];
        String password = (String) params[1];
        int ruolo;
        try {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call BNCR.login_iniziale(?,?,?)}");
            cs.setInt(1, identificativo);
            cs.setString(2, password);
            cs.registerOutParameter(3, Types.INTEGER);
            cs.executeQuery();
            ruolo = cs.getInt(3);
        } catch(SQLException e) {
            System.err.println("Errore SQL dettagliato:");
            System.err.println("SQLState: " + e.getSQLState());
            System.err.println("Codice errore: " + e.getErrorCode());
            System.err.println("Messaggio: " + e.getMessage());
            throw new DAOException("Login error: " + e.getMessage());
        }
        return new Credentials(identificativo,password, Ruolo.fromint(ruolo));
    }
}
