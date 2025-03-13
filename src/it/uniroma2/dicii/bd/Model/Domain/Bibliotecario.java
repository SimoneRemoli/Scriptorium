package it.uniroma2.dicii.bd.Model.Domain;

import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.Model.DAO.*;

import java.util.Scanner;

public class Bibliotecario extends Personale
{


    @Override
    public void aggiungi_personale()
    {
        String nome="", cognome="",password="";
        Scanner tastiera = new Scanner(System.in);
        System.out.print("\t Inserisci il nome del bibliotecario: ");
        nome = tastiera.next();
        System.out.print("\t Inserisci il cognome del bibliotecario: ");
        cognome = tastiera.next();
        System.out.print("\t Password da assegnare: ");
        password = tastiera.next();
        try
        {
            new AggiungiPersonaleGenericDAO().Execute(nome, cognome, password, Ruolo.BIBLIOTECARIO);

        }catch(DAOException e)
        {
            throw new RuntimeException(e);
        }



    }

    @Override
    public void elimina_personale()
    {
        String nome="", cognome="",password="";
        Scanner tastiera = new Scanner(System.in);
        System.out.print("\t Inserisci il nome del bibliotecario da eliminare: ");
        nome = tastiera.next();
        System.out.print("\t Inserisci il cognome del bibliotecario da eliminare: ");
        cognome = tastiera.next();
        try
        {
            new EliminaPersonaleGenericDAO().Execute(nome, cognome, Ruolo.BIBLIOTECARIO);

        }catch(DAOException e)
        {
            throw new RuntimeException(e);
        }

    }
}
