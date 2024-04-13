package swift.air.controller;


import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Faq;
import swift.air.service.FaqService;

@Controller
@RequestMapping("/faq")
@RequiredArgsConstructor
public class FaqController {
	private final FaqService faqService;


	/* ================= faq 추가 할때 ====================== */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String faqAdd() {
		return "faq/faq_add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String faqAdd(@ModelAttribute Faq faq) {
		faqService.addFaq(faq);
		return "redirect:/faq/list";
	}

	/* ================= faq 리스트 페이징 할때 ====================== */
	@RequestMapping(value = "/list")
	public String faqList(@RequestParam(defaultValue = "1") int pageNum, Model model) {
		Map<String, Object> map = faqService.getFaqList(pageNum, 0);

		model.addAttribute("pager", map.get("pager"));
		model.addAttribute("faqList", map.get("faqList"));

		return "faq/faq_list";
	}

	/* ================= faq 메인 페이징 할때 ====================== */
	@RequestMapping(value = "/main")
	public String faqMain(@RequestParam(defaultValue = "1") int pageNum, Model model,
			@RequestParam(defaultValue = "0") int categoryId) {
		Map<String, Object> map = faqService.getFaqList(pageNum, categoryId);

		// FAQ 총 개수 가져오기
		int faqCount = faqService.getFaqCount(categoryId);
		

		model.addAttribute("faqList", map.get("faqList"));

		
		model.addAttribute("pager", map.get("pager"));
		model.addAttribute("faqList", map.get("faqList"));
		
		//총개수 가져올때
		model.addAttribute("faqCount", faqCount);


		return "faq/faq_main";
	}

	/* ================= faq 수정 할때 ====================== */
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String faqModify(@RequestParam int faqId, Model model) {
		Faq faqmodify = faqService.getFaq(faqId);
		model.addAttribute("faqmodify", faqmodify);
		return "faq/faq_modify";
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String faqModify(@ModelAttribute Faq faq) {
		faqService.modifyFaq(faq);
		return "redirect:/faq/list";
	}

	/* ================= faq 삭제 할때 ====================== */
	@RequestMapping(value = "/delete")
	public String faqDelete(@RequestParam int faqId) {
		faqService.removeFaq(faqId);
		return "redirect:/faq/list";
	}

}
