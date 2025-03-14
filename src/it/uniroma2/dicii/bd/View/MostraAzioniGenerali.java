package it.uniroma2.dicii.bd.View;

import java.util.Scanner;

public class MostraAzioniGenerali
{
    public static int show_menu()
    {
        int scelta;
        Scanner tastiera = new Scanner(System.in);
        System.out.println("\n Benvenuto nella piattaforma Scriptorium.");
        System.out.println("\n 1. Login.");
        System.out.println("\n 2. Richiedi libro.");
        System.out.println("\n > > ");
        scelta = tastiera.nextInt();
        return scelta;
    }

}
