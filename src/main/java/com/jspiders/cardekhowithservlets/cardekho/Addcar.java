package com.jspiders.cardekhowithservlets.cardekho;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.cardekhowithservlets.jdbc.carJDBC;

@WebServlet("/add_car")
public class Addcar extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String brand = req.getParameter("brand");
        double price = Double.parseDouble(req.getParameter("price"));
        int res;
		try {
			res = carJDBC.addCar(id, name, brand, price);
			if (res == 1) {
				req.setAttribute("message", "Car added...!");
			}else {
				req.setAttribute("message", "Car not added...!");
			}
		} catch (SQLException e) {
			req.setAttribute("message", "Failed to add car: Duplicate ID found.");
		}
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("add_car.jsp");
		requestDispatcher.forward(req, resp);
    }
}