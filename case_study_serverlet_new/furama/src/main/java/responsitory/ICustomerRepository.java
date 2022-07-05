package responsitory;

import model.Customer.Customer;

import java.sql.SQLException;
import java.util.List;

public interface ICustomerRepository {

     List<Customer> selectAllCustomer();
}
