package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;

public class RiconsegnaDAO
{
    public void Execute(Object... params) throws DAOException
    {
        String nome = (String) params[0];
        String cognome = (String) params[1];
        String data = (String) params[2];

    }
}
