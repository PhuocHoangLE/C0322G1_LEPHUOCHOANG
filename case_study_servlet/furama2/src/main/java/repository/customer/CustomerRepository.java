package repository.customer;

import model.customer.Customer;

import java.util.List;

public interface CustomerRepository {
    List<Customer> listCustomer() ;
    void createCustomer(Customer customer) ;
    Customer findById(int id) ;
    void editCustomer(Customer customer) ;
    void deleteCustomer(int id) ;
    List<Customer> findCustomer(String nameFind) ;
}
