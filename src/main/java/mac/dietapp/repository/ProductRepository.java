package mac.dietapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import mac.dietapp.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {

}
