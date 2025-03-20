package it.uniroma2.dicii.bd.View;

import java.io.IOException;
import java.util.AbstractMap;
import java.util.Map;
import java.util.Scanner;

public class ContattoView
{
    static String email;
    static String phone;
    public static Map.Entry<String, String> contact(int scelta) throws IOException
    {
        Scanner tastiera = new Scanner(System.in);
        switch(scelta)
        {
            case 1 -> {
                System.out.println("\t Inserisci email: ");
                email = tastiera.next();
            }
            case 2 -> {
                System.out.println("\t Inserisci telefono: ");
                phone = tastiera.next();
            }
        }
        return new AbstractMap.SimpleEntry(email, phone);
    }
}
