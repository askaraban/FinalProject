package swift.air.mapper;

import java.util.List;
import java.util.Map;

import swift.air.dto.Faq;

public interface FaqMapper {
	int insertFaq(Faq faq);
	int updateFaq(Faq faq);
	int deleteFaq(int faqId);
	int selectFaqCount();
	List<Map<String, Object>> selectFaqList(Map<String, Object> map);
}
