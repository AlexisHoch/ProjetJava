/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import DAO.DAO;
import static org.junit.Assert.*;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;


/**
 *
 * @author pedago
 */
public class DAOTest {
    private static DAO myDAO;
    private DataSource myDataSource; // La source de données à utiliser
	
    @Before
    public void setUp() throws SQLException {
		myDataSource = getDataSource();
		myDAO = new DAO(myDataSource);
	}

    @Test @Ignore
    public void numberOfCustommer() throws SQLException{
        assertEquals(myDAO.numberOfCustomers(), 17);
    }
    
    @Test @Ignore
    public void addCustomerTest() throws SQLException{
        int nmcustomers = myDAO.numberOfCustomers();
        myDAO.newAccount("L", 10096);
        assertEquals(myDAO.numberOfCustomers(), nmcustomers+1);
    }
    
    @Test @Ignore
    public void deleteCustomer() throws SQLException{
        int nmcustomers = myDAO.numberOfCustomers();
        myDAO.deleteCustomer(866);
        assertEquals(myDAO.numberOfCustomers(), nmcustomers-1);
    }
    



public static DataSource getDataSource() {
		org.apache.derby.jdbc.ClientDataSource ds = new org.apache.derby.jdbc.ClientDataSource();
		ds.setDatabaseName("sample");
		ds.setUser("app");
		ds.setPassword("app");
		// The host on which Network Server is running
		ds.setServerName("localhost");
		// port on which Network Server is listening
		ds.setPortNumber(1527);
		return ds;

}

}