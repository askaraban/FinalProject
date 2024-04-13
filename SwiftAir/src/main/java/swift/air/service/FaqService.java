package swift.air.service;

import java.util.Map;

import swift.air.dto.Faq;

public interface FaqService {
	void addFaq(Faq faq);
	void modifyFaq(Faq faq);
	void removeFaq(int noticeId);
	
	//수정할때 쓰임
	Faq getFaq(int faqId);
	
	Map<String, Object> getFaqList(int pageNum, int categoryId);
	
	
	//총개수띄울때 쓰임
	int getFaqCount(int categoryId);
}