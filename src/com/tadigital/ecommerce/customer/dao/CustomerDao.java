package com.tadigital.ecommerce.customer.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;

import com.tadigital.ecommerce.customer.entity.Customer;

public class CustomerDao extends Dao {
	public boolean selectCustomerByEmailAndPassword(Customer customer) {
		boolean status = false;
		
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM customer_information WHERE c_email = '" + customer.getEmail() + "' AND c_password = '" + customer.getPassword() + "'";
			
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				status = true;
				
				customer.setId(rs.getInt(1));
				customer.setFirstName(rs.getString(2));
				customer.setLastName(rs.getString(3));
				//Calendar doj = new GregorianCalendar();
				//doj.setTimeInMillis(rs.getDate(4).getTime());
				//employee.setDateOfJoining(doj);
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeResultSet(rs);
			closeConnection(con);
		}
		
		return status;
	}
	
	public boolean insertCustomer(Customer customer) {
		boolean status = false;
		
		/*Calendar cal = customer.getDateOfJoining();
		int dd = cal.get(Calendar.DATE);
		int mm = cal.get(Calendar.MONTH);
		mm++;
		int yyyy = cal.get(Calendar.YEAR);
		
		String empDoj = yyyy + "-" + mm + "-" + dd;*/
		
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		
		try {
			String sql = "INSERT INTO customer_information(c_fname,c_lname, c_email, c_password) " +
						 "VALUES('" + customer.getFirstName() + "','" + customer.getLastName() + "','"+ customer.getEmail() + "', '" + customer.getPassword() + "')";
			
			int rows = stmt.executeUpdate(sql);
			if(rows != 0) {
				status = true;
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}
		
		return status;
	}
	
	public ArrayList<Customer> selectAllCustomer() {
		ArrayList<Customer> customerList = new ArrayList<>(); 
		
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM customer_information";
			
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				Customer customer = new Customer();				
				customer.setId(rs.getInt(1));
				customer.setFirstName(rs.getString(2));
				customer.setLastName(rs.getString(3));
				//Calendar doj = new GregorianCalendar();
				//doj.setTimeInMillis(rs.getDate(4).getTime());
				//employee.setDateOfJoining(doj);
				customer.setEmail(rs.getString(4));
				customer.setPassword(rs.getString(5));
				
				customerList.add(customer);
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeResultSet(rs);
			closeConnection(con);
		}
		
		return customerList;
	}
}