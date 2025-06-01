package it.uniroma2.dicii.bd.Model.DAO;

import it.uniroma2.dicii.bd.Exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ReportCompletoDAO {
    public void Execute(Object... params) throws DAOException {
        try {
            int i = 1;
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call report_completo()}");
            ResultSet rs =  cs.executeQuery();
            System.out.println("\t--------------------------------------------------------------------");
            while(rs.next())
            {
                System.out.println("\t " + i++ +") " + "Titolo:"+rs.getString(1)+"\t ISBN:"+rs.getString(2)+
                        "\t Codice Scaffale:"+rs.getInt(3)+"\t Nome Scaffale:"+rs.getString(4)+"\t Ripiano:"+ rs.getInt(5)+"\n");
            }
            System.out.println("\t--------------------------------------------------------------------");

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
