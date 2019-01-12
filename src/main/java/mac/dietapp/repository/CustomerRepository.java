package mac.dietapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import mac.dietapp.entity.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {

}
