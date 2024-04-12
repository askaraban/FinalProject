package swift.air.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import swift.air.dao.FaqDAO;
import swift.air.dto.Faq;
import swift.air.util.Pager;

@Service
@RequiredArgsConstructor
public class FaqServiceImpl implements FaqService {
	private final FaqDAO faqDAO;
	
	@Override
	public void addFaq(Faq faq) {
		faqDAO.insertFaq(faq);
		
	}
	
	@Override
	public void modifyFaq(Faq faq) {
		faqDAO.updateFaq(faq);
		
	}
	
	@Override
	public void removeFaq(int noticeId) {
		faqDAO.deleteFaq(noticeId);
		
	}
	
	@Override
	public Faq getFaq(int faqId) {
		return faqDAO.selectFaq(faqId);
	}
	

	
	
	//총개수 띄울때 쓰임
	@Override
	public int getFaqCount(int categoryId) {
	return faqDAO.selectFaqCount(categoryId);
		
	}
	
	
	
	
	
	@Override
	public Map<String, Object> getFaqList(int pageNum, int categoryId) {
		//페이징 처리
		int totalSize=faqDAO.selectFaqCount(categoryId);
		
		Pager pager=new Pager(pageNum, totalSize, 5, 5);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		pageMap.put("categoryId", categoryId);
		
		List<Faq> faqList=faqDAO.selectFaqList(pageMap);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		resultMap.put("pager", pager);
		resultMap.put("faqList", faqList);
		
		return resultMap;
	}
}
