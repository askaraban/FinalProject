package swift.air.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@org.springframework.web.bind.annotation.RestController
@RequestMapping("/reservation")
@SessionAttributes("pre")
public class RestController {
	
	@GetMapping("/select_seat/{pre}")
	public String selectSeat(@PathVariable String pre, Model model) {
		model.addAttribute("pre",pre);
		
		return "success";
	}
}
