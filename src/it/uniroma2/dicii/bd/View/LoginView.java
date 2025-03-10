package it.uniroma2.dicii.bd.View;

import it.uniroma2.dicii.bd.Model.Domain.Credentials;

import java.util.Scanner;

public class LoginView
{
    public static Credentials authenticate()
    {
        Scanner tastiera = new Scanner(System.in);
        System.out.println("Inserisci identificativo: ");
        int identificativo = tastiera.nextInt();
        System.out.println("Inserisci password: ");
        String password = tastiera.next();
        return new Credentials(identificativo, password, null);


    }

}
