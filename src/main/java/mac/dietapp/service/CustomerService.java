package mac.dietapp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mac.dietapp.entity.Customer;
import mac.dietapp.repository.CustomerRepository;

@Service
public class CustomerService {
	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	public CustomerService(CustomerRepository theCustomerRepository) {
		customerRepository = theCustomerRepository;
	}

	public List<Customer> findAll() {

		return customerRepository.findAll();
	}

	public void save(Customer theCustomer) {
		customerRepository.save(theCustomer);
	}

	public Customer findById(int theId) {
		Optional<Customer> result = customerRepository.findById(theId);
		
		Customer theCustomer = null;
		if(result.isPresent()) {
			theCustomer = result.get();
			}
		else {
			throw new RuntimeException("Didn't find customer id: " + theId);
		}
		return theCustomer;
	}

	public void deleteById(int theId) {
		customerRepository.deleteById(theId);
	}

}
