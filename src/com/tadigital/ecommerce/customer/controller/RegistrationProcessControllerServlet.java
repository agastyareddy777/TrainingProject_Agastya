package com.tadigital.ecommerce.customer.controller;

import java.io.IOException;
import java.util.GregorianCalendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.ecommerce.customer.entity.Customer;
import com.tadigital.ecommerce.customer.service.CustomerService;

@WebServlet("/signin")
public class RegistrationProcessControllerServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String[]  Name = req.getParameter("f1").split(" ");
		//String lastName = req.getParameter("f2");
		//String dateOfJoining = req.getParameter("f3");
		String email = req.getParameter("f2");
		String password = req.getParameter("f3");
		
		Customer customer = new Customer();
		
		customer.setFirstName(Name[0]);
		customer.setLastName(Name[1]);
		
		//
		//int yyyy = Integer.parseInt(date[0]);
		//int mm = Integer.parseInt(date[1]);
		//mm--;
		//int dd = Integer.parseInt(date[2]);
		//employee.setDateOfJoining(new GregorianCalendar(yyyy, mm, dd));
		customer.setEmail(email);
		customer.setPassword(password);
		
		CustomerService customerService = new CustomerService();
		boolean status = customerService.registerCustomer(customer);
		
		if(status) {
			HttpSession p = req.getSession();
			p.setAttribute("status","true");
			RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");
			rd.forward(req, resp);
		} else {
			HttpSession p = req.getSession();
			p.setAttribute("status","false");
			RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");
			rd.forward(req, resp);
		}
	}
}