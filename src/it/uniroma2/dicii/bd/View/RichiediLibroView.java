package it.uniroma2.dicii.bd.View;

import java.io.IOException;
import java.util.Scanner;

public class RichiediLibroView
{
    public static String richiedi_nome_libro() throws IOException
    {
        Scanner tastiera = new Scanner(System.in);
        System.out.println("Inserisci il nome del libro da richiedere: ");
        String nome_libro = tastiera.next();
        return nome_libro;
    }

}
