package it.uniroma2.dicii.bd.Controller;

import it.uniroma2.dicii.bd.Model.Domain.Utente;
import it.uniroma2.dicii.bd.View.RiconsegnaView;

import java.io.IOException;
import java.util.Scanner;

public class RiconsegnaController
{
    Scanner tastiera = new Scanner(System.in);
    Utente utente_registrato;
    public void start()
    {
        try
        {
            utente_registrato = RiconsegnaView.show_menu();

        }catch (IOException e)
        {
            System.out.println(e.getMessage());
            throw new RuntimeException(e);
        }




    }
}
