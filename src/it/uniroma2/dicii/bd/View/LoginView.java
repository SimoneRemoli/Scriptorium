package it.uniroma2.dicii.bd.View;

import it.uniroma2.dicii.bd.Model.Domain.Credentials;

import java.io.IOException;
import java.util.InputMismatchException;
import java.util.Scanner;

public class LoginView
{
    public static Credentials authenticate()
    {
        int identificativo = 0;
        String password = "";
        Scanner tastiera = new Scanner(System.in);

        try {
            System.out.println("Inserisci identificativo: ");
            identificativo = tastiera.nextInt();
        }catch (InputMismatchException e)
        {
            throw new RuntimeException("Errore - devi inserire un numero intero");
        }
        System.out.println("Inserisci password: ");
        password = tastiera.next();
        return new Credentials(identificativo, null,null, password, null);
    }
}
