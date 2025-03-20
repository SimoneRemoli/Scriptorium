package it.uniroma2.dicii.bd.Controller;

import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.Model.DAO.ConnectionFactory;
import it.uniroma2.dicii.bd.Model.DAO.ControllaCircuitoBiblioDAO;
import it.uniroma2.dicii.bd.Model.DAO.ControllaDisponibilitaDAO;
import it.uniroma2.dicii.bd.Model.DAO.ModificAccessoLibroDAO;
import it.uniroma2.dicii.bd.Model.Domain.InformazionIAltrove;
import it.uniroma2.dicii.bd.Model.Domain.Ruolo;
import it.uniroma2.dicii.bd.Model.Domain.Utente;
import it.uniroma2.dicii.bd.View.ContattoView;
import it.uniroma2.dicii.bd.View.RichiediLibroView;
import it.uniroma2.dicii.bd.View.TipologiaContattoView;
import it.uniroma2.dicii.bd.View.UtenteView;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

public class RichiestaController
{
    List<InformazionIAltrove> getInfo = new ArrayList<>();
    Utente user;
    int scelta = 0;
    public void start() throws DAOException {
        int fine_prestito = 0;
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
            try {
                user = UtenteView.show_menu();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
            try {
               scelta = TipologiaContattoView.menu_choice();
            }catch (IOException e)
            {
                throw  new RuntimeException(e);
            }
            try {
                Map.Entry<String, String> dati_string = ContattoView.contact(scelta);
                email = dati_string.getKey();
                phone = dati_string.getKey();
            }catch (IOException e)
            {
                throw  new RuntimeException(e);
            }
            do {
                System.out.println("\t Per quanto vuoi tenerlo in consultazione: 1. Un mese, 2. Due mesi, 3. Tre mesi. ");
                fine_prestito = tastiera.nextInt();
            }while(fine_prestito!=1 && fine_prestito!=2 && fine_prestito!=3);



            try
            {
                new ModificAccessoLibroDAO().Execute(isbn, user.getNome(), user.getCognome(), user.getData_di_nascita(), scelta, email, phone, fine_prestito);
            }catch(DAOException e)
            {
                System.err.println(e.getMessage()+e.getCause());
                throw new RuntimeException(e);
            }

        }
        else
        {
            getInfo =  new ControllaCircuitoBiblioDAO().Execute(libro_richiesto);
            int i=0;
            for(InformazionIAltrove a:getInfo)
            {
                System.out.println(i++ +")"+"ISBN: "+a.getISBN()+", TITOLO: "+a.getTitolo()+", Disponibilità: "+a.getDisponibilita()+", Città: "+a.getCitta()+", Nome biblioteca: "+a.getNome_biblioteca());
            }

            if(i==0) {
                System.out.println("Registrazione fallita.");
                System.out.println("La registrazione avviene solo nel momento in cui la copia è disponibile.");
            }
        }

    }
}
