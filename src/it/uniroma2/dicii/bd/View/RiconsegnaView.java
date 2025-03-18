package it.uniroma2.dicii.bd.View;

import it.uniroma2.dicii.bd.Model.Domain.Utente;

import java.io.IOException;
import java.util.Scanner;

public class RiconsegnaView
{
    public static Utente show_menu() throws IOException
    {
        Scanner tastiera = new Scanner(System.in);
        System.out.println("Inserisci il tuo nome: ");
        String nome = tastiera.nextLine();
        System.out.println("Inserisci il cognome: ");
        String cognome = tastiera.nextLine();
        System.out.println("Inserisci la data di nascita: ");
        String data = tastiera.nextLine();
        return new Utente(nome,cognome,data);
    }
}
