package it.uniroma2.dicii.bd.View;

import java.io.IOException;
import java.util.Scanner;

public class BibliotecarioView
{
    public static int show_menu() throws IOException
    {
        int choice = 0;
        Scanner tastiera = new Scanner(System.in);
        System.out.println("\t In qualità di BIBLIOTECARIO hai il diritto ad effettuare le seguenti operazioni:");
        System.out.println("\t 1. Visualizza tutti i bibliotecari del circuito. ");
        System.out.println("\t 2. Report libri in prestito non restituiti. ");
        System.out.println("\t 3. Informazioni sugli utenti che possiedono la copia di un determinato libro. ");
        System.out.println("> > ");
        choice = tastiera.nextInt();
        return choice;
    }
}
