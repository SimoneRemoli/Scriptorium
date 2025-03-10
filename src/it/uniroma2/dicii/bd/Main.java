package it.uniroma2.dicii.bd;

import it.uniroma2.dicii.bd.Controller.ApplicationController;
import it.uniroma2.dicii.bd.Exception.DAOException;

public class Main {

    public static void main(String[] args) throws DAOException {
        ApplicationController applicationController = new ApplicationController();
        applicationController.start();
    }
}
