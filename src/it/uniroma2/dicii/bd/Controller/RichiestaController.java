package it.uniroma2.dicii.bd.Controller;

import it.uniroma2.dicii.bd.Exception.DAOException;
import it.uniroma2.dicii.bd.Model.DAO.ConnectionFactory;
import it.uniroma2.dicii.bd.Model.DAO.ControllaDisponibilitaDAO;
import it.uniroma2.dicii.bd.Model.Domain.Ruolo;
import it.uniroma2.dicii.bd.View.RichiediLibroView;

import java.io.IOException;
import java.sql.SQLException;

public class RichiestaController
{
    public void start()
    {
        String libro_richiesto="";
        try{
            libro_richiesto = RichiediLibroView.richiedi_nome_libro();

        }catch(IOException e)
        {
            throw new RuntimeException(e);
        }

        try{
            ConnectionFactory.Cambio_Di_Ruolo(Ruolo.BIBLIOTECARIO);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        try {
            new ControllaDisponibilitaDAO().Execute("Disponibile", libro_richiesto);
        }catch(DAOException e)
        {
            throw new RuntimeException(e);
        }

    }
}
