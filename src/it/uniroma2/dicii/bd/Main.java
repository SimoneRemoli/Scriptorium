package it.uniroma2.dicii.bd;

import it.uniroma2.dicii.bd.Controller.ApplicationControllerDiramazioni;
import it.uniroma2.dicii.bd.Exception.DAOException;

public class Main {

    public static void main(String[] args) throws DAOException {
        ApplicationControllerDiramazioni applicationController = new ApplicationControllerDiramazioni();
        applicationController.start();
    }
}
