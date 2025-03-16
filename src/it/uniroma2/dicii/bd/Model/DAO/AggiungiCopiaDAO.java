package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;

import java.util.Scanner;

public class AggiungiCopiaDAO
{
    public void Execute(Object... params) throws DAOException
    {
        Scanner tastiera = new Scanner(System.in);
        System.out.println("Inserisci il titolo della copia di un libro da aggiungere alla disponibilità:  ");
        String nome_libro = tastiera.nextLine();


    }
}
