package mac.dietapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import mac.dietapp.entity.Product;
import mac.dietapp.service.ProductService;

@Controller
@RequestMapping("/food")
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@RequestMapping("/menu")
	public String showMenu() {
		
		return "index";
	}
	
	@RequestMapping("/menu/macroConverter")
	public String macroConverter(Model theModel) {
		
		List<Product> theProducts = productService.findAll();
		
		theModel.addAttribute("products", theProducts);
		
		return "food-macro";
	}
	
	@RequestMapping("/menu/macroConverter/result")
	public String macroConverterResult(@RequestParam("typeOfFood") int theId, @RequestParam("massOfFood") float massOfFood, Model productModel, Model massOfFoodModel) {
		
		Product theProduct = productService.findById(theId);
		
		productModel.addAttribute("product", theProduct);
		
		massOfFoodModel.addAttribute("foodmass", massOfFood);

		return "food-macro-result";
	}
	
	@RequestMapping("/menu/macroConverter/any")
	public String macroConverterAny() {
		return "food-macro-any";
	}
	
	@RequestMapping("/menu/bmiCalculator")
	public String bmiCalculator() {
		return "bmi";
	}
	
	@RequestMapping("/menu/bodyFatCalculator")
	public String bodyFatCalculator() {
		return "bf";
	}
}
