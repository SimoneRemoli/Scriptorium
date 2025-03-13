package it.uniroma2.dicii.bd.Controller;

import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.View.MostraAzioniGenerali;


public class ApplicationControllerDiramazioni
{

    public void start() throws DAOException {
       int choice = MostraAzioniGenerali.show_menu();
       switch(choice)
       {
           case 1 -> new ApplicationController().start();

       }




    }
}
