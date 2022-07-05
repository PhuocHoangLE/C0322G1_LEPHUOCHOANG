package responsitory.impl;

import model.Customer.Customer;
import responsitory.ICustomerRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CustomerRespository implements ICustomerRepository {

    private static final String SELECT_ALL_CUSTOMER = "select * from customer;";

    private BaseFuramaRepository baseFuramaRepository = new BaseFuramaRepository() ;

    @Override
    public List<Customer> selectAllCustomer() {
        List<Customer> customers = new ArrayList<>() ;
        Connection connection = null ;

        try {
            connection = baseFuramaRepository.getConnection() ;
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER);
            ResultSet resultSet = preparedStatement.executeQuery() ;
            while (resultSet.next()) {
                Integer customerId = resultSet.getInt("id") ;
                Integer customerTypeId = resultSet.getInt("customer_type_id");
                String customerName = resultSet.getString("name") ;
                String customerBirthDay = resultSet.getString("date_of_birth") ;
                Integer customerGender = resultSet.getInt("gender") ;
                String customerIdCard = resultSet.getString("id_card");
                String customerPhone = resultSet.getString("phone_number");
                String customerEmail = resultSet.getString("email");
                String customerAddress = resultSet.getString("address");

                customers.add(new Customer()) ;


            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }
}
