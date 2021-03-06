package controller.customer;



import model.customer.Customer;
import model.customer.CustomerType;
import service.CustomerService;
import service.CustomerTypeService;
import service.impl.CustomerServiceImpl;
import service.impl.CustomerTypeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet",urlPatterns = "/customers")
public class CustomerServlet extends HttpServlet {
    static CustomerService customerService = new CustomerServiceImpl();
    static CustomerTypeService customerTypeService = new CustomerTypeServiceImpl() ;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action") ;
        if (action == null) {
            action = "" ;
        }
        switch (action){
            case "create" :
                createCustomer(request,response);
                break;
            case "edit" :
                editCustomer(request,response);
                break;
            case "delete" :
                deleteCustomer(request,response);
                break;
            default:
                listCustomer(request,response);
                break;
        }

    }



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action") ;
        if (action == null) {
            action = "" ;
        }
        switch (action){
            case "create" :
                showCreateForm(request,response);
                break;
            case "edit" :
                showEditForm(request,response);
                break;
            case "Search" :
                showFindform(request,response);
                break;
            default:
                listCustomer(request,response);
                break;
        }
    }



    private void listCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customers = customerService.listCustomer();
        request.setAttribute("customers" , customers);

        List<CustomerType> customerTypes = customerTypeService.listCustomerTypes();
        request.setAttribute("customerTypes" ,customerTypes);

        request.getRequestDispatcher("view/customer/list.jsp").forward(request,response);

    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CustomerType> customerTypes = customerTypeService.listCustomerTypes() ;
        request.setAttribute("customerTypes",customerTypes);


        request.getRequestDispatcher("view/customer/create.jsp").forward(request,response);

    }
    private void createCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customers = customerService.listCustomer();

        String name = request.getParameter("name") ;
        String dateOfBirth = request.getParameter("dateOfBirth");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String idCard = request.getParameter("idCard");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        int customerTypeId = Integer.parseInt(request.getParameter("customerTypeId"));

        int max = 0;

        for(Customer item : customers) {
            if (max < item.getId()){
                max = item.getId();
            }
        }
        int id = max + 1 ;

        Customer customer = new Customer(id,name,dateOfBirth,gender,idCard,phone,email,address,customerTypeId) ;
        customerService.createCustomer(customer);
        request.getRequestDispatcher("view/customer/create.jsp").forward(request,response);

    }
    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id")) ;
        Customer customer = customerService.findById(id) ;
        List<CustomerType> customerTypes = customerTypeService.listCustomerTypes();
        if (customer == null ) {
            request.getRequestDispatcher("error_404.jsp") ;
        } else {
            request.setAttribute("customer" , customer);
            request.setAttribute("customerTypes",customerTypes);
            request.getRequestDispatcher("view/customer/edit.jsp").forward(request,response);
        }
    }

    private void editCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id")) ;
        String name = request.getParameter("name") ;
        String dateOfBirth = request.getParameter("dateOfBirth") ;
        int gender = Integer.parseInt(request.getParameter("gender"));
        String idCard = request.getParameter("idCard");
        String phone = request.getParameter("phone") ;
        String email = request.getParameter("email");
        String address = request.getParameter("address") ;
        int customerTypeId = Integer.parseInt(request.getParameter("customerTypeId")) ;
        Customer customer = new Customer(id, name, dateOfBirth, gender, idCard, phone,email,address,customerTypeId) ;
        customerService.editCustomer(customer);
        request.getRequestDispatcher("view/customer/edit.jsp").forward(request,response);
    }


    private void showFindform(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nameFind = request.getParameter("nameFind") ;
        List<Customer> customers = customerService.findCustomers("nameFind") ;
        request.setAttribute("customers",customers);
        request.getRequestDispatcher("view/customer/list.jsp").forward(request,response);
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("idDelete"));
        customerService.deleteCustomer(id);
        List<Customer> customers = customerService.listCustomer();
        request.setAttribute("customers", customers);
        request.getRequestDispatcher("view/customer/list.jsp").forward(request, response);
    }
}

