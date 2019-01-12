package mac.dietapp.controller;

import java.util.List;

import org.hibernate.exception.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import mac.dietapp.entity.Customer;
import mac.dietapp.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	@RequestMapping("/list")
	public String listCustomers(Model theModel) {

		List<Customer> theCustomers = customerService.findAll();

		theModel.addAttribute("customers", theCustomers);

		return "list-customers";
	}

	@RequestMapping("/add")
	public String addCustomer(Model theModel) {

		Customer theCustomer = new Customer();

		theModel.addAttribute("customer", theCustomer);

		return "customer-form";
	}

	@RequestMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer theCustomer) {

		try {
			customerService.save(theCustomer);
		} catch (ConstraintViolationException e) {
			System.out.println("Not all fields have been filled out.");
		}

		return "redirect:/customer/list";
	}

	@RequestMapping("/update")
	public String updateCustomer(@RequestParam("id") int theId, Model theModel) {

		Customer theCustomer = customerService.findById(theId);

		theModel.addAttribute("customer", theCustomer);

		return "customer-form";
	}

	@RequestMapping("/delete")
	public String deleteCustomer(@RequestParam("id") int theId) {

		customerService.deleteById(theId);

		return "redirect:/customer/list";
	}
}