package controller;

import model.Customer.Customer;
import service.ICustomerService;
import service.impl.CustomerService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "CustomerServlet" , value = "/customer")
public class CustomerServlet extends HttpServlet {
    ICustomerService iCustomerService = new CustomerService() ;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null ) {
            action = "" ;
        }
        switch (action) {
            case "createCustomer":
                break;
            case "editCustomer":
                break;
            default:
                listCustomer(request, response);
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null ) {
            action = "" ;
        }
        switch (action) {
            case "createCustomer":
                break;
            case "editCustomer":
                break;
            default:
                listCustomer(request,response);
                break;
        }
    }

    private void listCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList = iCustomerService.selectAllCustomer() ;
        request.setAttribute("customerList" , customerList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/list.jsp") ;
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}