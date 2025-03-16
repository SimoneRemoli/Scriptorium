package it.uniroma2.dicii.bd.Controller;

import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.Model.DAO.ConnectionFactory;
import it.uniroma2.dicii.bd.Model.DAO.ControllaDisponibilitaDAO;
import it.uniroma2.dicii.bd.Model.DAO.ModificAccessoLibroDAO;
import it.uniroma2.dicii.bd.Model.Domain.Ruolo;
import it.uniroma2.dicii.bd.View.RichiediLibroView;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;
import java.util.Scanner;

public class RichiestaController
{
    public void start()
    {
        Scanner tastiera = new Scanner(System.in);
        String libro_richiesto="",isbn="",email="",phone="";
        int num_disponibile;
        try{
            libro_richiesto = RichiediLibroView.richiedi_nome_libro();

        }catch(IOException e)
        {
            throw new RuntimeException(e);
        }

        try{
            ConnectionFactory.Cambio_Di_Ruolo(Ruolo.BIBLIOTECARIO);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        try {
            Map.Entry<String, Integer> dati_copia = new ControllaDisponibilitaDAO().Execute("Disponibile", libro_richiesto);
            isbn = dati_copia.getKey();
            num_disponibile = dati_copia.getValue();
        }catch(DAOException e)
        {
            System.err.println(e.getMessage()+e.getCause());
            throw new RuntimeException(e);
        }
        if(num_disponibile>0)
        {
            System.out.println("\t Inserisci il tuo nome: ");
            String nome = tastiera.nextLine();
            System.out.println("\t Inserisci il tuo cognome: ");
            String cognome = tastiera.nextLine();
            System.out.println("\t Inserisci la tua data di nascita (YYYY-MM-DD): ");
            String data = tastiera.nextLine();
            System.out.println("\n\t Scegli il contatto preferito. ");
            System.out.println("\t 1. Email. ");
            System.out.println("\t 2. Numero di telefono. ");
            int scelta = tastiera.nextInt();
            switch(scelta)
            {
                case 1 -> {
                    email = tastiera.next();
                }
                case 2 -> {
                    phone = tastiera.next();
                }
            }
            try
            {
                new ModificAccessoLibroDAO().Execute(isbn, nome, cognome, data, scelta, email, phone);
            }catch(DAOException e)
            {
                throw new RuntimeException(e);
            }

        }
        else
        {
            System.out.println("Registrazione fallita.");
            System.out.println("La registrazione avviene solo nel momento in cui la copia è disponibile.");
        }

    }
}
