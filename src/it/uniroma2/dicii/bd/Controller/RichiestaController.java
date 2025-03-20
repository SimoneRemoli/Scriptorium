package it.uniroma2.dicii.bd.Controller;

import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.Model.DAO.*;
import it.uniroma2.dicii.bd.Model.Domain.InformazionIAltrove;
import it.uniroma2.dicii.bd.Model.Domain.Ruolo;
import it.uniroma2.dicii.bd.Model.Domain.Utente;
import it.uniroma2.dicii.bd.View.*;

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
    int scelta = 0,i=0,choice=0;
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
                if (dati_string != null) {
                    email = dati_string.getKey();   // Prende l'email (se scelta=1)
                    phone = dati_string.getValue(); // Prende il telefono (se scelta=2)
                }
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
            try {
                i = new MostraAltroveView().show_altrove(getInfo);
            }catch(IOException e)
            {
                throw new RuntimeException(e);
            }
            if(i==0) {
                System.out.println("Registrazione fallita.");
                System.out.println("La registrazione avviene solo nel momento in cui la copia è disponibile.");
            }
            else
            {
                if(i==1) System.out.println("Il libro è disponibile in una sola biblioteca");
                if(i>1)
                {
                    try {
                       choice =  new SceltaAltrove().scegli(i, getInfo);
                    }catch (IOException e)
                    {
                        throw new RuntimeException(e);
                    }
                }

                try {
                    user = new UtenteView().show_menu();
                }catch (IOException e)
                {
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
                    if (dati_string != null) {
                        email = dati_string.getKey();   // Prende l'email (se scelta=1)
                        phone = dati_string.getValue(); // Prende il telefono (se scelta=2)
                    }
                }catch (IOException e)
                {
                    throw  new RuntimeException(e);
                }
                do {
                    System.out.println("\t Per quanto vuoi tenerlo in consultazione: 1. Un mese, 2. Due mesi, 3. Tre mesi. ");
                    fine_prestito = tastiera.nextInt();
                }while(fine_prestito!=1 && fine_prestito!=2 && fine_prestito!=3);

                try {
                    new RiceviLibroDAO().Execute(choice, getInfo, i, user.getNome(), user.getCognome(), user.getData_di_nascita(), scelta, email, phone, fine_prestito);
                }catch (DAOException e)
                {
                    throw new RuntimeException(e);
                }
            }
        }

    }
}
