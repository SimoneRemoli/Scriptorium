package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class AggiungiLibroDAO
{
    public void Execute(Object... params) throws DAOException
    {
        Scanner tastiera = new Scanner(System.in);
        String titolo="", isbn="",nome_scaffale="";
        int indice = 0;
        boolean check = false;
        int categoria = 0,codice_scaffale=0,copie_attualmente_disponibili_book=0;
        try {
            System.out.println("Inserisci il titolo del nuovo libro: ");
            titolo = tastiera.nextLine();
            System.out.println("Inserisci l'ISBN del nuovo libro: ");
            isbn = tastiera.nextLine();
            System.out.println("Assegna una categoria (tra le seguenti) al libro:");
        }catch(Exception e)
        {
            System.out.println(e.getMessage()+e.getCause());
        }

        try{

            new MostraCategorieDAO().Execute();

            Connection conn = ConnectionFactory.getConnection();
            System.out.println("Inserisci la categoria da attribuire al libro: ");
            categoria = tastiera.nextInt();
            CallableStatement cs = conn.prepareCall("{call aggiungi_libro(?,?,?)}");
            cs.setString(1,titolo);
            cs.setString(2,isbn);
            cs.setInt(3,categoria);
            check = cs.execute();

            while(check)
            {
                ResultSet rs =  cs.getResultSet();
                indice++;
                if(rs!=null) {

                    if (indice == 1)
                    {
                        while(rs.next())
                        {
                            nome_scaffale = rs.getString(1);
                            codice_scaffale = rs.getInt(2);
                        }
                    }
                    if (indice == 2)
                    {
                        while(rs.next())
                        {
                            copie_attualmente_disponibili_book = rs.getInt(1);
                        }
                    }
                }
                check = cs.getMoreResults();
            }

        }catch(SQLException e)
        {
            if(e.getMessage().equals("45012"))
            {
                System.out.println("Categoria inesistente.");
            }
            if(e.getMessage().equals("45013"))
            {
                System.out.println("Libro già esistente.");
            }
            throw new RuntimeException(e);
        }
        System.out.println("------------------------------------------------------------------------");
        System.out.println("Il nuovo libro con titolo ' "+titolo+" ' e ISBN = "+isbn+", verrà aggiunto allo " +
                "scaffale numero '"+codice_scaffale+"' denominato '"+ nome_scaffale+ "' che gestisce la categoria" +
                " con codice "+ categoria+";");
        System.out.println("Attualmente ci sono "+copie_attualmente_disponibili_book+" copie disponibili nel magazzino del libro appena aggiunto.");
        System.out.println("------------------------------------------------------------------------");
        new RegistraLibroECopiaDAO().Execute(isbn,titolo, codice_scaffale, categoria);






//la funzione deve mostrare anche tutte le categorie con la relativa descrizione.

    }
}
