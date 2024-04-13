package swift.air.dao;

import java.util.List;
import java.util.Map;

import swift.air.dto.Faq;

public interface FaqDAO {
	int insertFaq(Faq faq);
	int updateFaq(Faq faq);
	int deleteFaq(int faqId);
	Faq selectFaq(int faqId);
	int selectFaqCount(int categoryId);
	List<Faq> selectFaqList(Map<String, Object> map); 
	/* List<Map<String, Object>> selectFaqList(Map<String, Object> map); */
	

}
