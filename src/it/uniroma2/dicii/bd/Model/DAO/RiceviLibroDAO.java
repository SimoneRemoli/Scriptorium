package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.Model.Domain.InformazionIAltrove;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class RiceviLibroDAO
{
    public void Execute(Object... params) throws DAOException
    {

        int choice = (int) params[0];
        List<InformazionIAltrove> info = (List<InformazionIAltrove>) params[1];
        int numero_biblioteche = (int) params[2];
        String nome_utente = (String) params[3];
        String cognome_utente = (String) params[4];
        String data_nascita = (String) params[5];
        int scelta_mail_phone = (int) params[6];
        String email = (String) params[7];
        String phone = (String) params[8];
        String fine_prestito = (String) params[9];

        String nome_biblio, ISBN, city, titolo;
        int disponibilita;

        if(numero_biblioteche==1)
        {
            ISBN = info.get(0).getISBN();
            titolo = info.get(0).getTitolo();
            disponibilita = info.get(0).getDisponibilita();
            city = info.get(0).getCitta();
            nome_biblio = info.get(0).getNome_biblioteca();
        }
        if(numero_biblioteche > 1)
        {
            ISBN = info.get(choice).getISBN();
            titolo = info.get(choice).getTitolo();
            disponibilita = info.get(choice).getDisponibilita();
            city = info.get(choice).getCitta();
            nome_biblio = info.get(choice).getNome_biblioteca();
        }

        try{
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("call aggiornamento_altrove()");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }

}
