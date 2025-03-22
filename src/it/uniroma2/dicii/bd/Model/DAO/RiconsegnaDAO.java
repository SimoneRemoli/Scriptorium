package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.Model.Domain.Libro;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RiconsegnaDAO
{
    public Libro Execute(Object... params) throws DAOException
    {
        String nome = (String) params[0];
        String cognome = (String) params[1];
        String data = (String) params[2];
        String titolo="",isbn="",nome_biblio="",citta="";
        int numcopy=0,colonne=0;

        try
        {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call controlla_utente(?,?,?)}");
            cs.setString(1,nome);
            cs.setString(2,cognome);
            cs.setString(3,data);

            //ResultSet rs = cs.executeQuery();
            boolean controllo = cs.execute();
            System.out.println("Ok, l'utente è stato trovato. ");


            if(controllo)
            {

                    ResultSet rs = cs.getResultSet();

                    colonne = rs.getMetaData().getColumnCount();

                    if(colonne==5)
                    {
                        System.out.println("L'utente ha un prestito locale");
                        while(rs.next())
                        {
                            nome = rs.getString(1);
                            cognome = rs.getString(2);
                            titolo = rs.getString(3);
                            isbn = rs.getString(4);
                            numcopy = rs.getInt(5);
                        }
                    }
                    if(colonne==6)
                    {
                        System.out.println("L'utente ha un prestito presso altra biblioteca");
                        while(rs.next())
                        {
                            nome = rs.getString(1);
                            cognome = rs.getString(2);
                            titolo = rs.getString(3);
                            isbn = rs.getString(4);
                            nome_biblio = rs.getString(5);
                            citta = rs.getString(6);
                        }
                    }


            }
            else {
                System.out.println("L'utente non ha prestiti registrati.");
            }

            if(colonne==5) {
                System.out.println("L'utente " + nome + " " + cognome + " possiede attualmente la copia numero " + numcopy
                        + " con ISBN:" + isbn + " che ha il seguente titolo '" + titolo + "'.");
            }
            if(colonne==6)
            {
                System.out.println("L'utente " + nome + " " + cognome + " possiede il libro con ISBN:" + isbn + " che ha il seguente titolo '" + titolo + "' preso in prestito dalla " + nome_biblio +  " presso la città di " + citta + ".");
            }

        } catch (SQLException e) {

            if(e.getSQLState().equals("45024"))
            {
                System.out.println("Utente non esistente");
            }
            throw new RuntimeException(e);
        }
        return new Libro(isbn,colonne,numcopy,nome_biblio,citta);

    }
}
