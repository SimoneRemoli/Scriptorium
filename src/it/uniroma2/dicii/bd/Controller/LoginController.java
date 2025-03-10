package it.uniroma2.dicii.bd.Controller;

import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.Model.DAO.LoginProcedureDAO;
import it.uniroma2.dicii.bd.Model.Domain.Credentials;
import it.uniroma2.dicii.bd.View.LoginView;

public class LoginController
{
    public static void start() throws DAOException {
        Credentials cred;
        cred = LoginView.authenticate();

        cred = new LoginProcedureDAO().execute(cred.getIdentificativo(),cred.getPassword());










    }
}
