package swift.air.java;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Event;
import swift.air.service.EventService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequiredArgsConstructor
public class HomeController {
	private static EventService eventService;
	

	@RequestMapping(value = "/")
	public String home(Locale locale, Model model) {
		
		//model.addAttribute("eventList", eventService.getEventMainPage());
		
		return "index";
	}
	
	@RequestMapping("/admin")
	public String admin() {
		return "index_admin";
	}
	
}
