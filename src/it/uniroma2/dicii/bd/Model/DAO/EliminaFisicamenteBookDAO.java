package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

public class EliminaFisicamenteBookDAO
{
    public void Execute(Object... params) throws DAOException
    {
        String nome_libro = (String)params[0];
        try
        {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call elimina_fisicamente_libro(?)}");
            cs.setString(1,nome_libro);
            cs.executeQuery();

        }catch(SQLException e)
        {
            System.out.println("Errore SQLSTATE: " + e.getSQLState());
            System.out.println("Messaggio: " + e.getMessage());

            if (e.getSQLState().equals("45988")) {
                System.out.println("Errore: libro non eliminabile per vincoli del trigger");
                throw new RuntimeException(e);
            } else if (e.getSQLState().equals("45888")) {
                System.out.println("Rollback: Il libro non può essere eliminato attualmente [*]");
                System.err.println("Una copia di questo libro è in prestito! !");
            } else {
                throw new DAOException("Errore generico", e);
            }
        }
    }

}

/*Il trigger ha bloccato l'eliminazione questo ha generato una SQLEXCEPTION
che è stata catturata dal mio EXIT HANDLER nella procedura
che ha rilanciato un nuovo SIGNAL con SQLSTATE '45888'
*/
