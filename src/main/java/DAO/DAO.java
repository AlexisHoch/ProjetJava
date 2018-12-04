/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;

/**
 *
 * @author pedago
 */
public class DAO {
    
    
    	private final DataSource myDataSource;

	/**
	 *
	 * @param dataSource la source de données à utiliser
	 */
	public DAO(DataSource dataSource) {
		this.myDataSource = dataSource;
	}
    
    
        
        
        
 
        public void newAccount(String disc, int zip) throws SQLException{
            
            String sql = "INSERT INTO Customer(CUSTOMER_ID, DISCOUNT_CODE, ZIP) VALUES ( (SELECT MAX(CUSTOMER_ID)+1 FROM CUSTOMER), ?, ?)";
                    //--------------------------------ID NAME EMAIL
            
            try(Connection myConnection = myDataSource.getConnection();
                    PreparedStatement customerStatement = myConnection.prepareStatement(sql)){
                    
                    customerStatement.setString(1, disc);
                    customerStatement.setInt(2, zip);
                    System.out.println(customerStatement.toString());
                    customerStatement.executeUpdate();
                    }
                
            }
        
        public int numberOfCustomers() throws SQLException {
		int result = 0;

		String sql = "SELECT COUNT(*) AS NUMBER FROM Customer";
		try (Connection connection = myDataSource.getConnection();
		     Statement stmt = connection.createStatement()) {
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				result = rs.getInt("NUMBER");
			}
		}
		return result;
	}
        
        	public void deleteCustomer(int customerId) {

		// Une requête SQL paramétrée
		String sql = "DELETE FROM CUSTOMER WHERE CUSTOMER_ID = ?";
		try (   Connection connection = myDataSource.getConnection();
			PreparedStatement stmt = connection.prepareStatement(sql)
                ) {
                        // Définir la valeur du paramètre
			stmt.setInt(1, customerId);
			
			stmt.executeUpdate();

		}  catch (SQLException ex) {
			Logger.getLogger("DAO").log(Level.SEVERE, null, ex);
			
		}
            }
            
                    
}
