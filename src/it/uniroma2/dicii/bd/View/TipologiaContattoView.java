package it.uniroma2.dicii.bd.View;

import java.io.IOException;
import java.util.Scanner;

public class TipologiaContattoView
{
    static int scelta;
    public static int menu_choice() throws IOException {
        Scanner tastiera = new Scanner(System.in);
        System.out.println("\n\t Scegli il contatto preferito. ");
        System.out.println("\t 1. Email. ");
        System.out.println("\t 2. Numero di telefono. ");
        scelta = tastiera.nextInt();
        return scelta;
    }
}
