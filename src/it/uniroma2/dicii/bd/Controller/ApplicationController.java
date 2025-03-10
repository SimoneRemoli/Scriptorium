package it.uniroma2.dicii.bd.Controller;

import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.Model.Domain.Credentials;
import it.uniroma2.dicii.bd.View.LoginView;
import it.uniroma2.dicii.bd.View.MostraAzioniGenerali;


public class ApplicationController
{
    public void start() throws DAOException {
       int choice = MostraAzioniGenerali.show_menu();
       switch(choice)
       {
           case 1 -> LoginController.start();
       }




    }
}
