package fileMerger.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
/* @RequestMapping("/main") */
public class HomeController {

	@RequestMapping(path = "/home", method = RequestMethod.GET)
	public String home(Model model) {
		System.out.println("Home url is running.");
		return "index";
	}

	@RequestMapping("/form")
	public String form() {
		
		System.out.println("Form is running");
		return "form";

	}
	
	 
}