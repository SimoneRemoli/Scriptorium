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

            ResultSet rs =  cs.executeQuery();

            while(rs.next())
            {
                System.out.println("-----------------------------------------------------------------------------------------------------------");
                System.out.println(rs.getInt(1)+"\t"+rs.getString(2)+"\t"+rs.getString(3)+"\t"+rs.getString(4)+"\t"+rs.getDate(5)+"\t"+rs.getString(6)+
                        "\t"+rs.getString(7)+"\t"+rs.getString(8));
                System.out.println("-----------------------------------------------------------------------------------------------------------");

            }

        }catch(SQLException e)
        {
            throw new RuntimeException(e.getMessage());
        }



    }
}
