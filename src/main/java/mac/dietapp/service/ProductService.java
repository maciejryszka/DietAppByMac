package mac.dietapp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mac.dietapp.entity.Product;
import mac.dietapp.repository.ProductRepository;

@Service
public class ProductService {

	@Autowired
	private ProductRepository productRepository;

	@Autowired
	public ProductService(ProductRepository theProductRepository) {
		productRepository = theProductRepository;
	}
	
	public List<Product> findAll() {

		return productRepository.findAll();
	}
	
	public Product findById(int theId) {
		Optional<Product> result = productRepository.findById(theId);
		
		Product theProduct = null;
		if(result.isPresent()) {
			theProduct = result.get();
			}
		else {
			throw new RuntimeException("Didn't find product id: " + theId);
		}
		return theProduct;
	}
}
