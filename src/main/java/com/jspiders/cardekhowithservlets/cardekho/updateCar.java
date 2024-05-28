package com.jspiders.cardekhowithservlets.cardekho;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.cardekhowithservlets.jdbc.carJDBC;

@WebServlet("/update_car")
public class updateCar extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String brand = req.getParameter("brand");
		double price = Double.parseDouble(req.getParameter("price"));
		int id = Integer.parseInt(req.getParameter("id"));
		int res = carJDBC.updateCar(name,brand,price,id);
		if (res == 1) {
			req.setAttribute("message", "Car Details Updated...!");
		}else {
			req.setAttribute("message", "Opp's! Car not available ");
		}
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("update_car.jsp");
		requestDispatcher.forward(req, resp);
	}
}
