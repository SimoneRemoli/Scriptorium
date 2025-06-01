package it.uniroma2.dicii.bd.View;

import java.io.IOException;
import java.util.Scanner;

public class TipologiaContattoView
{
    static int scelta;
    public static int menu_choice() throws IOException {
        Scanner tastiera = new Scanner(System.in);
        boolean controllo = false;
        do{
            System.out.println("\n\t Scegli il contatto preferito. ");
        System.out.println("\t 1. Email. ");
        System.out.println("\t 2. Numero di telefono. ");
        scelta = tastiera.nextInt();
        if (scelta > 2) {
            System.err.println("Numeri ammessi: 1,2. " + scelta + " non è un numero valido. Riprova!");
            controllo = true;
        }
        else
            controllo = false;
    }while(controllo == true);
        return scelta;
    }
}
