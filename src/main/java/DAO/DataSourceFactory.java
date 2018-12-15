/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;

/**
 *
 * @author NoobsLord-pécé
 */
public class DataSourceFactory {
    
        static {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataSourceFactory.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static DataSource getDataSource() throws SQLException {
	org.apache.derby.jdbc.ClientDataSource ds = new org.apache.derby.jdbc.ClientDataSource();
	ds.setDatabaseName("sample");
	ds.setUser("app");
	ds.setPassword("app");
        ds.setServerName("localhost");
        ds.setPortNumber(1527);
        return ds;
    }
    
}
