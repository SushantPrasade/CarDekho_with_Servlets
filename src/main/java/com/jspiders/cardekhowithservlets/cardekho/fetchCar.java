package com.jspiders.cardekhowithservlets.cardekho;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.cardekhowithservlets.jdbc.carJDBC;
import com.jspiders.cardekhowithservlets.objects.carObject;

@WebServlet("/fetch_car")
public class fetchCar extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<carObject> cars = carJDBC.fetchCar();
        req.setAttribute("cars", cars);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("fetch_car.jsp");
        requestDispatcher.forward(req, resp);
    }
}
