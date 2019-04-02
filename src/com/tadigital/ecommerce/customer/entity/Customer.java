package com.tadigital.ecommerce.customer.entity;

import java.util.Calendar;

//ENTITY/BEAN/POJO/MODEL CLASS
public class Customer {
	//PROPERTIES
	private int id;
	private String firstName;
	private String lastName;
	//private Calendar dateOfJoining;
	private String email;
	private String password;
	
	public Customer() {
	}
	public Customer(int id, String firstName,String lastName, String email, String password) {
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;	
		//this.dateOfJoining = dateOfJoining;
		this.email = email;
		this.password = password;
	}
	
	//GETTER OR ACCESSOR METHODS
	public int getId() {
		return id;
	}
	public String getFirstName() {
		return firstName;
	}
	public String getLastName() {
		return lastName;
	}
	/*public Calendar getDateOfJoining() {
		return dateOfJoining;
	}*/
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}
	
	//SETTER OR MUTATOR METHODS
	public  void setId(int id) {
		this.id = id;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	/*public void setDateOfJoining(Calendar dateOfJoining) {
		this.dateOfJoining = dateOfJoining;
	}*/
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "Employee [id=" + id + ", firstName=" + firstName + ", lastName=" + ", email=" + email + 
				", password=" + password + "]";
	}
}