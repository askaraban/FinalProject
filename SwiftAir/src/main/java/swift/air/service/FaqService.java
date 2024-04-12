package swift.air.service;

import java.util.Map;

import swift.air.dto.Faq;

public interface FaqService {
	void addFaq(Faq faq);
	void modifyFaq(Faq faq);
	void removeFaq(int noticeId);
	Faq getFaq(int faqId);
	Map<String, Object> getFaqList(int pageNum, int categoryId);
}