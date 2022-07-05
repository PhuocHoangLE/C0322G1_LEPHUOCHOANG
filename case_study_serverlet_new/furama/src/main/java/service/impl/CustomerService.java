package service.impl;

import model.Customer.Customer;
import responsitory.ICustomerRepository;
import responsitory.impl.CustomerRespository;
import service.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    ICustomerRepository iCustomerRepository = new CustomerRespository();

    @Override
    public List<Customer> selectAllCustomer() {
        return iCustomerRepository.selectAllCustomer();
    }
}
