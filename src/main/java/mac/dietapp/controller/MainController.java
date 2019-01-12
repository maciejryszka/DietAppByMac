package mac.dietapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	@RequestMapping("/")
	public ModelAndView doStart() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
}