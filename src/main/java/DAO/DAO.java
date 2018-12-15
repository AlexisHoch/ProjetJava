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
        public Customer Customer(String email) throws SQLException {
            Customer c = null;
            String sql = "SELECT * FROM Customer WHERE email = ?";
            try (Connection myConnection = myDataSource.getConnection();
                PreparedStatement statement = myConnection.prepareStatement(sql)) {
                statement.setString(1, email); // On fixe le 1° paramètre de la requête
            try (ResultSet rs = statement.executeQuery()) {
                if (rs.next()) {
                    int id = rs.getInt("CUSTOMER_ID");
                    String dc = rs.getString("DISCOUNT_CODE");
                    int zip = rs.getInt("ZIP");
                    String name = rs.getString("NAME");
                    String adress = rs.getString("ADDRESSLINE1");
                    String adress2 = rs.getString("ADDRESSLINE2");
                    String city = rs.getString("CITY");
                    String state = rs.getString("STATE");
                    String phone = rs.getString("PHONE");
                    String fax = rs.getString("FAX");
                    int credit = rs.getInt("CREDIT_LIMIT");
                    c = new Customer(id, dc, zip, name, adress, adress2, city, state, phone, fax, email, credit);
                }
            }
        }
        return c;
    }
            
                    
}
