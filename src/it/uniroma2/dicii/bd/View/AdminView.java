package it.uniroma2.dicii.bd.View;

import java.io.IOException;
import java.util.Scanner;

public class AdminView
{
    public static int show_menu() throws IOException
    {
        Scanner tastiera = new Scanner(System.in);
        System.out.println("\t In qualità di admin hai diritto ad effettuare le seguenti operazioni:");
        System.out.println("\t 1. Aggiungi un amministratore nel circuito.");
        System.out.println("\t 2. Elimina  un amministratore dal circuito.");
        System.out.println("\t 3. Aggiungi  un bibliotecario nel circuito.");
        System.out.println("\t 4. Elimina   un bibliotecario dal circuito.");
        System.out.println("\t 6. Visualizza i bibliotecari attualmente registrati nel circuito.");
        System.out.println("\t 7. Visualizza gli amministratori attualmente registrati nel circuito.");
        System.out.println("\t 8. Esci.");
        System.out.println("> > ");
        int scelta = tastiera.nextInt();
        return scelta;
    }
}
