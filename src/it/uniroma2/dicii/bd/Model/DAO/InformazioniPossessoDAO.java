package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class InformazioniPossessoDAO
{
    public void Execute(Object... params) throws DAOException
    {

        try{

            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call report_possesso()}");

            boolean status = cs.execute();
            int indice = 0;

            while(status)
            {
                indice++;
                ResultSet rs = cs.getResultSet();
                if(rs!=null)
                {
                    if(indice==1)
                    {
                        System.out.println("\n\n\t Gestione prestiti in corso locali. \n");
                        while(rs.next())
                        {
                            System.out.println("----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
                            System.out.println("Numero copia:"+rs.getInt(1)+"\t Nome:"+rs.getString(2)+"\t Cognome:"+rs.getString(3)+"\t Titolo:"+rs.getString(4)+"\t Data di nascita:"+rs.getDate(5)+"\t Isbn:"+rs.getString(6)+
                                    "\t Numero di telefono:"+rs.getString(7)+"\t Tipologia contatto preferita:"+rs.getString(8));
                            System.out.println("----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");

                        }
                    }
                    if(indice==2)
                    {
                        System.out.println("\n\n\t Gestione prestiti in corso di altre biblioteche. \n");
                        while(rs.next())
                        {
                            System.out.println("---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
                            System.out.println("Nome:"+rs.getString(1)+"\t Cognome: "+rs.getString(2)+"\t Titolo:"+rs.getString(3)+"\t Data di nascita: "+rs.getString(4)+"\t Isbn:"+rs.getString(5)+"\t Numero di telefono:"+rs.getString(6)+
                                    "\t Tipologia contatto preferita:"+rs.getString(7)+"\t Copia reperita da:"+rs.getString(8)+"\t Presso:"+rs.getString(9));
                            System.out.println("---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");

                        }
                    }
                }
                System.out.println("\n");
                status = cs.getMoreResults();

            }



        }catch(SQLException e)
        {
            throw new RuntimeException(e.getMessage());
        }



    }
}
