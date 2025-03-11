package it.uniroma2.dicii.bd.Controller;

import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.Model.Domain.Credentials;

public class ApplicationController
{
    Credentials cred;


    public void start() throws DAOException {
        LoginController loginController = new LoginController();
        loginController.start();
        cred = loginController.getCredentials();

         if(cred.getRuolo()==null)
        {
            throw new RuntimeException("Errore credenziali");
        }
         else
         {
             System.out.println(" ");
             System.out.println("Accesso riuscito. Benvenuto '"+cred.getNome()+" "+cred.getCognome()+"'.");
             System.out.println("Privilegio: " + cred.getRuolo());
             System.out.println(" ");

         }

        switch(cred.getRuolo())
        {
            case Admin -> new AdminController().start();
            case Bibliotecario ->  new BibliotecarioController().start();
        }
    }
}
